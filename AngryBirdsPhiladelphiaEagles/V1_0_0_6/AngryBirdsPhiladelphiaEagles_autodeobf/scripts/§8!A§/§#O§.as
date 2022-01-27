package §8!A§
{
   import §!!0§.§ true§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §1E§.§3!&§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import §8]§.§-u§;
   import §8]§.§93§;
   import §8]§.§?N§;
   import §]$§.§5^§;
   import flash.text.TextFieldAutoSize;
   
   public class §#O§ extends §8#§
   {
       
      
      public function §#O§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §34§ = true;
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§?N§ = §<A§.getItemByName("TextField_ChapterName") as §?N§;
         _loc1_.§2W§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§<A§.getItemByName("MovieClip_DarkBG") as §93§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§?N§ = null;
         var _loc2_:String = null;
         if(§2h§.§,!P§ != null)
         {
            _loc1_ = §<A§.getItemByName("TextField_ChapterName") as §?N§;
            _loc2_ = §2h§.§4m§().writtenName;
            if(_loc2_)
            {
               _loc1_.§2W§.text = §2h§.§4m§().writtenName;
            }
            (§<A§.getItemByName("TextField_LevelName") as §?N§).§2W§.text = §3!&§.§;!+§(§2h§.§,!P§);
         }
         §<A§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§ !Q§());
         (§<A§.getItemByName("Container_PauseMenu") as §+a§).x = §8#§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[F§.pause();
         if(§6j§ != null)
         {
            §6j§.stop();
         }
         §6j§ = §5^§.§<"§.§`5§(§5^§.§<"§.§^g§(§<A§.getItemByName("Container_PauseMenu") as §+a§,{"x":0},null,0.25),§5^§.§<"§.§^g§((§<A§.getItemByName("MovieClip_DarkBG") as §93§).mClip,{"alpha":1},{"alpha":0},0.25));
         §6j§.onComplete = § !F§;
         §6j§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§<A§.getItemByName("Button_Resume") as §-u§).setEnabled(param1);
         (§<A§.getItemByName("Button_Replay") as §-u§).setEnabled(param1);
         (§<A§.getItemByName("Button_Menu") as §-u§).setEnabled(param1);
         (§<A§.getItemByName("Button_Sound") as §-u§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§<A§.getItemByName("Button_Resume") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Replay") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Menu") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Sound") as §-u§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§6j§ != null)
         {
            §6j§.stop();
         }
         §6j§ = §5^§.§<"§.§`5§(§5^§.§<"§.§^g§(§<A§.getItemByName("Container_PauseMenu") as §+a§,{"x":OFFSCREEN_X},null,0.25),§5^§.§<"§.§^g§((§<A§.getItemByName("MovieClip_DarkBG") as §93§).mClip,{"alpha":0},{"alpha":1},0.25));
         §6j§.onComplete = §4;§;
         §6j§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "MENU":
               mNextState = §7!O§.§2`§;
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§ !Q§();
               AngryBirdsFP11.§0!E§(_loc4_);
               §>!?§.§+s§(§>!?§.§%§,int(_loc4_));
               §<A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "RESTART_LEVEL":
               §[F§.§9u§.§"A§();
               mNextState = §6u§();
               §#u§.§<q§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§6j§)
         {
            §6j§.updateState();
         }
      }
   }
}
