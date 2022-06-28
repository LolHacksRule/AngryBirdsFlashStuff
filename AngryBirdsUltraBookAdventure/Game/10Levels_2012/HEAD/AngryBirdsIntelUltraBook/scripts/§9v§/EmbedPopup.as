package §9v§
{
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class EmbedPopup extends Popup
   {
       
      
      protected var §[!D§:String;
      
      protected var §1T§:String;
      
      public function EmbedPopup(currentUIView:§-!H§, statePopup:StatePopupManager, levelId:String, levelName:String, score:int, shareType:String)
      {
         super(§3!5§.§4@§.Views.PopupView_Embed[0],currentUIView);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§<X§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§#!'§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§@;§);
         this.§[!D§ = this.§%!f§(levelId,levelName,score,shareType);
         mClip.txtEmbedHTML.text = this.§[!D§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§1T§ = this.§]d§(levelId,levelName,score,shareType);
         mClip.txtEmbedURL.text = this.§1T§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§##§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§9!U§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
      }
      
      protected function §##§(e:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §9!U§(e:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §%!f§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var serverRoot:String = AngryBirdsFP11.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.SERVER_ROOT.substr(7) : AngryBirdsFP11.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + serverRoot + "/embed" + "?levelId=" + levelId + "&levelName=" + escape(levelName) + (score > 0 ? "&score=" + score : "") + (Boolean(shareType) ? "&type=" + shareType : "") + "\" ></iframe>";
      }
      
      protected function §]d§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var serverRoot:String = AngryBirdsFP11.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.SERVER_ROOT.substr(7) : AngryBirdsFP11.SERVER_ROOT;
         return serverRoot + "/embed" + "?levelId=" + levelId + "&levelName=" + escape(levelName) + (score > 0 ? "&score=" + score : "") + (Boolean(shareType) ? "&type=" + shareType : "");
      }
      
      private function §#!'§(e:MouseEvent) : void
      {
         System.setClipboard(this.§[!D§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §@;§(e:MouseEvent) : void
      {
         System.setClipboard(this.§1T§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §<X§(e:MouseEvent) : void
      {
         close();
      }
   }
}
