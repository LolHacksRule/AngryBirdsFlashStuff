package §2>§
{
   import §%q§.§'!A§;
   import §2T§.§&M§;
   import §2T§.§2H§;
   import §2T§.§5@§;
   import §2T§.§[l§;
   import §6Z§.§'?§;
   import §6Z§.§]d§;
   import §6h§.§[!4§;
   import §7J§.§<!?§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import flash.text.TextFieldAutoSize;
   
   public class §25§ extends §?!1§
   {
       
      
      public function §25§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §]!5§ = true;
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§5@§ = §!s§.getItemByName("TextField_ChapterName") as §5@§;
         _loc1_.§[!J§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§!s§.getItemByName("MovieClip_DarkBG") as §[l§).mClip.alpha = 0;
         (§!s§.getItemByName("Container_FullGame") as §&M§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§5@§ = null;
         if(§'?§.§"t§ != null)
         {
            _loc1_ = §!s§.getItemByName("TextField_ChapterName") as §5@§;
            _loc1_.§[!J§.text = §'?§.§#>§().writtenName;
            (§!s§.getItemByName("TextField_LevelName") as §5@§).§[!J§.text = §]d§.§&t§(§'?§.§"t§);
         }
         (§!s§.getItemByName("Container_PauseMenu") as §&M§).x = §?!1§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[!4§.pause();
         if(§6!K§ != null)
         {
            §6!K§.stop();
         }
         §6!K§ = §'!A§.§5+§.§@v§(§'!A§.§5+§.§;h§(§!s§.getItemByName("Container_PauseMenu") as §&M§,{"x":0},null,0.25),§'!A§.§5+§.§;h§((§!s§.getItemByName("MovieClip_DarkBG") as §[l§).mClip,{"alpha":1},{"alpha":0},0.25),§'!A§.§5+§.§;h§((§!s§.getItemByName("Container_FullGame") as §&M§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§'!A§.§[L§));
         §6!K§.onComplete = § !+§;
         §6!K§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§!s§.getItemByName("Button_Resume") as §2H§).setEnabled(param1);
         (§!s§.getItemByName("Button_Replay") as §2H§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§!s§.getItemByName("Button_Resume") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_Replay") as §2H§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§6!K§ != null)
         {
            §6!K§.stop();
         }
         §6!K§ = §'!A§.§5+§.§@v§(§'!A§.§5+§.§;h§(§!s§.getItemByName("Container_PauseMenu") as §&M§,{"x":OFFSCREEN_X},null,0.25),§'!A§.§5+§.§;h§((§!s§.getItemByName("MovieClip_DarkBG") as §[l§).mClip,{"alpha":0},{"alpha":1},0.25),§'!A§.§5+§.§;h§((§!s§.getItemByName("Container_FullGame") as §&M§).mClip,{"alpha":0},{"alpha":1},0.25));
         §6!K§.onComplete = §85§;
         §6!K§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §0S§.§8!E§.dynamic("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§6!K§)
         {
            §6!K§.updateState();
         }
      }
   }
}
