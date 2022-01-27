package §9!#§
{
   import §!t§.§5b§;
   import §!t§.§>B§;
   import §#@§.ColorFadeLayerEvent;
   import §6!L§.§&u§;
   import §6!L§.§,M§;
   import §=!0§.§1!F§;
   import §=!0§.§?!G§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §"!K§ extends Popup
   {
      
      private static var OFFSCREEN_X:Number = -250;
       
      
      private var §0]§:§!l§;
      
      private var §,m§:§!l§;
      
      public function §"!K§(param1:§"Q§, param2:StatePopupManager)
      {
         super(§`d§.§8?§.Views.PopupView_Pause[0],param1);
         mClip.Container_Popup.x = -100;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:§>B§ = null;
         var _loc2_:String = null;
         mClip.Container_Popup.x = §"!K§.OFFSCREEN_X;
         this.§0]§ = §5!&§.§@!&§.§9!4§(mClip.Container_Popup,{"x":0},null,0.3,§5!&§.§&[§);
         this.§0]§.onComplete = this.activate;
         this.§0]§.play();
         §0!E§.pause();
         AngryBirdsFP11.§;!@§.§&L§();
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§?!L§();
         if(§&u§.§ !+§ != null)
         {
            _loc1_ = §8!,§.getItemByName("TextField_ChapterName") as §>B§;
            _loc2_ = §&u§.§3c§().writtenName;
            if(_loc2_)
            {
               _loc1_.§ !$§.text = §&u§.§3c§().writtenName;
            }
            (§8!,§.getItemByName("TextField_LevelName") as §>B§).§ !$§.text = §,M§.§2s§(§&u§.§ !+§);
         }
         (§8!,§.getItemByName("Button_Friends") as §5b§).setVisibility(true);
      }
      
      protected function activate() : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§?!L§();
         (mClip.Container_Popup.Button_Resume as MovieClip).addEventListener(MouseEvent.CLICK,this.§^]§);
         (mClip.Container_Popup.Button_Menu as MovieClip).addEventListener(MouseEvent.CLICK,this.§8p§);
         (mClip.Container_Popup.Button_Replay as MovieClip).addEventListener(MouseEvent.CLICK,this.§&!?§);
         (mClip.Container_Popup.Button_Sound as MovieClip).addEventListener(MouseEvent.CLICK,this.§2C§);
         (mClip.Button_Friends as MovieClip).addEventListener(MouseEvent.CLICK,this.§0_§);
      }
      
      protected function §2C§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !(mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible;
         var _loc2_:* = !AngryBirdsFP11.§?!L§();
         AngryBirdsFP11.§6x§(_loc2_);
         §=!<§.§7a§(§=!<§.§+!6§,int(_loc2_));
         §8!,§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc2_);
         §8!,§.getItemByName("Button_Sound").mActive = false;
      }
      
      protected function §&!?§(param1:MouseEvent) : void
      {
         this.deActivate();
         §0!E§.§9!B§.§+y§();
         §=!<§.§4M§.§[x§().mNextState = §1!F§.§@§;
         §1!F§.§4W§();
      }
      
      protected function §8p§(param1:MouseEvent) : void
      {
         this.deActivate();
         §=!<§.§4M§.§[x§().mNextState = §?!G§.§@§;
      }
      
      private function §0_§(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://apps.facebook.com/angrybirds/");
         navigateToURL(_loc2_,"_blank");
      }
      
      protected function §^]§(param1:MouseEvent) : void
      {
         (mClip.Container_Popup.Button_Resume as MovieClip).removeEventListener(MouseEvent.CLICK,this.§^]§);
         (mClip.Container_Popup.Button_Menu as MovieClip).removeEventListener(MouseEvent.CLICK,this.§8p§);
         (mClip.Container_Popup.Button_Replay as MovieClip).removeEventListener(MouseEvent.CLICK,this.§&!?§);
         (mClip.Container_Popup.Button_Sound as MovieClip).removeEventListener(MouseEvent.CLICK,this.§2C§);
         this.§0]§ = null;
         this.§0]§ = §5!&§.§@!&§.§9!4§(mClip.Container_Popup,{"x":§"!K§.OFFSCREEN_X},null,0.3,§5!&§.§"f§);
         this.§0]§.play();
         §9!L§.fadeToAlpha(0,§]m§);
         §9!L§.addEventListener(ColorFadeLayerEvent.§`S§,this.§7!§);
      }
      
      private function §7!§(param1:Event) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §0!E§.resume();
         this.close();
      }
   }
}
