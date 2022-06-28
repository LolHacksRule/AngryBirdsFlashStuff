package §`!%§
{
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§ p§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §>!C§.§3k§;
   import §>!C§.§6M§;
   import §@s§.§'!0§;
   import flash.text.TextFieldAutoSize;
   
   public class §&Z§ extends §77§
   {
       
      
      public function §&Z§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         § !G§ = true;
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§ p§ = §#!4§.getItemByName("TextField_ChapterName") as § p§;
         _loc1_.§!"§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§#!4§.getItemByName("MovieClip_DarkBG") as §[!B§).mClip.alpha = 0;
         (§#!4§.getItemByName("Container_FullGame") as §`f§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§ p§ = null;
         if(§6M§.§[z§ != null)
         {
            _loc1_ = §#!4§.getItemByName("TextField_ChapterName") as § p§;
            _loc1_.§!"§.text = §6M§.§0!1§().writtenName;
            (§#!4§.getItemByName("TextField_LevelName") as § p§).§!"§.text = §3k§.§4'§(§6M§.§[z§);
         }
         (§#!4§.getItemByName("Container_PauseMenu") as §`f§).x = §77§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §,!!§.pause();
         if(§6!G§ != null)
         {
            §6!G§.stop();
         }
         §6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_PauseMenu") as §`f§,{"x":0},null,0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("MovieClip_DarkBG") as §[!B§).mClip,{"alpha":1},{"alpha":0},0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("Container_FullGame") as §`f§).mClip,{
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
         (§#!4§.getItemByName("Button_Resume") as §]P§).setEnabled(param1);
         (§#!4§.getItemByName("Button_Replay") as §]P§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§#!4§.getItemByName("Button_Resume") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_Replay") as §]P§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§6!G§ != null)
         {
            §6!G§.stop();
         }
         §6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_PauseMenu") as §`f§,{"x":OFFSCREEN_X},null,0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("MovieClip_DarkBG") as §[!B§).mClip,{"alpha":0},{"alpha":1},0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("Container_FullGame") as §`f§).mClip,{"alpha":0},{"alpha":1},0.25));
         §6!G§.onComplete = §for§;
         §6!G§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
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
