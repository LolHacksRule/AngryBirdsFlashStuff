package §@<§
{
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §1E§.§3!&§;
   import §4M§.;
   import §4M§.§^'§;
   import §8!A§.§#u§;
   import §8!A§.§6!C§;
   import §8]§.§-u§;
   import §8]§.§?N§;
   import §>g§.ColorFadeLayerEvent;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §#;§ extends Popup
   {
      
      private static var OFFSCREEN_X:Number = -250;
       
      
      private var §3i§:§<Q§;
      
      private var §]9§:§<Q§;
      
      public function §#;§(param1:§^'§, param2:StatePopupManager)
      {
         super(§#4§.§]X§.Views.PopupView_Pause[0],param1);
         mClip.Container_Popup.x = -100;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:§?N§ = null;
         var _loc2_:String = null;
         mClip.Container_Popup.x = §#;§.OFFSCREEN_X;
         this.§3i§ = §5^§.§<"§.§^g§(mClip.Container_Popup,{"x":0},null,0.3,§5^§.§+!;§);
         this.§3i§.onComplete = this.activate;
         this.§3i§.play();
         §[F§.pause();
         AngryBirdsFP11.§^F§.§;n§();
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§ !Q§();
         if(§2h§.§,!P§ != null)
         {
            _loc1_ = §0B§.getItemByName("TextField_ChapterName") as §?N§;
            _loc2_ = §2h§.§4m§().writtenName;
            if(_loc2_)
            {
               _loc1_.§2W§.text = §2h§.§4m§().writtenName;
            }
            (§0B§.getItemByName("TextField_LevelName") as §?N§).§2W§.text = §3!&§.§;!+§(§2h§.§,!P§);
         }
         (§0B§.getItemByName("Button_Friends") as §-u§).setVisibility(true);
      }
      
      protected function activate() : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§ !Q§();
         (mClip.Container_Popup.Button_Resume as MovieClip).addEventListener(MouseEvent.CLICK,this.§69§);
         (mClip.Container_Popup.Button_Menu as MovieClip).addEventListener(MouseEvent.CLICK,this.§4-§);
         (mClip.Container_Popup.Button_Replay as MovieClip).addEventListener(MouseEvent.CLICK,this.§5W§);
         (mClip.Container_Popup.Button_Sound as MovieClip).addEventListener(MouseEvent.CLICK,this.§8Y§);
         (mClip.Button_Friends as MovieClip).addEventListener(MouseEvent.CLICK,this.§[7§);
      }
      
      protected function §8Y§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !(mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible;
         var _loc2_:* = !AngryBirdsFP11.§ !Q§();
         AngryBirdsFP11.§0!E§(_loc2_);
         §>!?§.§+s§(§>!?§.§%§,int(_loc2_));
         §0B§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc2_);
         §0B§.getItemByName("Button_Sound").mActive = false;
      }
      
      protected function §5W§(param1:MouseEvent) : void
      {
         this.deActivate();
         §[F§.§9u§.§"A§();
         §>!?§.§=!N§.§-!>§().mNextState = §#u§.§2`§;
         §#u§.§<q§();
      }
      
      protected function §4-§(param1:MouseEvent) : void
      {
         this.deActivate();
         §>!?§.§=!N§.§-!>§().mNextState = §6!C§.§2`§;
      }
      
      private function §[7§(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://apps.facebook.com/angrybirds/");
         navigateToURL(_loc2_,"_blank");
      }
      
      protected function §69§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.Button_Resume as MovieClip).removeEventListener(MouseEvent.CLICK,this.§69§);
         (mClip.Container_Popup.Button_Menu as MovieClip).removeEventListener(MouseEvent.CLICK,this.§4-§);
         (mClip.Container_Popup.Button_Replay as MovieClip).removeEventListener(MouseEvent.CLICK,this.§5W§);
         (mClip.Container_Popup.Button_Sound as MovieClip).removeEventListener(MouseEvent.CLICK,this.§8Y§);
         this.§3i§ = null;
         this.§3i§ = §5^§.§<"§.§^g§(mClip.Container_Popup,{"x":§#;§.OFFSCREEN_X},null,0.3,§5^§.§throw§);
         this.§3i§.play();
         §26§.fadeToAlpha(0,§>b§);
         §26§.addEventListener(ColorFadeLayerEvent.§6!O§,this.§>T§);
      }
      
      private function §>T§(param1:Event) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[F§.resume();
         this.close();
      }
   }
}
