package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class §&-§ extends Popup
   {
       
      
      protected var §@D§:String;
      
      protected var §-1§:String;
      
      protected var § s§:Loader;
      
      public function §&-§(param1:§7!A§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(§ "A§.§4[§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§1"5§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§[F§);
         this.§@D§ = this.§#"?§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§@D§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§-1§ = this.§5k§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§-1§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§6!y§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§]!7§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
         this.§ s§ = new Loader();
         this.§ s§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%!V§);
         var _loc7_:* = AngryBirdsFP11.§76§ + "/fb_images/levels/embed/" + param3 + ".png";
         this.§ s§.load(new URLRequest(_loc7_));
      }
      
      protected function §%!V§(param1:Event) : void
      {
         (this.§ s§.content as Bitmap).smoothing = true;
         this.§ s§.scaleX = this.§ s§.scaleY = 200 / this.§ s§.width;
         mClip.mcThumbnail.addChild(this.§ s§);
      }
      
      protected function §6!y§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §]!7§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §#"?§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§76§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§76§.substr(7) : AngryBirdsFP11.§76§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §5k§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§76§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§76§.substr(7) : AngryBirdsFP11.§76§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §1"5§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§@D§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §[F§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§-1§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
