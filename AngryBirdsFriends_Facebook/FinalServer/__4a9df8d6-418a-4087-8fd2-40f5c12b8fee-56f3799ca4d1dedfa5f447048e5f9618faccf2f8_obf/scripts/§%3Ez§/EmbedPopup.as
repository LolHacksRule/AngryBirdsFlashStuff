package §>z§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §8#K§.§3Z§;
   import §^&§.§%!#§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class EmbedPopup extends AbstractPopup implements §%!#§
   {
      
      public static const ID:String = "EmbedPopup";
       
      
      protected var §0!%§:String;
      
      protected var §1$ §:String;
      
      protected var §`"z§:Loader;
      
      private var §7!3§:String;
      
      private var §0#b§:String;
      
      private var § !P§:int;
      
      private var §-d§:String;
      
      private var §&r§:MovieClip;
      
      public function EmbedPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:String)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_Embed[0],ID);
         this.§7!3§ = param3;
         this.§0#b§ = param4;
         this.§ !P§ = param5;
         this.§-d§ = param6;
      }
      
      override protected function init() : void
      {
         this.§&r§ = §&!M§.mClip;
         this.§&r§.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         this.§&r§.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§]$ §);
         this.§&r§.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§+"b§);
         this.§0!%§ = this.§%U§(this.§7!3§,this.§0#b§,this.§ !P§,this.§-d§);
         this.§&r§.txtEmbedHTML.text = this.§0!%§;
         this.§&r§.stage.focus = this.§&r§.txtEmbedHTML;
         this.§1$ § = this.§#"_§(this.§7!3§,this.§0#b§,this.§ !P§,this.§-d§);
         this.§&r§.txtEmbedURL.text = this.§1$ §;
         this.§&r§.txtEmbedHTML.setSelection(0,this.§&r§.txtEmbedHTML.text.length);
         this.§&r§.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§2p§);
         this.§&r§.txtEmbedURL.setSelection(0,this.§&r§.txtEmbedURL.text.length);
         this.§&r§.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§##b§);
         this.§&r§.Embed_CheckHTML.stop();
         this.§&r§.Embed_CheckHTML.visible = false;
         this.§&r§.Embed_CheckURL.stop();
         this.§&r§.Embed_CheckURL.visible = false;
         this.§`"z§ = new Loader();
         this.§`"z§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§&1§);
         var _loc1_:* = AngryBirdsBase.SERVER_ROOT + "/fb_images/levels/embed/" + this.§7!3§ + ".png";
         this.§`"z§.load(new URLRequest(_loc1_));
      }
      
      protected function §&1§(param1:Event) : void
      {
         (this.§`"z§.content as Bitmap).smoothing = true;
         this.§`"z§.scaleX = this.§`"z§.scaleY = 200 / this.§`"z§.width;
         this.§&r§.mcThumbnail.addChild(this.§`"z§);
      }
      
      protected function §2p§(param1:MouseEvent) : void
      {
         this.§&r§.txtEmbedHTML.setSelection(0,this.§&r§.txtEmbedHTML.text.length);
      }
      
      protected function §##b§(param1:MouseEvent) : void
      {
         this.§&r§.txtEmbedURL.setSelection(0,this.§&r§.txtEmbedURL.text.length);
      }
      
      protected function §%U§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §#"_§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §]$ §(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         System.setClipboard(this.§0!%§);
         this.§&r§.Embed_CheckHTML.gotoAndPlay(1);
         this.§&r§.Embed_CheckHTML.visible = true;
      }
      
      private function §+"b§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         System.setClipboard(this.§1$ §);
         this.§&r§.Embed_CheckURL.gotoAndPlay(1);
         this.§&r§.Embed_CheckURL.visible = true;
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+"-§() : String
      {
         return "EmbedPopup";
      }
   }
}
