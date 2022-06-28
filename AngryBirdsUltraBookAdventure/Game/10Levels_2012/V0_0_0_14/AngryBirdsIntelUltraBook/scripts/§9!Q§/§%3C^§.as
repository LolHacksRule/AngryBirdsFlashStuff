package §9!Q§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §9#§.Popup;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §<^§ extends Popup
   {
       
      
      protected var §<F§:String;
      
      protected var §0a§:String;
      
      public function §<^§(param1:§ C§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(dynamic.§[6§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§ J§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§"!Y§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§<C§);
         this.§<F§ = this.§3m§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§<F§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§0a§ = this.§]H§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§0a§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§3!Z§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§8G§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
      }
      
      protected function §3!Z§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §8G§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §3m§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§6S§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§6S§.substr(7) : AngryBirdsFP11.§6S§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §]H§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§6S§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§6S§.substr(7) : AngryBirdsFP11.§6S§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §"!Y§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§<F§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §<C§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§0a§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function § J§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
