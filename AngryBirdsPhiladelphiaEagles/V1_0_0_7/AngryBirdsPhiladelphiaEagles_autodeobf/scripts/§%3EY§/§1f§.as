package §>Y§
{
   import §"^§.§9=§;
   import §3!%§.§-k§;
   import §3!%§.§3!6§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§]_§;
   import §=u§.§"x§;
   import §=u§.§1r§;
   import §=u§.§2"§;
   import §=u§.§>v§;
   import §?!C§.§[!-§;
   import flash.text.TextFieldAutoSize;
   
   public class §1f§ extends §6!+§
   {
       
      
      public function §1f§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §0!2§ = true;
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§2"§ = §3g§.getItemByName("TextField_ChapterName") as §2"§;
         _loc1_.§^"§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§3g§.getItemByName("MovieClip_DarkBG") as §"x§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§2"§ = null;
         var _loc2_:String = null;
         if(§-k§.§%D§ != null)
         {
            _loc1_ = §3g§.getItemByName("TextField_ChapterName") as §2"§;
            _loc2_ = §-k§.§0!1§().writtenName;
            if(_loc2_)
            {
               _loc1_.§^"§.text = §-k§.§0!1§().writtenName;
            }
            (§3g§.getItemByName("TextField_LevelName") as §2"§).§^"§.text = §3!6§.§ Y§(§-k§.§%D§);
         }
         §3g§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§8!M§());
         (§3g§.getItemByName("Container_PauseMenu") as §>v§).x = §6!+§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §9=§.pause();
         if(§<!E§ != null)
         {
            §<!E§.stop();
         }
         §<!E§ = §[!-§.§ set§.§5&§(§[!-§.§ set§.§6B§(§3g§.getItemByName("Container_PauseMenu") as §>v§,{"x":0},null,0.25),§[!-§.§ set§.§6B§((§3g§.getItemByName("MovieClip_DarkBG") as §"x§).mClip,{"alpha":1},{"alpha":0},0.25));
         §<!E§.onComplete = §7G§;
         §<!E§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§3g§.getItemByName("Button_Resume") as §1r§).setEnabled(param1);
         (§3g§.getItemByName("Button_Replay") as §1r§).setEnabled(param1);
         (§3g§.getItemByName("Button_Menu") as §1r§).setEnabled(param1);
         (§3g§.getItemByName("Button_Sound") as §1r§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§3g§.getItemByName("Button_Resume") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Replay") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Menu") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Sound") as §1r§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§<!E§ != null)
         {
            §<!E§.stop();
         }
         §<!E§ = §[!-§.§ set§.§5&§(§[!-§.§ set§.§6B§(§3g§.getItemByName("Container_PauseMenu") as §>v§,{"x":OFFSCREEN_X},null,0.25),§[!-§.§ set§.§6B§((§3g§.getItemByName("MovieClip_DarkBG") as §"x§).mClip,{"alpha":0},{"alpha":1},0.25));
         §<!E§.onComplete = §?e§;
         §<!E§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "MENU":
               mNextState = §%R§.§4!C§;
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§8!M§();
               AngryBirdsFP11.§'_§(_loc4_);
               §#'§.§,B§(§#'§.§-&§,int(_loc4_));
               §3g§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "RESTART_LEVEL":
               §9=§.§<!@§.§9!&§();
               mNextState = §8!!§();
               §;O§.§%e§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§<!E§)
         {
            §<!E§.updateState();
         }
      }
   }
}
