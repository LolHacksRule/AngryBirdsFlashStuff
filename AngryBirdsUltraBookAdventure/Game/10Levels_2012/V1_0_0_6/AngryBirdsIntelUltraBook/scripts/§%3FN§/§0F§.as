package §?N§
{
   import §,B§.Popup;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §0F§ extends Popup
   {
       
      
      protected var §]F§:String;
      
      protected var § 2§:String;
      
      public function §0F§(param1:§4`§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(§ !I§.§3!a§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@C§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§2$§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§%!§);
         this.§]F§ = this.§?h§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§]F§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§ 2§ = this.§5!j§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§ 2§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§"!3§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§]P§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
      }
      
      protected function §"!3§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §]P§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §?h§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§;!1§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§;!1§.substr(7) : AngryBirdsFP11.§;!1§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §5!j§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§;!1§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§;!1§.substr(7) : AngryBirdsFP11.§;!1§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §2$§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§]F§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §%!§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§ 2§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §@C§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
