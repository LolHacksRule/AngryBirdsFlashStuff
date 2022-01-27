package §2!!§
{
   import §##§.§5!E§;
   import §##§.§6l§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §3p§.ColorFadeLayerEvent;
   import §5=§.§"!G§;
   import §5=§.§^n§;
   import §=8§.§&H§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §6K§ extends Popup
   {
      
      private static var OFFSCREEN_X:Number = -250;
       
      
      private var §=k§:§]H§;
      
      private var §[A§:§]H§;
      
      public function §6K§(param1:§+[§, param2:StatePopupManager)
      {
         super(§;Q§.static.Views.PopupView_Pause[0],param1);
         mClip.Container_Popup.x = -100;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:§&H§ = null;
         var _loc2_:String = null;
         mClip.Container_Popup.x = §6K§.OFFSCREEN_X;
         this.§=k§ = §<t§.§4J§.§#q§(mClip.Container_Popup,{"x":0},null,0.3,§<t§.§32§);
         this.§=k§.onComplete = this.activate;
         this.§=k§.play();
         §2G§.pause();
         AngryBirdsFP11.§<2§.§8y§();
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§"7§();
         if(§^n§.§-7§ != null)
         {
            _loc1_ = §@Q§.getItemByName("TextField_ChapterName") as §&H§;
            _loc2_ = §^n§.§>V§().writtenName;
            if(_loc2_)
            {
               _loc1_.§%!"§.text = §^n§.§>V§().writtenName;
            }
            (§@Q§.getItemByName("TextField_LevelName") as §&H§).§%!"§.text = §"!G§.§>k§(§^n§.§-7§);
         }
         (§@Q§.getItemByName("Button_Friends") as dynamic).setVisibility(true);
      }
      
      protected function activate() : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§"7§();
         (mClip.Container_Popup.Button_Resume as MovieClip).addEventListener(MouseEvent.CLICK,this.§4g§);
         (mClip.Container_Popup.Button_Menu as MovieClip).addEventListener(MouseEvent.CLICK,this.§!P§);
         (mClip.Container_Popup.Button_Replay as MovieClip).addEventListener(MouseEvent.CLICK,this.§&!N§);
         (mClip.Container_Popup.Button_Sound as MovieClip).addEventListener(MouseEvent.CLICK,this.§[o§);
         (mClip.Button_Friends as MovieClip).addEventListener(MouseEvent.CLICK,this.§[!+§);
      }
      
      protected function §[o§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !(mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible;
         var _loc2_:* = !AngryBirdsFP11.§"7§();
         AngryBirdsFP11.§<!H§(_loc2_);
         §#g§.§56§(§#g§.§ !@§,int(_loc2_));
         §@Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc2_);
         §@Q§.getItemByName("Button_Sound").mActive = false;
      }
      
      protected function §&!N§(param1:MouseEvent) : void
      {
         this.deActivate();
         §2G§.§7!,§.§@a§();
         §#g§.§^!G§.§-!9§().mNextState = §6l§.§=,§;
         §6l§.§"w§();
      }
      
      protected function §!P§(param1:MouseEvent) : void
      {
         this.deActivate();
         §#g§.§^!G§.§-!9§().mNextState = §5!E§.§=,§;
      }
      
      private function §[!+§(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://apps.facebook.com/angrybirds/");
         navigateToURL(_loc2_,"_blank");
      }
      
      protected function §4g§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.Button_Resume as MovieClip).removeEventListener(MouseEvent.CLICK,this.§4g§);
         (mClip.Container_Popup.Button_Menu as MovieClip).removeEventListener(MouseEvent.CLICK,this.§!P§);
         (mClip.Container_Popup.Button_Replay as MovieClip).removeEventListener(MouseEvent.CLICK,this.§&!N§);
         (mClip.Container_Popup.Button_Sound as MovieClip).removeEventListener(MouseEvent.CLICK,this.§[o§);
         this.§=k§ = null;
         this.§=k§ = §<t§.§4J§.§#q§(mClip.Container_Popup,{"x":§6K§.OFFSCREEN_X},null,0.3,§<t§.§74§);
         this.§=k§.play();
         §3!6§.fadeToAlpha(0,§!! §);
         §3!6§.addEventListener(ColorFadeLayerEvent.§#!%§,this.§-!$§);
      }
      
      private function §-!$§(param1:Event) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §2G§.resume();
         this.close();
      }
   }
}
