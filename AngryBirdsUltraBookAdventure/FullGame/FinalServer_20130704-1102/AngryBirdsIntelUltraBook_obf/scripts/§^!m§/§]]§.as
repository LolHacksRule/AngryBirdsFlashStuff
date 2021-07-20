package §^!m§
{
   import §!!j§.Popup;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §]]§ extends Popup
   {
       
      
      protected var §3!$§:String;
      
      protected var §7!^§:String;
      
      public function §]]§(param1:§&!G§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         super(§2!z§.§ _§.Views.PopupView_Embed[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§7!i§);
         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§&>§);
         mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§<!=§);
         this.§3!$§ = this.§;!V§(param3,param4,param5,param6);
         mClip.txtEmbedHTML.text = this.§3!$§;
         mClip.stage.focus = mClip.txtEmbedHTML;
         this.§7!^§ = this.§,v§(param3,param4,param5,param6);
         mClip.txtEmbedURL.text = this.§7!^§;
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§`t§);
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§%f§);
         mClip.Embed_CheckHTML.stop();
         mClip.Embed_CheckHTML.visible = false;
         mClip.Embed_CheckURL.stop();
         mClip.Embed_CheckURL.visible = false;
      }
      
      protected function §`t§(param1:MouseEvent) : void
      {
         mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
      }
      
      protected function §%f§(param1:MouseEvent) : void
      {
         mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
      }
      
      protected function §;!V§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsFP11.§[!S§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§[!S§.substr(7) : AngryBirdsFP11.§[!S§;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §,v§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsFP11.§[!S§.substr(0,7) == "http://" ? "https://" + AngryBirdsFP11.§[!S§.substr(7) : AngryBirdsFP11.§[!S§) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §&>§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§3!$§);
         mClip.Embed_CheckHTML.gotoAndPlay(1);
         mClip.Embed_CheckHTML.visible = true;
      }
      
      private function §<!=§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§7!^§);
         mClip.Embed_CheckURL.gotoAndPlay(1);
         mClip.Embed_CheckURL.visible = true;
      }
      
      private function §7!i§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
