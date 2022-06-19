package §7N§
{
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class §>C§ extends Popup
   {
       
      
      protected var §1!^§:String;
      
      protected var §+"1§:String;
      
      protected var §35§:Loader;
      
      public function §>C§(param1:§"!j§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(§1"-§.§ !>§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§3!7§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§4n§);
         this.§1!^§ = this.§ !I§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§1!^§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§+"1§ = this.§'!&§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§+"1§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§<w§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§%!0§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
         this.§35§ = new Loader();
         this.§35§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§1!a§);
         var _loc7_:* = AngryBirdsFP11.§7!!§ + "/fb_images/levels/embed/" + param3 + ".png";
         this.§35§.load(new URLRequest(_loc7_));
      }
      
      protected function §1!a§(param1:Event) : void
      {
         (this.§35§.content as Bitmap).smoothing = true;
         this.§35§.scaleX = this.§35§.scaleY = 200 / this.§35§.width;
         mClip.mcThumbnail.addChild(this.§35§);
      }
      
      protected function §<w§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §%!0§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function § !I§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§7!!§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§7!!§.substr(7) : AngryBirdsFP11.§7!!§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §'!&§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§7!!§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§7!!§.substr(7) : AngryBirdsFP11.§7!!§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §3!7§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§1!^§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §4n§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§+"1§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
