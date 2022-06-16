package §?P§
{
   import § %§.§1Q§;
   import §0#m§.§8#§;
   import §1!=§.AbstractPopup;
   import §@!M§.§!"p§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class EmbedPopup extends AbstractPopup implements §8#§
   {
      
      public static const ID:String = "EmbedPopup";
       
      
      protected var §3#w§:String;
      
      protected var §8!K§:String;
      
      protected var §9#Z§:Loader;
      
      private var §3"=§:String;
      
      private var §9#K§:String;
      
      private var §@X§:int;
      
      private var §2"h§:String;
      
      private var §0!Q§:MovieClip;
      
      public function EmbedPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:String)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_Embed[0],ID);
         this.§3"=§ = param3;
         this.§9#K§ = param4;
         this.§@X§ = param5;
         this.§2"h§ = param6;
      }
      
      override protected function init() : void
      {
         this.§0!Q§ = §,#2§.mClip;
         this.§0!Q§.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         this.§0!Q§.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§^!!§);
         this.§0!Q§.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§4"N§);
         this.§3#w§ = this.§^!B§(this.§3"=§,this.§9#K§,this.§@X§,this.§2"h§);
         this.§0!Q§.txtEmbedHTML.text = this.§3#w§;
         this.§0!Q§.stage.focus = this.§0!Q§.txtEmbedHTML;
         this.§8!K§ = this.§+#_§(this.§3"=§,this.§9#K§,this.§@X§,this.§2"h§);
         this.§0!Q§.txtEmbedURL.text = this.§8!K§;
         this.§0!Q§.txtEmbedHTML.setSelection(0,this.§0!Q§.txtEmbedHTML.text.length);
         this.§0!Q§.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§;x§);
         this.§0!Q§.txtEmbedURL.setSelection(0,this.§0!Q§.txtEmbedURL.text.length);
         this.§0!Q§.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§=$'§);
         this.§0!Q§.Embed_CheckHTML.stop();
         this.§0!Q§.Embed_CheckHTML.visible = false;
         this.§0!Q§.Embed_CheckURL.stop();
         this.§0!Q§.Embed_CheckURL.visible = false;
         this.§9#Z§ = new Loader();
         this.§9#Z§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§-G§);
         var _loc1_:* = AngryBirdsBase.SERVER_ROOT + "/fb_images/levels/embed/" + this.§3"=§ + ".png";
         this.§9#Z§.load(new URLRequest(_loc1_));
      }
      
      protected function §-G§(param1:Event) : void
      {
         (this.§9#Z§.content as Bitmap).smoothing = true;
         this.§9#Z§.scaleX = this.§9#Z§.scaleY = 200 / this.§9#Z§.width;
         this.§0!Q§.mcThumbnail.addChild(this.§9#Z§);
      }
      
      protected function §;x§(param1:MouseEvent) : void
      {
         this.§0!Q§.txtEmbedHTML.setSelection(0,this.§0!Q§.txtEmbedHTML.text.length);
      }
      
      protected function §=$'§(param1:MouseEvent) : void
      {
         this.§0!Q§.txtEmbedURL.setSelection(0,this.§0!Q§.txtEmbedURL.text.length);
      }
      
      protected function §^!B§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §+#_§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §^!!§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         System.setClipboard(this.§3#w§);
         this.§0!Q§.Embed_CheckHTML.gotoAndPlay(1);
         this.§0!Q§.Embed_CheckHTML.visible = true;
      }
      
      private function §4"N§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         System.setClipboard(this.§8!K§);
         this.§0!Q§.Embed_CheckURL.gotoAndPlay(1);
         this.§0!Q§.Embed_CheckURL.visible = true;
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+#k§() : String
      {
         return "EmbedPopup";
      }
   }
}
