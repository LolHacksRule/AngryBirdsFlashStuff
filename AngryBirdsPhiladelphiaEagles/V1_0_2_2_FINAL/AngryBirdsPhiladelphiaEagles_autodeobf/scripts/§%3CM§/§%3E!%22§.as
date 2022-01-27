package §<M§
{
   import § !B§.ColorFadeLayerEvent;
   import §"U§.§@4§;
   import §"U§.§^'§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §,!"§.§-O§;
   import §,!"§.§0!5§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§;!P§;
   import §^]§.§`!K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §>!"§ extends Popup
   {
      
      private static var OFFSCREEN_X:Number = -250;
       
      
      private var §1o§:§[!9§;
      
      private var §0!F§:§[!9§;
      
      public function §>!"§(param1:§`o§, param2:StatePopupManager)
      {
         super(§`Z§.§5c§.Views.PopupView_Pause[0],param1);
         mClip.Container_Popup.x = -100;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:§@4§ = null;
         var _loc2_:String = null;
         mClip.Container_Popup.x = §>!"§.OFFSCREEN_X;
         this.§1o§ = §3C§.§>o§.§<t§(mClip.Container_Popup,{"x":0},null,0.3,§3C§.§[!-§);
         this.§1o§.onComplete = this.activate;
         this.§1o§.play();
         §#! §.pause();
         AngryBirdsFP11.§`y§.§@9§();
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§5e§();
         if(§`!K§.§5g§ != null)
         {
            _loc1_ = §%Q§.getItemByName("TextField_ChapterName") as §@4§;
            _loc2_ = §`!K§.§]V§().writtenName;
            if(_loc2_)
            {
               _loc1_.§!!@§.text = §`!K§.§]V§().writtenName;
            }
            (§%Q§.getItemByName("TextField_LevelName") as §@4§).§!!@§.text = §;!P§.§[e§(§`!K§.§5g§);
         }
         (§%Q§.getItemByName("Button_Friends") as §^'§).setVisibility(true);
      }
      
      protected function activate() : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§5e§();
         (mClip.Container_Popup.Button_Resume as MovieClip).addEventListener(MouseEvent.CLICK,this.§'!F§);
         (mClip.Container_Popup.Button_Menu as MovieClip).addEventListener(MouseEvent.CLICK,this.§"!=§);
         (mClip.Container_Popup.Button_Replay as MovieClip).addEventListener(MouseEvent.CLICK,this.§9H§);
         (mClip.Container_Popup.Button_Sound as MovieClip).addEventListener(MouseEvent.CLICK,this.§><§);
         (mClip.Button_Friends as MovieClip).addEventListener(MouseEvent.CLICK,this.§6!§);
      }
      
      protected function §><§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !(mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible;
         var _loc2_:* = !AngryBirdsFP11.§5e§();
         AngryBirdsFP11.§6r§(_loc2_);
         §!D§.§#!O§(§!D§.§8T§,int(_loc2_));
         §%Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc2_);
         §%Q§.getItemByName("Button_Sound").mActive = false;
      }
      
      protected function §9H§(param1:MouseEvent) : void
      {
         this.deActivate();
         §#! §.§`'§.§4-§();
         §!D§.§46§.§@!@§().mNextState = §-O§.§-A§;
         §-O§.§8!5§();
      }
      
      protected function §"!=§(param1:MouseEvent) : void
      {
         this.deActivate();
         §!D§.§46§.§@!@§().mNextState = §0!5§.§-A§;
      }
      
      private function §6!§(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://apps.facebook.com/angrybirds/");
         navigateToURL(_loc2_,"_blank");
      }
      
      protected function §'!F§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.Button_Resume as MovieClip).removeEventListener(MouseEvent.CLICK,this.§'!F§);
         (mClip.Container_Popup.Button_Menu as MovieClip).removeEventListener(MouseEvent.CLICK,this.§"!=§);
         (mClip.Container_Popup.Button_Replay as MovieClip).removeEventListener(MouseEvent.CLICK,this.§9H§);
         (mClip.Container_Popup.Button_Sound as MovieClip).removeEventListener(MouseEvent.CLICK,this.§><§);
         this.§1o§ = null;
         this.§1o§ = §3C§.§>o§.§<t§(mClip.Container_Popup,{"x":§>!"§.OFFSCREEN_X},null,0.3,§3C§.§%l§);
         this.§1o§.play();
         §!>§.fadeToAlpha(0,§%5§);
         §!>§.addEventListener(ColorFadeLayerEvent.§3n§,this.§-s§);
      }
      
      private function §-s§(param1:Event) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §#! §.resume();
         this.close();
      }
   }
}
