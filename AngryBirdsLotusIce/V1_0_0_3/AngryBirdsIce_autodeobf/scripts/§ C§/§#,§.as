package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3"§.§?!?§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §`W§.§-[§;
   import flash.text.TextFieldAutoSize;
   
   public class §#,§ extends §,§
   {
       
      
      public function §#,§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §@!9§ = true;
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§'4§ = §,R§.getItemByName("TextField_ChapterName") as §'4§;
         _loc1_.§8?§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§,R§.getItemByName("MovieClip_DarkBG") as §=!=§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§'4§ = null;
         var _loc2_:String = null;
         if(§0$§.§[C§ != null)
         {
            _loc1_ = §,R§.getItemByName("TextField_ChapterName") as §'4§;
            _loc2_ = §0$§.§ H§().writtenName;
            if(_loc2_)
            {
               _loc1_.§8?§.text = §0$§.§ H§().writtenName;
            }
            (§,R§.getItemByName("TextField_LevelName") as §'4§).§8?§.text = §?!?§.§<P§(§0$§.§[C§);
         }
         §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;9§());
         (§,R§.getItemByName("Container_PauseMenu") as §&F§).x = §,§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[o§.pause();
         if(§,w§ != null)
         {
            §,w§.stop();
         }
         §,w§ = §";§.§[8§.§9!8§(§";§.§[8§.§6!$§(§,R§.getItemByName("Container_PauseMenu") as §&F§,{"x":0},null,0.25),§";§.§[8§.§6!$§((§,R§.getItemByName("MovieClip_DarkBG") as §=!=§).mClip,{"alpha":1},{"alpha":0},0.25));
         §,w§.onComplete = §%x§;
         §,w§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§,R§.getItemByName("Button_Resume") as §^P§).setEnabled(param1);
         (§,R§.getItemByName("Button_Replay") as §^P§).setEnabled(param1);
         (§,R§.getItemByName("Button_Menu") as §^P§).setEnabled(param1);
         (§,R§.getItemByName("Button_Sound") as §^P§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§,R§.getItemByName("Button_Resume") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Sound") as §^P§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§,w§ != null)
         {
            §,w§.stop();
         }
         §,w§ = §";§.§[8§.§9!8§(§";§.§[8§.§6!$§(§,R§.getItemByName("Container_PauseMenu") as §&F§,{"x":OFFSCREEN_X},null,0.25),§";§.§[8§.§6!$§((§,R§.getItemByName("MovieClip_DarkBG") as §=!=§).mClip,{"alpha":0},{"alpha":1},0.25));
         §,w§.onComplete = §2g§;
         §,w§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "MENU":
               mNextState = §>!9§.§?B§;
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§;9§();
               AngryBirdsFP11.§-!9§(_loc4_);
               §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§,w§)
         {
            §,w§.updateState();
         }
      }
   }
}
