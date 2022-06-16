package §?"R§
{
   import §4#%§.§@#@§;
   import §8§.§#$+§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class EmbedPopup extends AbstractPopup implements §@#@§
   {
      
      public static const ID:String = "EmbedPopup";
       
      
      protected var §^P§:String;
      
      protected var §!!e§:String;
      
      protected var §&!l§:Loader;
      
      private var §3"D§:String;
      
      private var §67§:String;
      
      private var §=#G§:int;
      
      private var §1>§:String;
      
      private var §8!J§:MovieClip;
      
      public function EmbedPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:String)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_Embed[0],ID);
         this.§3"D§ = param3;
         this.§67§ = param4;
         this.§=#G§ = param5;
         this.§1>§ = param6;
      }
      
      override protected function init() : void
      {
         this.§8!J§ = §7!j§.mClip;
         this.§8!J§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         this.§8!J§.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§^";§);
         this.§8!J§.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§[$6§);
         this.§^P§ = this.§?$4§(this.§3"D§,this.§67§,this.§=#G§,this.§1>§);
         this.§8!J§.txtEmbedHTML.text = this.§^P§;
         this.§8!J§.stage.focus = this.§8!J§.txtEmbedHTML;
         this.§!!e§ = this.§-X§(this.§3"D§,this.§67§,this.§=#G§,this.§1>§);
         this.§8!J§.txtEmbedURL.text = this.§!!e§;
         this.§8!J§.txtEmbedHTML.setSelection(0,this.§8!J§.txtEmbedHTML.text.length);
         this.§8!J§.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§6!t§);
         this.§8!J§.txtEmbedURL.setSelection(0,this.§8!J§.txtEmbedURL.text.length);
         this.§8!J§.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§[0§);
         this.§8!J§.Embed_CheckHTML.stop();
         this.§8!J§.Embed_CheckHTML.visible = false;
         this.§8!J§.Embed_CheckURL.stop();
         this.§8!J§.Embed_CheckURL.visible = false;
         this.§&!l§ = new Loader();
         this.§&!l§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§,t§);
         var _loc1_:* = AngryBirdsBase.SERVER_ROOT + "/fb_images/levels/embed/" + this.§3"D§ + ".png";
         this.§&!l§.load(new URLRequest(_loc1_));
      }
      
      protected function §,t§(param1:Event) : void
      {
         (this.§&!l§.content as Bitmap).smoothing = true;
         this.§&!l§.scaleX = this.§&!l§.scaleY = 200 / this.§&!l§.width;
         this.§8!J§.mcThumbnail.addChild(this.§&!l§);
      }
      
      protected function §6!t§(param1:MouseEvent) : void
      {
         this.§8!J§.txtEmbedHTML.setSelection(0,this.§8!J§.txtEmbedHTML.text.length);
      }
      
      protected function §[0§(param1:MouseEvent) : void
      {
         this.§8!J§.txtEmbedURL.setSelection(0,this.§8!J§.txtEmbedURL.text.length);
      }
      
      protected function §?$4§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §-X§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         return (AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §^";§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         System.setClipboard(this.§^P§);
         this.§8!J§.Embed_CheckHTML.gotoAndPlay(1);
         this.§8!J§.Embed_CheckHTML.visible = true;
      }
      
      private function §[$6§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         System.setClipboard(this.§!!e§);
         this.§8!J§.Embed_CheckURL.gotoAndPlay(1);
         this.§8!J§.Embed_CheckURL.visible = true;
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §<$#§() : String
      {
         return "EmbedPopup";
      }
   }
}
