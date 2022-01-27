package §4q§
{
   import §"^§.§9=§;
   import §3!%§.§-k§;
   import §3!%§.§3!6§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §92§.ColorFadeLayerEvent;
   import §=u§.§1r§;
   import §=u§.§2"§;
   import §>Y§.§8!F§;
   import §>Y§.§;O§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §!!M§ extends Popup
   {
      
      private static var OFFSCREEN_X:Number = -250;
       
      
      private var §^!7§:§6q§;
      
      private var §=R§:§6q§;
      
      public function §!!M§(param1:§@]§, param2:StatePopupManager)
      {
         super(§^!$§.§"!9§.Views.PopupView_Pause[0],param1);
         mClip.Container_Popup.x = -100;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:§2"§ = null;
         var _loc2_:String = null;
         mClip.Container_Popup.x = §!!M§.OFFSCREEN_X;
         this.§^!7§ = §[!-§.§ set§.§6B§(mClip.Container_Popup,{"x":0},null,0.3,§[!-§.§9!6§);
         this.§^!7§.onComplete = this.activate;
         this.§^!7§.play();
         §9=§.pause();
         AngryBirdsFP11.§ j§.§,O§();
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§8!M§();
         if(§-k§.§%D§ != null)
         {
            _loc1_ = §"3§.getItemByName("TextField_ChapterName") as §2"§;
            _loc2_ = §-k§.§0!1§().writtenName;
            if(_loc2_)
            {
               _loc1_.§^"§.text = §-k§.§0!1§().writtenName;
            }
            (§"3§.getItemByName("TextField_LevelName") as §2"§).§^"§.text = §3!6§.§ Y§(§-k§.§%D§);
         }
         (§"3§.getItemByName("Button_Friends") as §1r§).setVisibility(true);
      }
      
      protected function activate() : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§8!M§();
         (mClip.Container_Popup.Button_Resume as MovieClip).addEventListener(MouseEvent.CLICK,this.§`%§);
         (mClip.Container_Popup.Button_Menu as MovieClip).addEventListener(MouseEvent.CLICK,this.§[W§);
         (mClip.Container_Popup.Button_Replay as MovieClip).addEventListener(MouseEvent.CLICK,this.§'+§);
         (mClip.Container_Popup.Button_Sound as MovieClip).addEventListener(MouseEvent.CLICK,this.§"!M§);
         (mClip.Button_Friends as MovieClip).addEventListener(MouseEvent.CLICK,this.§2!<§);
      }
      
      protected function §"!M§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !(mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible;
         var _loc2_:* = !AngryBirdsFP11.§8!M§();
         AngryBirdsFP11.§'_§(_loc2_);
         §#'§.§,B§(§#'§.§-&§,int(_loc2_));
         §"3§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc2_);
         §"3§.getItemByName("Button_Sound").mActive = false;
      }
      
      protected function §'+§(param1:MouseEvent) : void
      {
         this.deActivate();
         §9=§.§<!@§.§9!&§();
         §#'§.§20§.§%x§().mNextState = §;O§.§4!C§;
         §;O§.§%e§();
      }
      
      protected function §[W§(param1:MouseEvent) : void
      {
         this.deActivate();
         §#'§.§20§.§%x§().mNextState = §8!F§.§4!C§;
      }
      
      private function §2!<§(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://apps.facebook.com/angrybirds/");
         navigateToURL(_loc2_,"_blank");
      }
      
      protected function §`%§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.Button_Resume as MovieClip).removeEventListener(MouseEvent.CLICK,this.§`%§);
         (mClip.Container_Popup.Button_Menu as MovieClip).removeEventListener(MouseEvent.CLICK,this.§[W§);
         (mClip.Container_Popup.Button_Replay as MovieClip).removeEventListener(MouseEvent.CLICK,this.§'+§);
         (mClip.Container_Popup.Button_Sound as MovieClip).removeEventListener(MouseEvent.CLICK,this.§"!M§);
         this.§^!7§ = null;
         this.§^!7§ = §[!-§.§ set§.§6B§(mClip.Container_Popup,{"x":§!!M§.OFFSCREEN_X},null,0.3,§[!-§.§-5§);
         this.§^!7§.play();
         §0!G§.fadeToAlpha(0,§";§);
         §0!G§.addEventListener(ColorFadeLayerEvent.§9!F§,this.§8R§);
      }
      
      private function §8R§(param1:Event) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §9=§.resume();
         this.close();
      }
   }
}
