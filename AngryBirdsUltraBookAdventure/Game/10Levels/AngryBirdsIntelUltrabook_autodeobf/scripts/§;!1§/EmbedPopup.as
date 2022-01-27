package §;!1§
{
   import §"$§.Popup;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class EmbedPopup extends Popup
   {
       
      
      protected var §8V§:String;
      
      protected var §?>§:String;
      
      public function EmbedPopup(currentUIView:§`X§, statePopup:StatePopupManager, levelId:String, levelName:String, score:int, shareType:String)
      {
         super(§+q§.§%M§.Views.PopupView_Embed[0],currentUIView);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§^!L§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§3u§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§5]§);
         this.§8V§ = this.§=I§(levelId,levelName,score,shareType);
         mClip.txtEmbedHTML.text = this.§8V§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§?>§ = this.§&!h§(levelId,levelName,score,shareType);
         mClip.txtEmbedURL.text = this.§?>§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§1!%§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§@h§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
      }
      
      protected function §1!%§(e:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §@h§(e:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §=I§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var serverRoot:String = AngryBirdsFP11.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.SERVER_ROOT.substr(7) : AngryBirdsFP11.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + serverRoot + "/embed" + "?levelId=" + levelId + "&levelName=" + escape(levelName) + (score > 0 ? "&score=" + score : "") + (Boolean(shareType) ? "&type=" + shareType : "") + "\" ></iframe>";
      }
      
      protected function §&!h§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var serverRoot:String = AngryBirdsFP11.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.SERVER_ROOT.substr(7) : AngryBirdsFP11.SERVER_ROOT;
         return serverRoot + "/embed" + "?levelId=" + levelId + "&levelName=" + escape(levelName) + (score > 0 ? "&score=" + score : "") + (Boolean(shareType) ? "&type=" + shareType : "");
      }
      
      private function §3u§(e:MouseEvent) : void
      {
         System.setClipboard(this.§8V§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §5]§(e:MouseEvent) : void
      {
         System.setClipboard(this.§?>§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §^!L§(e:MouseEvent) : void
      {
         close();
      }
   }
}
