package §?!N§
{
   import §!§.§="D§;
   import §%#v§.§0"j§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class EmbedPopup extends AbstractPopup implements §="D§
   {
      
      public static const ID:String = "EmbedPopup";
       
      
      protected var §%!h§:String;
      
      protected var §^2§:String;
      
      protected var § !m§:Loader;
      
      private var §7"E§:String;
      
      private var §?g§:String;
      
      private var §^!?§:int;
      
      private var §+M§:String;
      
      private var §%§:MovieClip;
      
      public function EmbedPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:String)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_Embed[0],ID);
         this.§7"E§ = param3;
         this.§?g§ = param4;
         this.§^!?§ = param5;
         this.§+M§ = param6;
      }
      
      override protected function init() : void
      {
         this.§%§ = §8#Y§.mClip;
         this.§%§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         this.§%§.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§#$2§);
         this.§%§.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§<$ §);
         this.§%!h§ = this.§=U§(this.§7"E§,this.§?g§,this.§^!?§,this.§+M§);
         this.§%§.txtEmbedHTML.text = this.§%!h§;
         this.§%§.stage.focus = this.§%§.txtEmbedHTML;
         this.§^2§ = this.§?#p§(this.§7"E§,this.§?g§,this.§^!?§,this.§+M§);
         this.§%§.txtEmbedURL.text = this.§^2§;
         this.§%§.txtEmbedHTML.setSelection(0,this.§%§.txtEmbedHTML.text.length);
         this.§%§.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§,"V§);
         this.§%§.txtEmbedURL.setSelection(0,this.§%§.txtEmbedURL.text.length);
         this.§%§.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§?=§);
         this.§%§.Embed_CheckHTML.stop();
         this.§%§.Embed_CheckHTML.visible = false;
         this.§%§.Embed_CheckURL.stop();
         this.§%§.Embed_CheckURL.visible = false;
         this.§ !m§ = new Loader();
         this.§ !m§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0"d§);
         var _loc1_:* = AngryBirdsBase.SERVER_ROOT + "/fb_images/levels/embed/" + this.§7"E§ + ".png";
         this.§ !m§.load(new URLRequest(_loc1_));
      }
      
      protected function §0"d§(param1:Event) : void
      {
         (this.§ !m§.content as Bitmap).smoothing = true;
         this.§ !m§.scaleX = this.§ !m§.scaleY = 200 / this.§ !m§.width;
         this.§%§.mcThumbnail.addChild(this.§ !m§);
      }
      
      protected function §,"V§(param1:MouseEvent) : void
      {
         this.§%§.txtEmbedHTML.setSelection(0,this.§%§.txtEmbedHTML.text.length);
      }
      
      protected function §?=§(param1:MouseEvent) : void
      {
         this.§%§.txtEmbedURL.setSelection(0,this.§%§.txtEmbedURL.text.length);
      }
      
      protected function §=U§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §?#p§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         return (AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §#$2§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         System.setClipboard(this.§%!h§);
         this.§%§.Embed_CheckHTML.gotoAndPlay(1);
         this.§%§.Embed_CheckHTML.visible = true;
      }
      
      private function §<$ §(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         System.setClipboard(this.§^2§);
         this.§%§.Embed_CheckURL.gotoAndPlay(1);
         this.§%§.Embed_CheckURL.visible = true;
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+"n§() : String
      {
         return "EmbedPopup";
      }
   }
}
