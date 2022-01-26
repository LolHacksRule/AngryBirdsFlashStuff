package §?'§
{
   import §%S§.§%X§;
   import §%S§.§,1§;
   import §%S§.§7g§;
   import §%S§.§;!5§;
   import §+N§.§!j§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;f§.§9Z§;
   import §;j§.§8[§;
   import flash.text.TextFieldAutoSize;
   import §in§.§%K§;
   
   public class §'!<§ extends §-Y§
   {
       
      
      public function §'!<§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §7V§ = true;
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§7g§ = §<o§.getItemByName("TextField_ChapterName") as §7g§;
         _loc1_.§1p§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§<o§.getItemByName("MovieClip_DarkBG") as §;!5§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§7g§ = null;
         var _loc2_:String = null;
         if(§&#§.§<Y§ != null)
         {
            _loc1_ = §<o§.getItemByName("TextField_ChapterName") as §7g§;
            _loc2_ = §&#§.§ for§().writtenName;
            if(_loc2_)
            {
               _loc1_.§1p§.text = §&#§.§ for§().writtenName;
            }
            (§<o§.getItemByName("TextField_LevelName") as §7g§).§1p§.text = §9Z§.§each §(§&#§.§<Y§);
         }
         §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"]§());
         (§<o§.getItemByName("Container_PauseMenu") as §,1§).x = §-Y§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §8[§.pause();
         if(§'a§ != null)
         {
            §'a§.stop();
         }
         §'a§ = §!j§.§5!B§.§!a§(§!j§.§5!B§.§+I§(§<o§.getItemByName("Container_PauseMenu") as §,1§,{"x":0},null,0.25),§!j§.§5!B§.§+I§((§<o§.getItemByName("MovieClip_DarkBG") as §;!5§).mClip,{"alpha":1},{"alpha":0},0.25));
         §'a§.onComplete = § 5§;
         §'a§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§<o§.getItemByName("Button_Resume") as §%X§).setEnabled(param1);
         (§<o§.getItemByName("Button_Replay") as §%X§).setEnabled(param1);
         (§<o§.getItemByName("Button_Menu") as §%X§).setEnabled(param1);
         (§<o§.getItemByName("Button_Sound") as §%X§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§<o§.getItemByName("Button_Resume") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Replay") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Menu") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Sound") as §%X§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§'a§ != null)
         {
            §'a§.stop();
         }
         §'a§ = §!j§.§5!B§.§!a§(§!j§.§5!B§.§+I§(§<o§.getItemByName("Container_PauseMenu") as §,1§,{"x":OFFSCREEN_X},null,0.25),§!j§.§5!B§.§+I§((§<o§.getItemByName("MovieClip_DarkBG") as §;!5§).mClip,{"alpha":0},{"alpha":1},0.25));
         §'a§.onComplete = §%7§;
         §'a§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "MENU":
               mNextState = §0k§.§`%§;
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§"]§();
               AngryBirdsFP11.§2t§(_loc4_);
               §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§'a§)
         {
            §'a§.updateState();
         }
      }
   }
}
