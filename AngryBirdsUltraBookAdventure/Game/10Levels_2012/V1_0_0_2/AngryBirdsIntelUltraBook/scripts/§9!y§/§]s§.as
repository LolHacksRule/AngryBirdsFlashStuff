package §9!y§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §[m§.Popup;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §]s§ extends Popup
   {
       
      
      protected var §%!!§:String;
      
      protected var §6c§:String;
      
      public function §]s§(param1:§'!^§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(§[!'§.§+@§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§9t§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§?!v§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§;!9§);
         this.§%!!§ = this.§7,§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§%!!§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§6c§ = this.§`!t§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§6c§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§2X§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§5!E§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
      }
      
      protected function §2X§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §5!E§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §7,§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§8!`§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§8!`§.substr(7) : AngryBirdsFP11.§8!`§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §`!t§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§8!`§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§8!`§.substr(7) : AngryBirdsFP11.§8!`§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §?!v§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§%!!§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §;!9§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§6c§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §9t§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
