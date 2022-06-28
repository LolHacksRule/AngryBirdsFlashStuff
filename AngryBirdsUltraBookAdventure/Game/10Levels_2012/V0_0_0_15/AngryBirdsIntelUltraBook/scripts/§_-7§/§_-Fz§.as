package §_-7§
{
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §_-Fz§ extends Popup
   {
       
      
      protected var §_-Y0§:String;
      
      protected var §_-9Q§:String;
      
      public function §_-Fz§(param1:§_-5q§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(§_-vB§.§_-ky§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§_-hn§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§_-QP§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§_-XZ§);
         this.§_-Y0§ = this.§_-9D§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§_-Y0§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§_-9Q§ = this.§_-Go§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§_-9Q§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§_-Su§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§_-QW§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
      }
      
      protected function §_-Su§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §_-QW§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §_-9D§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§_-08Q§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§_-08Q§.substr(7) : AngryBirdsFP11.§_-08Q§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §_-Go§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§_-08Q§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§_-08Q§.substr(7) : AngryBirdsFP11.§_-08Q§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §_-QP§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§_-Y0§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §_-XZ§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§_-9Q§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §_-hn§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
