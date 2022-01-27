package §##§
{
   import §'!N§.§%!E§;
   import §1!#§.§<t§;
   import §5=§.§"!G§;
   import §5=§.§^n§;
   import §=8§.§&H§;
   import §=8§.§'^§;
   import §=8§.§,!%§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.text.TextFieldAutoSize;
   
   public class §!?§ extends §[R§
   {
       
      
      public function §!?§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §8U§ = true;
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_FacebookLevelPause[0]);
         var _loc1_:§&H§ = § §.getItemByName("TextField_ChapterName") as §&H§;
         _loc1_.§%!"§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ §.getItemByName("MovieClip_DarkBG") as §,!%§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§&H§ = null;
         var _loc2_:String = null;
         if(§^n§.§-7§ != null)
         {
            _loc1_ = § §.getItemByName("TextField_ChapterName") as §&H§;
            _loc2_ = §^n§.§>V§().writtenName;
            if(_loc2_)
            {
               _loc1_.§%!"§.text = §^n§.§>V§().writtenName;
            }
            (§ §.getItemByName("TextField_LevelName") as §&H§).§%!"§.text = §"!G§.§>k§(§^n§.§-7§);
         }
         § §.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"7§());
         (§ §.getItemByName("Container_PauseMenu") as §'^§).x = §[R§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §2G§.pause();
         if(§8!M§ != null)
         {
            §8!M§.stop();
         }
         §8!M§ = §<t§.§4J§.§;!0§(§<t§.§4J§.§#q§(§ §.getItemByName("Container_PauseMenu") as §'^§,{"x":0},null,0.25),§<t§.§4J§.§#q§((§ §.getItemByName("MovieClip_DarkBG") as §,!%§).mClip,{"alpha":1},{"alpha":0},0.25));
         §8!M§.onComplete = §[9§;
         §8!M§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§ §.getItemByName("Button_Resume") as dynamic).setEnabled(param1);
         (§ §.getItemByName("Button_Replay") as dynamic).setEnabled(param1);
         (§ §.getItemByName("Button_Menu") as dynamic).setEnabled(param1);
         (§ §.getItemByName("Button_Sound") as dynamic).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§ §.getItemByName("Button_Resume") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Replay") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Menu") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Sound") as dynamic).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§8!M§ != null)
         {
            §8!M§.stop();
         }
         §8!M§ = §<t§.§4J§.§;!0§(§<t§.§4J§.§#q§(§ §.getItemByName("Container_PauseMenu") as §'^§,{"x":OFFSCREEN_X},null,0.25),§<t§.§4J§.§#q§((§ §.getItemByName("MovieClip_DarkBG") as §,!%§).mClip,{"alpha":0},{"alpha":1},0.25));
         §8!M§.onComplete = §&!4§;
         §8!M§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "MENU":
               mNextState = §package§.§=,§;
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§"7§();
               AngryBirdsFP11.§<!H§(_loc4_);
               §#g§.§56§(§#g§.§ !@§,int(_loc4_));
               § §.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "RESTART_LEVEL":
               §2G§.§7!,§.§@a§();
               mNextState = §2!>§();
               §6l§.§"w§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§8!M§)
         {
            §8!M§.updateState();
         }
      }
   }
}
