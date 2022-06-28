package §>!A§
{
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §6J§.§+t§;
   import §6J§.§5j§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §`F§.§,B§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.text.TextFieldAutoSize;
   
   public class §`I§ extends §?K§
   {
       
      
      public function §`I§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §;!$§ = true;
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§3D§ = §[=§.getItemByName("TextField_ChapterName") as §3D§;
         _loc1_.§7=§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip.alpha = 0;
         (§[=§.getItemByName("Container_FullGame") as §3C§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§3D§ = null;
         if(§5j§.§%V§ != null)
         {
            _loc1_ = §[=§.getItemByName("TextField_ChapterName") as §3D§;
            _loc1_.§7=§.text = §5j§.§'!#§().writtenName;
            (§[=§.getItemByName("TextField_LevelName") as §3D§).§7=§.text = §+t§.§;d§(§5j§.§%V§);
         }
         (§[=§.getItemByName("Container_PauseMenu") as §3C§).x = §?K§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[k§.pause();
         if(§function§ != null)
         {
            §function§.stop();
         }
         §function§ = §,B§.§^n§.§!g§(§,B§.§^n§.§2E§(§[=§.getItemByName("Container_PauseMenu") as §3C§,{"x":0},null,0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip,{"alpha":1},{"alpha":0},0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("Container_FullGame") as §3C§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§,B§.§;C§));
         §function§.onComplete = §%!1§;
         §function§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§[=§.getItemByName("Button_Resume") as §?q§).setEnabled(param1);
         (§[=§.getItemByName("Button_Replay") as §?q§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§[=§.getItemByName("Button_Resume") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§function§ != null)
         {
            §function§.stop();
         }
         §function§ = §,B§.§^n§.§!g§(§,B§.§^n§.§2E§(§[=§.getItemByName("Container_PauseMenu") as §3C§,{"x":OFFSCREEN_X},null,0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip,{"alpha":0},{"alpha":1},0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("Container_FullGame") as §3C§).mClip,{"alpha":0},{"alpha":1},0.25));
         §function§.onComplete = §?!?§;
         §function§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#W§.§[G§.§=K§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§function§)
         {
            §function§.updateState();
         }
      }
   }
}
