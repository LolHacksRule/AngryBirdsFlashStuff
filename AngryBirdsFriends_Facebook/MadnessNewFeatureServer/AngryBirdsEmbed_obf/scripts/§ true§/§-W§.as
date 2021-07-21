package § true§
{
   import §"!B§.§"t§;
   import §"!B§.§+!9§;
   import §"!B§.§58§;
   import §"!B§.§6!"§;
   import §>!O§.§[+§;
   import §?j§.§]<§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§;!6§;
   import §`!1§.§-!&§;
   import flash.text.TextFieldAutoSize;
   
   public class §-W§ extends §5z§
   {
       
      
      public function §-W§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §3d§ = true;
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§6!"§ = §while§.getItemByName("TextField_ChapterName") as §6!"§;
         _loc1_.§#!B§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§while§.getItemByName("MovieClip_DarkBG") as §"t§).mClip.alpha = 0;
         (§while§.getItemByName("Container_FullGame") as §58§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§6!"§ = null;
         if(§`R§.§7S§ != null)
         {
            _loc1_ = §while§.getItemByName("TextField_ChapterName") as §6!"§;
            _loc1_.§#!B§.text = §`R§.§7!!§().writtenName;
            (§while§.getItemByName("TextField_LevelName") as §6!"§).§#!B§.text = §]<§.§-i§(§`R§.§7S§);
         }
         (§while§.getItemByName("Container_PauseMenu") as §58§).x = §5z§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[+§.pause();
         if(§&T§ != null)
         {
            §&T§.stop();
         }
         §&T§ = §-!&§.§;R§.§>!+§(§-!&§.§;R§.§2w§(§while§.getItemByName("Container_PauseMenu") as §58§,{"x":0},null,0.25),§-!&§.§;R§.§2w§((§while§.getItemByName("MovieClip_DarkBG") as §"t§).mClip,{"alpha":1},{"alpha":0},0.25),§-!&§.§;R§.§2w§((§while§.getItemByName("Container_FullGame") as §58§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§-!&§.§6n§));
         §&T§.onComplete = §3!#§;
         §&T§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§while§.getItemByName("Button_Resume") as §+!9§).setEnabled(param1);
         (§while§.getItemByName("Button_Replay") as §+!9§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§while§.getItemByName("Button_Resume") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_Replay") as §+!9§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§&T§ != null)
         {
            §&T§.stop();
         }
         §&T§ = §-!&§.§;R§.§>!+§(§-!&§.§;R§.§2w§(§while§.getItemByName("Container_PauseMenu") as §58§,{"x":OFFSCREEN_X},null,0.25),§-!&§.§;R§.§2w§((§while§.getItemByName("MovieClip_DarkBG") as §"t§).mClip,{"alpha":0},{"alpha":1},0.25),§-!&§.§;R§.§2w§((§while§.getItemByName("Container_FullGame") as §58§).mClip,{"alpha":0},{"alpha":1},0.25));
         §&T§.onComplete = §=!,§;
         §&T§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#m§.§;C§.§%!4§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§&T§)
         {
            §&T§.updateState();
         }
      }
   }
}
