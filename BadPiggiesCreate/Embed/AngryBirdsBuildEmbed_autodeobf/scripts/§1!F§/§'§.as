package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §-!0§.§&!!§;
   import §-!0§.§1^§;
   import §9!n§.§@!T§;
   import §?!-§.§'!V§;
   import flash.text.TextFieldAutoSize;
   
   public class §'§ extends §^r§
   {
       
      
      public function §'§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §?P§ = true;
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§;!j§ = §+!$§.getItemByName("TextField_ChapterName") as §;!j§;
         _loc1_.§!D§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip.alpha = 0;
         (§+!$§.getItemByName("Container_FullGame") as §[!s§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§;!j§ = null;
         if(§1^§.§ ]§ != null)
         {
            _loc1_ = §+!$§.getItemByName("TextField_ChapterName") as §;!j§;
            _loc1_.§!D§.text = §1^§.§'j§().writtenName;
            (§+!$§.getItemByName("TextField_LevelName") as §;!j§).§!D§.text = §&!!§.§0!'§(§1^§.§ ]§);
         }
         (§+!$§.getItemByName("Container_PauseMenu") as §[!s§).x = §^r§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §'!V§.pause();
         if(§%!&§ != null)
         {
            §%!&§.stop();
         }
         §%!&§ = §@!T§.§`!t§.§0!s§(§@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":0},null,0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":1},{"alpha":0},0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("Container_FullGame") as §[!s§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§@!T§.§41§));
         §%!&§.onComplete = §[!e§;
         §%!&§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§+!$§.getItemByName("Button_Resume") as §#!'§).setEnabled(param1);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§+!$§.getItemByName("Button_Resume") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§%!&§ != null)
         {
            §%!&§.stop();
         }
         §%!&§ = §@!T§.§`!t§.§0!s§(§@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":OFFSCREEN_X},null,0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":0},{"alpha":1},0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("Container_FullGame") as §[!s§).mClip,{"alpha":0},{"alpha":1},0.25));
         §%!&§.onComplete = §7!T§;
         §%!&§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#!?§.§8;§.§4!`§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§%!&§)
         {
            §%!&§.updateState();
         }
      }
   }
}
