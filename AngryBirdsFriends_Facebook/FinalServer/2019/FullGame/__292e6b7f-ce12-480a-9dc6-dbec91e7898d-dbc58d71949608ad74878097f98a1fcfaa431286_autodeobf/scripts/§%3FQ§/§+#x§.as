package §?Q§
{
   import § "L§.§"!A§;
   import § "L§.§7`§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §>!!§.§,!d§;
   import §>!!§.§<#^§;
   import §^"3§.§^"C§;
   import com.rovio.assets.§[a§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §+#x§ extends AbstractPopup
   {
       
      
      private var §]!H§:§<#^§;
      
      private var §,M§:Loader;
      
      private var § "H§:String;
      
      private var §=!t§:String;
      
      public function §+#x§(param1:int, param2:int, param3:§<#^§)
      {
         super(param1,param2,§false§.§4#;§.Views.Popup_DynamicNotification[0],"Popup_DynamicNotification_" + param3.id);
         this.§]!H§ = param3;
      }
      
      override protected function init() : void
      {
         var _loc2_:§,!d§ = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:SimpleButton = null;
         super.init();
         if(this.§]!H§.§@#%§)
         {
            §;#'§.mClip.btnClose.visible = true;
            §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         }
         else
         {
            §;#'§.mClip.btnClose.visible = false;
         }
         (§;#'§.getItemByName("TextField_Header") as §7`§).setText(!!this.§]!H§.title ? this.§]!H§.title : "");
         §;#'§.getItemByName("TF_50_50").visible = false;
         §;#'§.getItemByName("TF_50_50_Updown").visible = false;
         §;#'§.getItemByName("TF_AllText").visible = false;
         §;#'§.getItemByName("ImgPos_50_50").visible = false;
         §;#'§.getItemByName("ImgPos_50_50_Updown").visible = false;
         §;#'§.getItemByName("ImgPos_AllImage").visible = false;
         this.§ "H§ = null;
         switch(this.§]!H§.layoutType)
         {
            case "FIFTY_FIFTY":
               §;#'§.getItemByName("TF_50_50").visible = true;
               (§;#'§.getItemByName("TF_50_50") as §7`§).setText(!!this.§]!H§.text ? this.§]!H§.text : "");
               this.§;$=§((§;#'§.getItemByName("TF_50_50") as §7`§).§%!8§,this.§]!H§.fontSize);
               this.§ "H§ = "ImgPos_50_50";
               this.§=!t§ = "LoadingImage_50_50";
               break;
            case "FIFTY_FIFTY_UPDOWN":
               §;#'§.getItemByName("TF_50_50_Updown").visible = true;
               (§;#'§.getItemByName("TF_50_50_Updown") as §7`§).setText(!!this.§]!H§.text ? this.§]!H§.text : "");
               this.§;$=§((§;#'§.getItemByName("TF_50_50_Updown") as §7`§).§%!8§,this.§]!H§.fontSize);
               this.§ "H§ = "ImgPos_50_50_Updown";
               this.§=!t§ = "LoadingImage_50_50_Updown";
               break;
            case "ALL_IMAGE":
               this.§ "H§ = "ImgPos_AllImage";
               this.§=!t§ = "LoadingImage_AllImage";
               break;
            case "ALL_TEXT":
               §;#'§.getItemByName("TF_AllText").visible = true;
               (§;#'§.getItemByName("TF_AllText") as §7`§).setText(!!this.§]!H§.text ? this.§]!H§.text : "");
               this.§;$=§((§;#'§.getItemByName("TF_AllText") as §7`§).§%!8§,this.§]!H§.fontSize);
         }
         if(this.§ "H§)
         {
            if(this.§]!H§.§-"2§)
            {
               §;#'§.getItemByName(this.§ "H§).visible = true;
               §;#'§.getItemByName(this.§=!t§).visible = true;
               this.§,M§ = new Loader();
               this.§,M§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5#t§);
               this.§,M§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§!#"§);
               this.§,M§.load(new URLRequest(this.§]!H§.§-"2§),new LoaderContext(true));
            }
            else if(this.§]!H§.imageRef)
            {
               §;#'§.getItemByName(this.§ "H§).visible = true;
               §;#'§.getItemByName(this.§=!t§).visible = false;
               _loc3_ = §[a§.§8#k§("MovieClip_ImageRef");
               (_loc4_ = new _loc3_()).gotoAndStop(this.§]!H§.imageRef);
               (§;#'§.getItemByName(this.§ "H§) as §"!A§).mClip.addChild(_loc4_);
            }
            else
            {
               §;#'§.getItemByName(this.§=!t§).visible = false;
               §;#'§.getItemByName(this.§ "H§).visible = false;
            }
         }
         var _loc1_:Number = -(this.§]!H§.§2"I§() >> 1);
         for each(_loc2_ in this.§]!H§.§1"n§)
         {
            _loc2_.§0#N§(mId);
            (_loc5_ = _loc2_.§^#"§()).x = _loc1_;
            (§;#'§.getItemByName("ButtonsPositioner") as §"!A§).mClip.addChild(_loc5_);
            _loc1_ += _loc2_.§5!c§();
         }
      }
      
      private function §5#t§(param1:Event) : void
      {
         if(!§;#'§)
         {
            if(this.§,M§)
            {
               this.§,M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5#t§);
               this.§,M§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§!#"§);
               this.§,M§ = null;
            }
            return;
         }
         var _loc2_:§^"C§ = §;#'§.getItemByName(this.§=!t§);
         if(_loc2_)
         {
            _loc2_.visible = false;
         }
         this.§,M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5#t§);
         this.§,M§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§!#"§);
         var _loc3_:Bitmap = Bitmap(this.§,M§.content);
         _loc3_.x = -(_loc3_.width >> 1);
         _loc3_.y = -(_loc3_.height >> 1);
         (§;#'§.getItemByName(this.§ "H§) as §"!A§).mClip.addChild(_loc3_);
         this.§,M§ = null;
      }
      
      private function §!#"§(param1:IOErrorEvent) : void
      {
         this.§,M§ = null;
         §;#'§.getItemByName(this.§=!t§).visible = false;
         §;#'§.getItemByName(this.§ "H§).visible = false;
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         §3";§.§#"'§().§^l§(this.§]!H§.name,"X");
         close();
      }
      
      public function §;$=§(param1:TextField, param2:int) : void
      {
         var _loc3_:TextFormat = null;
         if(param2 > 0)
         {
            _loc3_ = new TextFormat(null,param2,null);
            _loc3_.align = "center";
            param1.setTextFormat(_loc3_);
         }
         param1.y += Math.round((param1.height - param1.textHeight) / 2);
      }
   }
}
