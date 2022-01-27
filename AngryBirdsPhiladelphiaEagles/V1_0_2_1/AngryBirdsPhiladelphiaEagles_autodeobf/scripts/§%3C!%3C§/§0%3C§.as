package §<!<§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §7!!§.ColorFadeLayerEvent;
   import §8;§.§!!6§;
   import §8;§.§8^§;
   import §<!F§.§5!+§;
   import §=!H§.§=<§;
   import §=!H§.§`S§;
   import §?!;§.§6H§;
   import §?!;§.§^!&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §0<§ extends Popup
   {
      
      private static var OFFSCREEN_X:Number = -250;
       
      
      private var §@!9§:§ !4§;
      
      private var §"B§:§ !4§;
      
      public function §0<§(param1:§<!K§, param2:StatePopupManager)
      {
         super(§,!;§.§2o§.Views.PopupView_Pause[0],param1);
         mClip.Container_Popup.x = -100;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:§`S§ = null;
         var _loc2_:String = null;
         mClip.Container_Popup.x = §0<§.OFFSCREEN_X;
         this.§@!9§ = §49§.§&y§.§=!3§(mClip.Container_Popup,{"x":0},null,0.3,§49§.§3z§);
         this.§@!9§.onComplete = this.activate;
         this.§@!9§.play();
         §5!+§.pause();
         AngryBirdsFP11.§"Y§.§1s§();
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§![§();
         if(§6H§.§"Q§ != null)
         {
            _loc1_ = §!!L§.getItemByName("TextField_ChapterName") as §`S§;
            _loc2_ = §6H§.§'#§().writtenName;
            if(_loc2_)
            {
               _loc1_.§'Z§.text = §6H§.§'#§().writtenName;
            }
            (§!!L§.getItemByName("TextField_LevelName") as §`S§).§'Z§.text = §^!&§.§"@§(§6H§.§"Q§);
         }
         (§!!L§.getItemByName("Button_Friends") as §=<§).setVisibility(true);
      }
      
      protected function activate() : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§![§();
         (mClip.Container_Popup.Button_Resume as MovieClip).addEventListener(MouseEvent.CLICK,this.§+f§);
         (mClip.Container_Popup.Button_Menu as MovieClip).addEventListener(MouseEvent.CLICK,this.§8w§);
         (mClip.Container_Popup.Button_Replay as MovieClip).addEventListener(MouseEvent.CLICK,this.§5!?§);
         (mClip.Container_Popup.Button_Sound as MovieClip).addEventListener(MouseEvent.CLICK,this.§81§);
         (mClip.Button_Friends as MovieClip).addEventListener(MouseEvent.CLICK,this.§4+§);
      }
      
      protected function §81§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !(mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible;
         var _loc2_:* = !AngryBirdsFP11.§![§();
         AngryBirdsFP11.§`1§(_loc2_);
         §#!1§.§`U§(§#!1§.§5Z§,int(_loc2_));
         §!!L§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc2_);
         §!!L§.getItemByName("Button_Sound").mActive = false;
      }
      
      protected function §5!?§(param1:MouseEvent) : void
      {
         this.deActivate();
         §5!+§.§6!§.§5q§();
         §#!1§.§@F§.§6,§().mNextState = §8^§.§"Z§;
         §8^§.§1!"§();
      }
      
      protected function §8w§(param1:MouseEvent) : void
      {
         this.deActivate();
         §#!1§.§@F§.§6,§().mNextState = §!!6§.§"Z§;
      }
      
      private function §4+§(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://apps.facebook.com/angrybirds/");
         navigateToURL(_loc2_,"_blank");
      }
      
      protected function §+f§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.Button_Resume as MovieClip).removeEventListener(MouseEvent.CLICK,this.§+f§);
         (mClip.Container_Popup.Button_Menu as MovieClip).removeEventListener(MouseEvent.CLICK,this.§8w§);
         (mClip.Container_Popup.Button_Replay as MovieClip).removeEventListener(MouseEvent.CLICK,this.§5!?§);
         (mClip.Container_Popup.Button_Sound as MovieClip).removeEventListener(MouseEvent.CLICK,this.§81§);
         this.§@!9§ = null;
         this.§@!9§ = §49§.§&y§.§=!3§(mClip.Container_Popup,{"x":§0<§.OFFSCREEN_X},null,0.3,§49§.§4a§);
         this.§@!9§.play();
         §=]§.fadeToAlpha(0,§?Z§);
         §=]§.addEventListener(ColorFadeLayerEvent.§<2§,this.§5!N§);
      }
      
      private function §5!N§(param1:Event) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §5!+§.resume();
         this.close();
      }
   }
}
