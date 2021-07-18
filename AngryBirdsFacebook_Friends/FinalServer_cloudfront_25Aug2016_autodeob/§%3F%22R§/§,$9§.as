package §?"R§
{
   import § "x§.§8]§;
   import § "x§.§@#F§;
   import §'!U§.§>$$§;
   import §6"r§.§="T§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §>!#§.§-#A§;
   import §^!,§.AbstractPopup;
   import com.rovio.assets.§@`§;
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
   
   public class §,$9§ extends AbstractPopup
   {
       
      
      private var §9" §:§@#F§;
      
      private var § #]§:Loader;
      
      private var §2#H§:String;
      
      private var §6"<§:String;
      
      public function §,$9§(param1:int, param2:int, param3:§@#F§)
      {
         super(param1,param2,§@#`§.§#!c§.Views.Popup_DynamicNotification[0],"Popup_DynamicNotification_" + param3.id);
         this.§9" § = param3;
      }
      
      override protected function init() : void
      {
         var _loc2_:§8]§ = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:SimpleButton = null;
         super.init();
         if(this.§9" §.§3"T§)
         {
            §7!j§.mClip.btnClose.visible = true;
            §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         }
         else
         {
            §7!j§.mClip.btnClose.visible = false;
         }
         (§7!j§.getItemByName("TextField_Header") as §]$!§).setText(!!this.§9" §.title ? this.§9" §.title : "");
         §7!j§.getItemByName("TF_50_50").visible = false;
         §7!j§.getItemByName("TF_50_50_Updown").visible = false;
         §7!j§.getItemByName("TF_AllText").visible = false;
         §7!j§.getItemByName("ImgPos_50_50").visible = false;
         §7!j§.getItemByName("ImgPos_50_50_Updown").visible = false;
         §7!j§.getItemByName("ImgPos_AllImage").visible = false;
         this.§2#H§ = null;
         switch(this.§9" §.layoutType)
         {
            case "FIFTY_FIFTY":
               §7!j§.getItemByName("TF_50_50").visible = true;
               (§7!j§.getItemByName("TF_50_50") as §]$!§).setText(!!this.§9" §.text ? this.§9" §.text : "");
               this.§4J§((§7!j§.getItemByName("TF_50_50") as §]$!§).§@]§,this.§9" §.fontSize);
               this.§2#H§ = "ImgPos_50_50";
               this.§6"<§ = "LoadingImage_50_50";
               break;
            case "FIFTY_FIFTY_UPDOWN":
               §7!j§.getItemByName("TF_50_50_Updown").visible = true;
               (§7!j§.getItemByName("TF_50_50_Updown") as §]$!§).setText(!!this.§9" §.text ? this.§9" §.text : "");
               this.§4J§((§7!j§.getItemByName("TF_50_50_Updown") as §]$!§).§@]§,this.§9" §.fontSize);
               this.§2#H§ = "ImgPos_50_50_Updown";
               this.§6"<§ = "LoadingImage_50_50_Updown";
               break;
            case "ALL_IMAGE":
               this.§2#H§ = "ImgPos_AllImage";
               this.§6"<§ = "LoadingImage_AllImage";
               break;
            case "ALL_TEXT":
               §7!j§.getItemByName("TF_AllText").visible = true;
               (§7!j§.getItemByName("TF_AllText") as §]$!§).setText(!!this.§9" §.text ? this.§9" §.text : "");
               this.§4J§((§7!j§.getItemByName("TF_AllText") as §]$!§).§@]§,this.§9" §.fontSize);
         }
         if(this.§2#H§)
         {
            if(this.§9" §.§"h§)
            {
               §7!j§.getItemByName(this.§2#H§).visible = true;
               §7!j§.getItemByName(this.§6"<§).visible = true;
               this.§ #]§ = new Loader();
               this.§ #]§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§]!X§);
               this.§ #]§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§#!L§);
               this.§ #]§.load(new URLRequest(this.§9" §.§"h§),new LoaderContext(true));
            }
            else if(this.§9" §.imageRef)
            {
               §7!j§.getItemByName(this.§2#H§).visible = true;
               §7!j§.getItemByName(this.§6"<§).visible = false;
               _loc3_ = §@`§.§4!i§("MovieClip_ImageRef");
               (_loc4_ = new _loc3_()).gotoAndStop(this.§9" §.imageRef);
               (§7!j§.getItemByName(this.§2#H§) as §="T§).mClip.addChild(_loc4_);
            }
            else
            {
               §7!j§.getItemByName(this.§6"<§).visible = false;
               §7!j§.getItemByName(this.§2#H§).visible = false;
            }
         }
         var _loc1_:Number = -(this.§9" §.§-P§() >> 1);
         for each(_loc2_ in this.§9" §.§@!I§)
         {
            _loc2_.§'!z§(mId);
            (_loc5_ = _loc2_.§3"H§()).x = _loc1_;
            (§7!j§.getItemByName("ButtonsPositioner") as §="T§).mClip.addChild(_loc5_);
            _loc1_ += _loc2_.§6# §();
         }
      }
      
      private function §]!X§(param1:Event) : void
      {
         if(!§7!j§)
         {
            if(this.§ #]§)
            {
               this.§ #]§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§]!X§);
               this.§ #]§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!L§);
               this.§ #]§ = null;
            }
            return;
         }
         var _loc2_:§>$$§ = §7!j§.getItemByName(this.§6"<§);
         if(_loc2_)
         {
            _loc2_.visible = false;
         }
         this.§ #]§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§]!X§);
         this.§ #]§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!L§);
         var _loc3_:Bitmap = Bitmap(this.§ #]§.content);
         _loc3_.x = -(_loc3_.width >> 1);
         _loc3_.y = -(_loc3_.height >> 1);
         (§7!j§.getItemByName(this.§2#H§) as §="T§).mClip.addChild(_loc3_);
         this.§ #]§ = null;
      }
      
      private function §#!L§(param1:IOErrorEvent) : void
      {
         this.§ #]§ = null;
         §7!j§.getItemByName(this.§6"<§).visible = false;
         §7!j§.getItemByName(this.§2#H§).visible = false;
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         §-#A§.§6$2§().§,!0§(this.§9" §.name,"X");
         close();
      }
      
      public function §4J§(param1:TextField, param2:int) : void
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
