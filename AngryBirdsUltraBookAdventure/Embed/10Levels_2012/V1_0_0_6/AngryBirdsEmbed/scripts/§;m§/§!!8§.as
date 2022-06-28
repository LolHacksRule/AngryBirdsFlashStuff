package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §=!B§.§59§;
   import §=!B§.§;p§;
   import §?!+§.§,!G§;
   import §`!0§.§"?§;
   import flash.text.TextFieldAutoSize;
   
   public class §!!8§ extends §6e§
   {
       
      
      public function §!!8§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §?z§ = true;
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§<k§ = §-f§.getItemByName("TextField_ChapterName") as §<k§;
         _loc1_.§5+§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§-f§.getItemByName("MovieClip_DarkBG") as §"m§).mClip.alpha = 0;
         (§-f§.getItemByName("Container_FullGame") as §1!=§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§<k§ = null;
         if(§59§.§%j§ != null)
         {
            _loc1_ = §-f§.getItemByName("TextField_ChapterName") as §<k§;
            _loc1_.§5+§.text = §59§.§8!F§().writtenName;
            (§-f§.getItemByName("TextField_LevelName") as §<k§).§5+§.text = §;p§.§,M§(§59§.§%j§);
         }
         (§-f§.getItemByName("Container_PauseMenu") as §1!=§).x = §6e§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §"h§.pause();
         if(§'!%§ != null)
         {
            §'!%§.stop();
         }
         §'!%§ = §,!G§.§@j§.§2!'§(§,!G§.§@j§.§47§(§-f§.getItemByName("Container_PauseMenu") as §1!=§,{"x":0},null,0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("MovieClip_DarkBG") as §"m§).mClip,{"alpha":1},{"alpha":0},0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("Container_FullGame") as §1!=§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§,!G§.§5]§));
         §'!%§.onComplete = §7!D§;
         §'!%§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§-f§.getItemByName("Button_Resume") as §6<§).setEnabled(param1);
         (§-f§.getItemByName("Button_Replay") as §6<§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§-f§.getItemByName("Button_Resume") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§'!%§ != null)
         {
            §'!%§.stop();
         }
         §'!%§ = §,!G§.§@j§.§2!'§(§,!G§.§@j§.§47§(§-f§.getItemByName("Container_PauseMenu") as §1!=§,{"x":OFFSCREEN_X},null,0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("MovieClip_DarkBG") as §"m§).mClip,{"alpha":0},{"alpha":1},0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("Container_FullGame") as §1!=§).mClip,{"alpha":0},{"alpha":1},0.25));
         §'!%§.onComplete = §<I§;
         §'!%§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §+!0§.§2[§.§5"§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§'!%§)
         {
            §'!%§.updateState();
         }
      }
   }
}
