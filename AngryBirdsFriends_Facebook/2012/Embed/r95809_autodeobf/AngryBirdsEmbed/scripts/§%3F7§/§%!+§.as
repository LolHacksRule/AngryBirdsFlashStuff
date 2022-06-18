package §?7§
{
   import §-l§.§?'§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§6!9§;
   import §<!@§.§ f§;
   import §<!@§.§!P§;
   import §?!%§.§?!7§;
   import §[V§.§02§;
   import §[V§.§1;§;
   import §[V§.§=!'§;
   import §[V§.§`@§;
   import flash.text.TextFieldAutoSize;
   
   public class §%!+§ extends §,]§
   {
       
      
      public function §%!+§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §7!1§ = true;
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§`@§ = §6!$§.getItemByName("TextField_ChapterName") as §`@§;
         _loc1_.§66§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§6!$§.getItemByName("MovieClip_DarkBG") as §02§).mClip.alpha = 0;
         (§6!$§.getItemByName("Container_FullGame") as §=!'§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§`@§ = null;
         if(§!P§.§4R§ != null)
         {
            _loc1_ = §6!$§.getItemByName("TextField_ChapterName") as §`@§;
            _loc1_.§66§.text = §!P§.§^!@§().writtenName;
            (§6!$§.getItemByName("TextField_LevelName") as §`@§).§66§.text = § f§.§![§(§!P§.§4R§);
         }
         (§6!$§.getItemByName("Container_PauseMenu") as §=!'§).x = §,]§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §?'§.pause();
         if(§"[§ != null)
         {
            §"[§.stop();
         }
         §"[§ = §?!7§.§^7§.§"q§(§?!7§.§^7§.§^!0§(§6!$§.getItemByName("Container_PauseMenu") as §=!'§,{"x":0},null,0.25),§?!7§.§^7§.§^!0§((§6!$§.getItemByName("MovieClip_DarkBG") as §02§).mClip,{"alpha":1},{"alpha":0},0.25),§?!7§.§^7§.§^!0§((§6!$§.getItemByName("Container_FullGame") as §=!'§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§?!7§.§7c§));
         §"[§.onComplete = §8^§;
         §"[§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§6!$§.getItemByName("Button_Resume") as §1;§).setEnabled(param1);
         (§6!$§.getItemByName("Button_Replay") as §1;§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§6!$§.getItemByName("Button_Resume") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_Replay") as §1;§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§"[§ != null)
         {
            §"[§.stop();
         }
         §"[§ = §?!7§.§^7§.§"q§(§?!7§.§^7§.§^!0§(§6!$§.getItemByName("Container_PauseMenu") as §=!'§,{"x":OFFSCREEN_X},null,0.25),§?!7§.§^7§.§^!0§((§6!$§.getItemByName("MovieClip_DarkBG") as §02§).mClip,{"alpha":0},{"alpha":1},0.25),§?!7§.§^7§.§^!0§((§6!$§.getItemByName("Container_FullGame") as §=!'§).mClip,{"alpha":0},{"alpha":1},0.25));
         §"[§.onComplete = §<!8§;
         §"[§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §6!%§.§-W§.§'C§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§"[§)
         {
            §"[§.updateState();
         }
      }
   }
}
