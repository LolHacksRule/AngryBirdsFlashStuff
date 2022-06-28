package §%!4§
{
   import §##§.Popup;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class EmbedPopup extends Popup
   {
       
      
      protected var §`%§:String;
      
      protected var §[!b§:String;
      
      public function EmbedPopup(currentUIView:§6"§, statePopup:StatePopupManager, levelId:String, levelName:String, score:int, shareType:String)
      {
         super(§>!^§.§8'§.Views.PopupView_Embed[0],currentUIView);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§0N§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§-!;§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§!!2§);
         this.§`%§ = this.§3+§(levelId,levelName,score,shareType);
         mClip.txtEmbedHTML.text = this.§`%§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§[!b§ = this.§'`§(levelId,levelName,score,shareType);
         mClip.txtEmbedURL.text = this.§[!b§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§'!=§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§break§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
      }
      
      protected function §'!=§(e:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §break§(e:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §3+§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var serverRoot:String = AngryBirdsFP11.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.SERVER_ROOT.substr(7) : AngryBirdsFP11.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + serverRoot + "/embed" + "?levelId=" + levelId + "&levelName=" + escape(levelName) + (score > 0 ? "&score=" + score : "") + (Boolean(shareType) ? "&type=" + shareType : "") + "\" ></iframe>";
      }
      
      protected function §'`§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var serverRoot:String = AngryBirdsFP11.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.SERVER_ROOT.substr(7) : AngryBirdsFP11.SERVER_ROOT;
         return serverRoot + "/embed" + "?levelId=" + levelId + "&levelName=" + escape(levelName) + (score > 0 ? "&score=" + score : "") + (Boolean(shareType) ? "&type=" + shareType : "");
      }
      
      private function §-!;§(e:MouseEvent) : void
      {
         System.setClipboard(this.§`%§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §!!2§(e:MouseEvent) : void
      {
         System.setClipboard(this.§[!b§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §0N§(e:MouseEvent) : void
      {
         close();
      }
   }
}
