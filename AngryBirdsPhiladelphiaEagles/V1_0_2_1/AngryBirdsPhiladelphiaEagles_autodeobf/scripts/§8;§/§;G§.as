package §8;§
{
   import §#!?§.§49§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §=!H§.§=<§;
   import §=!H§.§[R§;
   import §=!H§.§`S§;
   import §?!;§.§6H§;
   import §?!;§.§^!&§;
   import flash.text.TextFieldAutoSize;
   
   public class §;G§ extends §3!8§
   {
       
      
      public function §;G§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §9o§ = true;
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§`S§ = §>2§.getItemByName("TextField_ChapterName") as §`S§;
         _loc1_.§'Z§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§>2§.getItemByName("MovieClip_DarkBG") as §[R§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§`S§ = null;
         var _loc2_:String = null;
         if(§6H§.§"Q§ != null)
         {
            _loc1_ = §>2§.getItemByName("TextField_ChapterName") as §`S§;
            _loc2_ = §6H§.§'#§().writtenName;
            if(_loc2_)
            {
               _loc1_.§'Z§.text = §6H§.§'#§().writtenName;
            }
            (§>2§.getItemByName("TextField_LevelName") as §`S§).§'Z§.text = §^!&§.§"@§(§6H§.§"Q§);
         }
         §>2§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§![§());
         (§>2§.getItemByName("Container_PauseMenu") as §9V§).x = §3!8§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §5!+§.pause();
         if(§-7§ != null)
         {
            §-7§.stop();
         }
         §-7§ = §49§.§&y§.§&7§(§49§.§&y§.§=!3§(§>2§.getItemByName("Container_PauseMenu") as §9V§,{"x":0},null,0.25),§49§.§&y§.§=!3§((§>2§.getItemByName("MovieClip_DarkBG") as §[R§).mClip,{"alpha":1},{"alpha":0},0.25));
         §-7§.onComplete = §?! §;
         §-7§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§>2§.getItemByName("Button_Resume") as §=<§).setEnabled(param1);
         (§>2§.getItemByName("Button_Replay") as §=<§).setEnabled(param1);
         (§>2§.getItemByName("Button_Menu") as §=<§).setEnabled(param1);
         (§>2§.getItemByName("Button_Sound") as §=<§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§>2§.getItemByName("Button_Resume") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Replay") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Menu") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Sound") as §=<§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§-7§ != null)
         {
            §-7§.stop();
         }
         §-7§ = §49§.§&y§.§&7§(§49§.§&y§.§=!3§(§>2§.getItemByName("Container_PauseMenu") as §9V§,{"x":OFFSCREEN_X},null,0.25),§49§.§&y§.§=!3§((§>2§.getItemByName("MovieClip_DarkBG") as §[R§).mClip,{"alpha":0},{"alpha":1},0.25));
         §-7§.onComplete = §#2§;
         §-7§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "MENU":
               mNextState = §+!%§.§"Z§;
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§![§();
               AngryBirdsFP11.§`1§(_loc4_);
               §#!1§.§`U§(§#!1§.§5Z§,int(_loc4_));
               §>2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "RESTART_LEVEL":
               §5!+§.§6!§.§5q§();
               mNextState = §,<§();
               §8^§.§1!"§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§-7§)
         {
            §-7§.updateState();
         }
      }
   }
}
