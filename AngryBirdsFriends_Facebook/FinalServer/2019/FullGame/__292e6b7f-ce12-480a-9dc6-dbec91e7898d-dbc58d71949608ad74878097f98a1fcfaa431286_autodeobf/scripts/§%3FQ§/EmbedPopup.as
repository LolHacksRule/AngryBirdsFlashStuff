package §?Q§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class EmbedPopup extends AbstractPopup implements §1k§
   {
      
      public static const ID:String = "EmbedPopup";
       
      
      protected var §'>§:String;
      
      protected var §5!G§:String;
      
      protected var §`"M§:Loader;
      
      private var §8";§:String;
      
      private var §@!]§:String;
      
      private var § "&§:int;
      
      private var §4z§:String;
      
      private var §8#M§:MovieClip;
      
      public function EmbedPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:String)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_Embed[0],ID);
         this.§8";§ = param3;
         this.§@!]§ = param4;
         this.§ "&§ = param5;
         this.§4z§ = param6;
      }
      
      override protected function init() : void
      {
         this.§8#M§ = §;#'§.mClip;
         this.§8#M§.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         this.§8#M§.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§%"E§);
         this.§8#M§.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§`#n§);
         this.§'>§ = this.§[^§(this.§8";§,this.§@!]§,this.§ "&§,this.§4z§);
         this.§8#M§.txtEmbedHTML.text = this.§'>§;
         this.§8#M§.stage.focus = this.§8#M§.txtEmbedHTML;
         this.§5!G§ = this.§'$0§(this.§8";§,this.§@!]§,this.§ "&§,this.§4z§);
         this.§8#M§.txtEmbedURL.text = this.§5!G§;
         this.§8#M§.txtEmbedHTML.setSelection(0,this.§8#M§.txtEmbedHTML.text.length);
         this.§8#M§.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§6!d§);
         this.§8#M§.txtEmbedURL.setSelection(0,this.§8#M§.txtEmbedURL.text.length);
         this.§8#M§.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§#$1§);
         this.§8#M§.Embed_CheckHTML.stop();
         this.§8#M§.Embed_CheckHTML.visible = false;
         this.§8#M§.Embed_CheckURL.stop();
         this.§8#M§.Embed_CheckURL.visible = false;
         this.§`"M§ = new Loader();
         this.§`"M§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§=!v§);
         var _loc1_:* = AngryBirdsBase.SERVER_ROOT + "/fb_images/levels/embed/" + this.§8";§ + ".png";
         this.§`"M§.load(new URLRequest(_loc1_));
      }
      
      protected function §=!v§(param1:Event) : void
      {
         (this.§`"M§.content as Bitmap).smoothing = true;
         this.§`"M§.scaleX = this.§`"M§.scaleY = 200 / this.§`"M§.width;
         this.§8#M§.mcThumbnail.addChild(this.§`"M§);
      }
      
      protected function §6!d§(param1:MouseEvent) : void
      {
         this.§8#M§.txtEmbedHTML.setSelection(0,this.§8#M§.txtEmbedHTML.text.length);
      }
      
      protected function §#$1§(param1:MouseEvent) : void
      {
         this.§8#M§.txtEmbedURL.setSelection(0,this.§8#M§.txtEmbedURL.text.length);
      }
      
      protected function §[^§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §'$0§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §%"E§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         System.setClipboard(this.§'>§);
         this.§8#M§.Embed_CheckHTML.gotoAndPlay(1);
         this.§8#M§.Embed_CheckHTML.visible = true;
      }
      
      private function §`#n§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         System.setClipboard(this.§5!G§);
         this.§8#M§.Embed_CheckURL.gotoAndPlay(1);
         this.§8#M§.Embed_CheckURL.visible = true;
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §6#n§() : String
      {
         return "EmbedPopup";
      }
   }
}
