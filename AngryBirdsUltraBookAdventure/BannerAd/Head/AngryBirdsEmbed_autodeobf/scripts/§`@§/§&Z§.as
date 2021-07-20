package §`@§
{
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§@s§;
   import §>!C§.§'j§;
   import §>!C§.§6M§;
   import §^@§.§!"§;
   import §^@§.§2q§;
   import §^@§.§=^§;
   import §^@§.§`Y§;
   import flash.text.TextFieldAutoSize;
   
   public class §&Z§ extends §77§
   {
       
      
      public function §&Z§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §9[§ = true;
         §#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§`Y§ = §#Z§.getItemByName("TextField_ChapterName") as §`Y§;
         _loc1_.§ p§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§#Z§.getItemByName("MovieClip_DarkBG") as §!"§).mClip.alpha = 0;
         (§#Z§.getItemByName("Container_FullGame") as §2q§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§`Y§ = null;
         if(§6M§.§[z§ != null)
         {
            _loc1_ = §#Z§.getItemByName("TextField_ChapterName") as §`Y§;
            _loc1_.§ p§.text = §6M§.§&!;§().writtenName;
            (§#Z§.getItemByName("TextField_LevelName") as §`Y§).§ p§.text = §'j§.§3k§(§6M§.§[z§);
         }
         (§#Z§.getItemByName("Container_PauseMenu") as §2q§).x = §77§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §,!!§.pause();
         if(§6!G§ != null)
         {
            §6!G§.stop();
         }
         §6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#Z§.getItemByName("Container_PauseMenu") as §2q§,{"x":0},null,0.25),§%!>§.§-]§.§?U§((§#Z§.getItemByName("MovieClip_DarkBG") as §!"§).mClip,{"alpha":1},{"alpha":0},0.25),§%!>§.§-]§.§?U§((§#Z§.getItemByName("Container_FullGame") as §2q§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§%!>§.§>!'§));
         §6!G§.onComplete = §%M§;
         §6!G§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§#Z§.getItemByName("Button_Resume") as §=^§).setEnabled(param1);
         (§#Z§.getItemByName("Button_Replay") as §=^§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§#Z§.getItemByName("Button_Resume") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_Replay") as §=^§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§6!G§ != null)
         {
            §6!G§.stop();
         }
         §6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#Z§.getItemByName("Container_PauseMenu") as §2q§,{"x":OFFSCREEN_X},null,0.25),§%!>§.§-]§.§?U§((§#Z§.getItemByName("MovieClip_DarkBG") as §!"§).mClip,{"alpha":0},{"alpha":1},0.25),§%!>§.§-]§.§?U§((§#Z§.getItemByName("Container_FullGame") as §2q§).mClip,{"alpha":0},{"alpha":1},0.25));
         §6!G§.onComplete = §for§;
         §6!G§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §@!?§.§%P§.§7a§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§6!G§)
         {
            §6!G§.updateState();
         }
      }
   }
}
