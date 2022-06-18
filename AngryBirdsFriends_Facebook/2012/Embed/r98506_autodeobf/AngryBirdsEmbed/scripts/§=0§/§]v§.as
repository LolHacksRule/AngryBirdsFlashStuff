package §=0§
{
   import §+n§.§^!%§;
   import §3'§.§5I§;
   import §3'§.§6k§;
   import §3'§.§8I§;
   import §3'§.§?-§;
   import §8!G§.§-Z§;
   import §8!G§.§8'§;
   import §;=§.§>!2§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.text.TextFieldAutoSize;
   
   public class §]v§ extends §-v§
   {
       
      
      public function §]v§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §=t§ = true;
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§6k§ = §4G§.getItemByName("TextField_ChapterName") as §6k§;
         _loc1_.§#Y§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4G§.getItemByName("MovieClip_DarkBG") as §?-§).mClip.alpha = 0;
         (§4G§.getItemByName("Container_FullGame") as §8I§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§6k§ = null;
         if(§-Z§.§%s§ != null)
         {
            _loc1_ = §4G§.getItemByName("TextField_ChapterName") as §6k§;
            _loc1_.§#Y§.text = §-Z§.§?!!§().writtenName;
            (§4G§.getItemByName("TextField_LevelName") as §6k§).§#Y§.text = §8'§.§>V§(§-Z§.§%s§);
         }
         (§4G§.getItemByName("Container_PauseMenu") as §8I§).x = §-v§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §^?§.pause();
         if(§[w§ != null)
         {
            §[w§.stop();
         }
         §[w§ = §>!2§.§72§.§7!0§(§>!2§.§72§.§-z§(§4G§.getItemByName("Container_PauseMenu") as §8I§,{"x":0},null,0.25),§>!2§.§72§.§-z§((§4G§.getItemByName("MovieClip_DarkBG") as §?-§).mClip,{"alpha":1},{"alpha":0},0.25),§>!2§.§72§.§-z§((§4G§.getItemByName("Container_FullGame") as §8I§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§>!2§.§<T§));
         §[w§.onComplete = §+s§;
         §[w§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§4G§.getItemByName("Button_Resume") as §5I§).setEnabled(param1);
         (§4G§.getItemByName("Button_Replay") as §5I§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§4G§.getItemByName("Button_Resume") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_Replay") as §5I§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§[w§ != null)
         {
            §[w§.stop();
         }
         §[w§ = §>!2§.§72§.§7!0§(§>!2§.§72§.§-z§(§4G§.getItemByName("Container_PauseMenu") as §8I§,{"x":OFFSCREEN_X},null,0.25),§>!2§.§72§.§-z§((§4G§.getItemByName("MovieClip_DarkBG") as §?-§).mClip,{"alpha":0},{"alpha":1},0.25),§>!2§.§72§.§-z§((§4G§.getItemByName("Container_FullGame") as §8I§).mClip,{"alpha":0},{"alpha":1},0.25));
         §[w§.onComplete = §<Z§;
         §[w§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §]o§.§1$§.§!!B§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§[w§)
         {
            §[w§.updateState();
         }
      }
   }
}
