package §5!Y§
{
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class §0!h§ extends Popup
   {
       
      
      protected var §=!&§:String;
      
      protected var §3!P§:String;
      
      protected var §8!o§:Loader;
      
      public function §0!h§(param1:§`_§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(§ "<§.§%I§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§8>§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§@w§);
         this.§=!&§ = this.§#+§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§=!&§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§3!P§ = this.§<o§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§3!P§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§#!%§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§,0§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
         this.§8!o§ = new Loader();
         this.§8!o§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#C§);
         var _loc7_:* = AngryBirdsFP11.§?8§ + "/fb_images/levels/embed/" + param3 + ".png";
         this.§8!o§.load(new URLRequest(_loc7_));
      }
      
      protected function §#C§(param1:Event) : void
      {
         (this.§8!o§.content as Bitmap).smoothing = true;
         this.§8!o§.scaleX = this.§8!o§.scaleY = 200 / this.§8!o§.width;
         mClip.mcThumbnail.addChild(this.§8!o§);
      }
      
      protected function §#!%§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §,0§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §#+§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§?8§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§?8§.substr(7) : AngryBirdsFP11.§?8§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §<o§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§?8§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§?8§.substr(7) : AngryBirdsFP11.§?8§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §8>§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§=!&§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §@w§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§3!P§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         close();
      }
   }
}
