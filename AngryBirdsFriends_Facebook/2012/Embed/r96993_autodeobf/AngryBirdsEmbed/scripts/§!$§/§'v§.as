package §!$§
{
   import §!^§.§"%§;
   import §-!'§.§&!H§;
   import §-!'§.§;f§;
   import §-!'§.§@D§;
   import §-!'§.§in §;
   import §-!C§.§#!G§;
   import §-!C§.§@! §;
   import §6[§.§;q§;
   import §>%§.§]3§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.text.TextFieldAutoSize;
   
   public class §'v§ extends §[q§
   {
       
      
      public function §'v§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §@!+§ = true;
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§&!H§ = §+!2§.getItemByName("TextField_ChapterName") as §&!H§;
         _loc1_.§#C§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§+!2§.getItemByName("MovieClip_DarkBG") as §@D§).mClip.alpha = 0;
         (§+!2§.getItemByName("Container_FullGame") as §in §).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§&!H§ = null;
         if(§#!G§.§9C§ != null)
         {
            _loc1_ = §+!2§.getItemByName("TextField_ChapterName") as §&!H§;
            _loc1_.§#C§.text = §#!G§.§+!>§().writtenName;
            (§+!2§.getItemByName("TextField_LevelName") as §&!H§).§#C§.text = §@! §.§ §(§#!G§.§9C§);
         }
         (§+!2§.getItemByName("Container_PauseMenu") as §in §).x = §[q§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §]3§.pause();
         if(§%!,§ != null)
         {
            §%!,§.stop();
         }
         §%!,§ = §;q§.§9r§.§6&§(§;q§.§9r§.§%!#§(§+!2§.getItemByName("Container_PauseMenu") as §in §,{"x":0},null,0.25),§;q§.§9r§.§%!#§((§+!2§.getItemByName("MovieClip_DarkBG") as §@D§).mClip,{"alpha":1},{"alpha":0},0.25),§;q§.§9r§.§%!#§((§+!2§.getItemByName("Container_FullGame") as §in §).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§;q§.§]`§));
         §%!,§.onComplete = §=!"§;
         §%!,§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§+!2§.getItemByName("Button_Resume") as §;f§).setEnabled(param1);
         (§+!2§.getItemByName("Button_Replay") as §;f§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§+!2§.getItemByName("Button_Resume") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_Replay") as §;f§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§%!,§ != null)
         {
            §%!,§.stop();
         }
         §%!,§ = §;q§.§9r§.§6&§(§;q§.§9r§.§%!#§(§+!2§.getItemByName("Container_PauseMenu") as §in §,{"x":OFFSCREEN_X},null,0.25),§;q§.§9r§.§%!#§((§+!2§.getItemByName("MovieClip_DarkBG") as §@D§).mClip,{"alpha":0},{"alpha":1},0.25),§;q§.§9r§.§%!#§((§+!2§.getItemByName("Container_FullGame") as §in §).mClip,{"alpha":0},{"alpha":1},0.25));
         §%!,§.onComplete = §5E§;
         §%!,§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §7@§.§7y§.§8v§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§%!,§)
         {
            §%!,§.updateState();
         }
      }
   }
}
