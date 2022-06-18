package § o§
{
   import §1#W§.§!#&§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import §[§.§]"w§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class EmbedPopup extends AbstractPopup implements §]"w§
   {
      
      public static const ID:String = "EmbedPopup";
       
      
      protected var §9!L§:String;
      
      protected var §,"8§:String;
      
      protected var §?!y§:Loader;
      
      private var §7!v§:String;
      
      private var §0T§:String;
      
      private var §2!§:int;
      
      private var §+#A§:String;
      
      private var §>"g§:MovieClip;
      
      public function EmbedPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:String)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_Embed[0],ID);
         this.§7!v§ = param3;
         this.§0T§ = param4;
         this.§2!§ = param5;
         this.§+#A§ = param6;
      }
      
      override protected function init() : void
      {
         this.§>"g§ = §1"6§.mClip;
         this.§>"g§.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         this.§>"g§.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§,!§);
         this.§>"g§.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§+#F§);
         this.§9!L§ = this.§#!u§(this.§7!v§,this.§0T§,this.§2!§,this.§+#A§);
         this.§>"g§.txtEmbedHTML.text = this.§9!L§;
         this.§>"g§.stage.focus = this.§>"g§.txtEmbedHTML;
         this.§,"8§ = this.§`!§(this.§7!v§,this.§0T§,this.§2!§,this.§+#A§);
         this.§>"g§.txtEmbedURL.text = this.§,"8§;
         this.§>"g§.txtEmbedHTML.setSelection(0,this.§>"g§.txtEmbedHTML.text.length);
         this.§>"g§.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§ "i§);
         this.§>"g§.txtEmbedURL.setSelection(0,this.§>"g§.txtEmbedURL.text.length);
         this.§>"g§.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§8!'§);
         this.§>"g§.Embed_CheckHTML.stop();
         this.§>"g§.Embed_CheckHTML.visible = false;
         this.§>"g§.Embed_CheckURL.stop();
         this.§>"g§.Embed_CheckURL.visible = false;
         this.§?!y§ = new Loader();
         this.§?!y§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2I§);
         var _loc1_:* = AngryBirdsBase.SERVER_ROOT + "/fb_images/levels/embed/" + this.§7!v§ + ".png";
         this.§?!y§.load(new URLRequest(_loc1_));
      }
      
      protected function §2I§(param1:Event) : void
      {
         (this.§?!y§.content as Bitmap).smoothing = true;
         this.§?!y§.scaleX = this.§?!y§.scaleY = 200 / this.§?!y§.width;
         this.§>"g§.mcThumbnail.addChild(this.§?!y§);
      }
      
      protected function § "i§(param1:MouseEvent) : void
      {
         this.§>"g§.txtEmbedHTML.setSelection(0,this.§>"g§.txtEmbedHTML.text.length);
      }
      
      protected function §8!'§(param1:MouseEvent) : void
      {
         this.§>"g§.txtEmbedURL.setSelection(0,this.§>"g§.txtEmbedURL.text.length);
      }
      
      protected function §#!u§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §`!§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String;
         return (_loc5_ = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §,!§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         System.setClipboard(this.§9!L§);
         this.§>"g§.Embed_CheckHTML.gotoAndPlay(1);
         this.§>"g§.Embed_CheckHTML.visible = true;
      }
      
      private function §+#F§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         System.setClipboard(this.§,"8§);
         this.§>"g§.Embed_CheckURL.gotoAndPlay(1);
         this.§>"g§.Embed_CheckURL.visible = true;
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §-"K§() : String
      {
         return "EmbedPopup";
      }
   }
}
