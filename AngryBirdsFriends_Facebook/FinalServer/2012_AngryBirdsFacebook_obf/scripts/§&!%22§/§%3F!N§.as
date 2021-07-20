package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class §?!N§ extends Popup
   {
       
      
      protected var §+w§:String;
      
      protected var §@L§:String;
      
      protected var §>q§:Loader;
      
      public function §?!N§(param1:§^0§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(§%^§.§?>§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§="8§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§=u§);
         this.§+w§ = this.§,"F§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§+w§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§@L§ = this.§8B§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§@L§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§[#§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§95§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
         this.§>q§ = new Loader();
         this.§>q§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§@"@§);
         var _loc7_:* = AngryBirdsFP11.§#"@§ + "/fb_images/levels/embed/" + param3 + ".png";
         this.§>q§.load(new URLRequest(_loc7_));
      }
      
      protected function §@"@§(param1:Event) : void
      {
         (this.§>q§.content as Bitmap).smoothing = true;
         this.§>q§.scaleX = this.§>q§.scaleY = 200 / this.§>q§.width;
         mClip.mcThumbnail.addChild(this.§>q§);
      }
      
      protected function §[#§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §95§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §,"F§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§#"@§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§#"@§.substr(7) : AngryBirdsFP11.§#"@§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §8B§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§#"@§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§#"@§.substr(7) : AngryBirdsFP11.§#"@§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §="8§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§+w§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §=u§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§@L§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
