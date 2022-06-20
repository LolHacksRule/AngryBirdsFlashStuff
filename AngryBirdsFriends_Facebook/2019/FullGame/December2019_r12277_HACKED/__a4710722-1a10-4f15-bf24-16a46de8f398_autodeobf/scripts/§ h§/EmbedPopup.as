package § h§
{
   import § "v§.§4$4§;
   import §4$A§.§=$5§;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class EmbedPopup extends AbstractPopup implements §=$5§
   {
      
      public static const ID:String = "EmbedPopup";
       
      
      protected var §@#]§:String;
      
      protected var §5!x§:String;
      
      protected var §45§:Loader;
      
      private var §?#f§:String;
      
      private var §-n§:String;
      
      private var §-"$§:int;
      
      private var §0!<§:String;
      
      private var §3`§:MovieClip;
      
      public function EmbedPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:String)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_Embed[0],ID);
         this.§?#f§ = param3;
         this.§-n§ = param4;
         this.§-"$§ = param5;
         this.§0!<§ = param6;
      }
      
      override protected function init() : void
      {
         this.§3`§ = §'o§.mClip;
         this.§3`§.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         this.§3`§.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§,$!§);
         this.§3`§.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§'"<§);
         this.§@#]§ = this.§&#§(this.§?#f§,this.§-n§,this.§-"$§,this.§0!<§);
         this.§3`§.txtEmbedHTML.text = this.§@#]§;
         this.§3`§.stage.focus = this.§3`§.txtEmbedHTML;
         this.§5!x§ = this.§@4§(this.§?#f§,this.§-n§,this.§-"$§,this.§0!<§);
         this.§3`§.txtEmbedURL.text = this.§5!x§;
         this.§3`§.txtEmbedHTML.setSelection(0,this.§3`§.txtEmbedHTML.text.length);
         this.§3`§.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§9!V§);
         this.§3`§.txtEmbedURL.setSelection(0,this.§3`§.txtEmbedURL.text.length);
         this.§3`§.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§+"&§);
         this.§3`§.Embed_CheckHTML.stop();
         this.§3`§.Embed_CheckHTML.visible = false;
         this.§3`§.Embed_CheckURL.stop();
         this.§3`§.Embed_CheckURL.visible = false;
         this.§45§ = new Loader();
         this.§45§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;!=§);
         var _loc1_:* = AngryBirdsBase.SERVER_ROOT + "/fb_images/levels/embed/" + this.§?#f§ + ".png";
         this.§45§.load(new URLRequest(_loc1_));
      }
      
      protected function §;!=§(param1:Event) : void
      {
         (this.§45§.content as Bitmap).smoothing = true;
         this.§45§.scaleX = this.§45§.scaleY = 200 / this.§45§.width;
         this.§3`§.mcThumbnail.addChild(this.§45§);
      }
      
      protected function §9!V§(param1:MouseEvent) : void
      {
         this.§3`§.txtEmbedHTML.setSelection(0,this.§3`§.txtEmbedHTML.text.length);
      }
      
      protected function §+"&§(param1:MouseEvent) : void
      {
         this.§3`§.txtEmbedURL.setSelection(0,this.§3`§.txtEmbedURL.text.length);
      }
      
      protected function §&#§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc5_:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + _loc5_ + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "") + "\" ></iframe>";
      }
      
      protected function §@4§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         return (AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT) + "/embed" + "?levelId=" + param1 + "&levelName=" + escape(param2) + (param3 > 0 ? "&score=" + param3 : "") + (!!param4 ? "&type=" + param4 : "");
      }
      
      private function §,$!§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         System.setClipboard(this.§@#]§);
         this.§3`§.Embed_CheckHTML.gotoAndPlay(1);
         this.§3`§.Embed_CheckHTML.visible = true;
      }
      
      private function §'"<§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         System.setClipboard(this.§5!x§);
         this.§3`§.Embed_CheckURL.gotoAndPlay(1);
         this.§3`§.Embed_CheckURL.visible = true;
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §9M§() : String
      {
         return "EmbedPopup";
      }
   }
}
