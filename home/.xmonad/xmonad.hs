import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

import XMonad.Layout.CenteredMaster
import XMonad.Layout.Grid
import XMonad.Layout.Circle

import XMonad.Prompt
import XMonad.Prompt.Man
import XMonad.Prompt.Ssh

myLayout = avoidStruts $ (tiled ||| Circle ||| centerMaster Grid ||| Mirror tiled ||| Full)
  where
    -- Default tiling algorithm partitions the screen into two panes
    tiled = Tall nmaster delta ratio

    -- The default number of windows in the master pane
    nmaster = 1

    -- Default proportion of screen occupied by master pane
    ratio = 1/2

    -- Percent of screen to incrememnt when resizing panes
    delta = 3/100

main = do
  xmproc <- spawnPipe "xmobar"

  xmonad $ defaultConfig
    { -- From Xmonad FAQ 3.6.3 (Make space for a panel dock or tray
      manageHook = manageDocks <+> manageHook defaultConfig
    , layoutHook = myLayout
    , logHook = dynamicLogWithPP xmobarPP
                { ppOutput = hPutStrLn xmproc
                , ppTitle = xmobarColor "green" "" . shorten 50
                }
    , modMask = mod1Mask
    , terminal = "xterm fish"
    } `additionalKeys`
    [ ((mod1Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
    , ((mod1Mask, xK_w), spawn "google-chrome")
    , ((mod1Mask, xK_e), spawn "gvim")
    , ((mod1Mask .|. controlMask, xK_s), sshPrompt defaultXPConfig)
    , ((mod1Mask, xK_F1), manPrompt defaultXPConfig)
    ]
