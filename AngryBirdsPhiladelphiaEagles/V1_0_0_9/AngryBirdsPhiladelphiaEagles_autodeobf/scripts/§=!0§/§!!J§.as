package §=!0§
{
   import §!t§.§5b§;
   import §!t§.§;1§;
   import §!t§.§>B§;
   import §!t§.§?g§;
   import §5F§.§+!O§;
   import §6!L§.§&u§;
   import §6!L§.§,M§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§5!&§;
   import flash.text.TextFieldAutoSize;
   
   public class §!!J§ extends §7y§
   {
       
      
      public function §!!J§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §@s§ = true;
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§>B§ = §;I§.getItemByName("TextField_ChapterName") as §>B§;
         _loc1_.§ !$§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§;I§.getItemByName("MovieClip_DarkBG") as §?g§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§>B§ = null;
         var _loc2_:String = null;
         if(§&u§.§ !+§ != null)
         {
            _loc1_ = §;I§.getItemByName("TextField_ChapterName") as §>B§;
            _loc2_ = §&u§.§3c§().writtenName;
            if(_loc2_)
            {
               _loc1_.§ !$§.text = §&u§.§3c§().writtenName;
            }
            (§;I§.getItemByName("TextField_LevelName") as §>B§).§ !$§.text = §,M§.§2s§(§&u§.§ !+§);
         }
         §;I§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§?!L§());
         (§;I§.getItemByName("Container_PauseMenu") as §;1§).x = §7y§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §0!E§.pause();
         if(§3!I§ != null)
         {
            §3!I§.stop();
         }
         §3!I§ = §5!&§.§@!&§.§?!D§(§5!&§.§@!&§.§9!4§(§;I§.getItemByName("Container_PauseMenu") as §;1§,{"x":0},null,0.25),§5!&§.§@!&§.§9!4§((§;I§.getItemByName("MovieClip_DarkBG") as §?g§).mClip,{"alpha":1},{"alpha":0},0.25));
         §3!I§.onComplete = §1[§;
         §3!I§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§;I§.getItemByName("Button_Resume") as §5b§).setEnabled(param1);
         (§;I§.getItemByName("Button_Replay") as §5b§).setEnabled(param1);
         (§;I§.getItemByName("Button_Menu") as §5b§).setEnabled(param1);
         (§;I§.getItemByName("Button_Sound") as §5b§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§;I§.getItemByName("Button_Resume") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Replay") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Menu") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Sound") as §5b§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§3!I§ != null)
         {
            §3!I§.stop();
         }
         §3!I§ = §5!&§.§@!&§.§?!D§(§5!&§.§@!&§.§9!4§(§;I§.getItemByName("Container_PauseMenu") as §;1§,{"x":OFFSCREEN_X},null,0.25),§5!&§.§@!&§.§9!4§((§;I§.getItemByName("MovieClip_DarkBG") as §?g§).mClip,{"alpha":0},{"alpha":1},0.25));
         §3!I§.onComplete = §]x§;
         §3!I§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "MENU":
               mNextState = §9!+§.§@§;
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§?!L§();
               AngryBirdsFP11.§6x§(_loc4_);
               §=!<§.§7a§(§=!<§.§+!6§,int(_loc4_));
               §;I§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "RESTART_LEVEL":
               §0!E§.§9!B§.§+y§();
               mNextState = §8U§();
               §1!F§.§4W§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§3!I§)
         {
            §3!I§.updateState();
         }
      }
   }
}
