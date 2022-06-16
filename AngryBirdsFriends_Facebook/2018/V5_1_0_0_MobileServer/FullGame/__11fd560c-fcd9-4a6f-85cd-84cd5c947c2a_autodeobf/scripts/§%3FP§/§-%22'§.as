package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §3#T§.§@"!§;
   import §5";§.§ !N§;
   import §5";§.§6#X§;
   import §<h§.§%M§;
   import §<h§.§@N§;
   import §`7§.§ try§;
   import com.rovio.assets.§!"f§;
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
   
   public class §-"'§ extends AbstractPopup
   {
       
      
      private var §4#F§:§6#X§;
      
      private var §?&§:Loader;
      
      private var §?$<§:String;
      
      private var §"! §:String;
      
      public function §-"'§(param1:int, param2:int, param3:§6#X§)
      {
         super(param1,param2,§1Q§.§5T§.Views.Popup_DynamicNotification[0],"Popup_DynamicNotification_" + param3.id);
         this.§4#F§ = param3;
      }
      
      override protected function init() : void
      {
         var _loc2_:§ !N§ = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:SimpleButton = null;
         super.init();
         if(this.§4#F§.§0#&§)
         {
            §,#2§.mClip.btnClose.visible = true;
            §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         }
         else
         {
            §,#2§.mClip.btnClose.visible = false;
         }
         (§,#2§.getItemByName("TextField_Header") as §%M§).setText(!!this.§4#F§.title ? this.§4#F§.title : "");
         §,#2§.getItemByName("TF_50_50").visible = false;
         §,#2§.getItemByName("TF_50_50_Updown").visible = false;
         §,#2§.getItemByName("TF_AllText").visible = false;
         §,#2§.getItemByName("ImgPos_50_50").visible = false;
         §,#2§.getItemByName("ImgPos_50_50_Updown").visible = false;
         §,#2§.getItemByName("ImgPos_AllImage").visible = false;
         this.§?$<§ = null;
         switch(this.§4#F§.layoutType)
         {
            case "FIFTY_FIFTY":
               §,#2§.getItemByName("TF_50_50").visible = true;
               (§,#2§.getItemByName("TF_50_50") as §%M§).setText(!!this.§4#F§.text ? this.§4#F§.text : "");
               this.§,"z§((§,#2§.getItemByName("TF_50_50") as §%M§).§4!"§,this.§4#F§.fontSize);
               this.§?$<§ = "ImgPos_50_50";
               this.§"! § = "LoadingImage_50_50";
               break;
            case "FIFTY_FIFTY_UPDOWN":
               §,#2§.getItemByName("TF_50_50_Updown").visible = true;
               (§,#2§.getItemByName("TF_50_50_Updown") as §%M§).setText(!!this.§4#F§.text ? this.§4#F§.text : "");
               this.§,"z§((§,#2§.getItemByName("TF_50_50_Updown") as §%M§).§4!"§,this.§4#F§.fontSize);
               this.§?$<§ = "ImgPos_50_50_Updown";
               this.§"! § = "LoadingImage_50_50_Updown";
               break;
            case "ALL_IMAGE":
               this.§?$<§ = "ImgPos_AllImage";
               this.§"! § = "LoadingImage_AllImage";
               break;
            case "ALL_TEXT":
               §,#2§.getItemByName("TF_AllText").visible = true;
               (§,#2§.getItemByName("TF_AllText") as §%M§).setText(!!this.§4#F§.text ? this.§4#F§.text : "");
               this.§,"z§((§,#2§.getItemByName("TF_AllText") as §%M§).§4!"§,this.§4#F§.fontSize);
         }
         if(this.§?$<§)
         {
            if(this.§4#F§.§4!N§)
            {
               §,#2§.getItemByName(this.§?$<§).visible = true;
               §,#2§.getItemByName(this.§"! §).visible = true;
               this.§?&§ = new Loader();
               this.§?&§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%=§);
               this.§?&§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§!"z§);
               this.§?&§.load(new URLRequest(this.§4#F§.§4!N§),new LoaderContext(true));
            }
            else if(this.§4#F§.imageRef)
            {
               §,#2§.getItemByName(this.§?$<§).visible = true;
               §,#2§.getItemByName(this.§"! §).visible = false;
               _loc3_ = §!"f§.§##?§("MovieClip_ImageRef");
               (_loc4_ = new _loc3_()).gotoAndStop(this.§4#F§.imageRef);
               (§,#2§.getItemByName(this.§?$<§) as §@N§).mClip.addChild(_loc4_);
            }
            else
            {
               §,#2§.getItemByName(this.§"! §).visible = false;
               §,#2§.getItemByName(this.§?$<§).visible = false;
            }
         }
         var _loc1_:Number = -(this.§4#F§.§0#$§() >> 1);
         for each(_loc2_ in this.§4#F§.§%#^§)
         {
            _loc2_.§^"G§(mId);
            (_loc5_ = _loc2_.§`#c§()).x = _loc1_;
            (§,#2§.getItemByName("ButtonsPositioner") as §@N§).mClip.addChild(_loc5_);
            _loc1_ += _loc2_.§&!T§();
         }
      }
      
      private function §%=§(param1:Event) : void
      {
         if(!§,#2§)
         {
            if(this.§?&§)
            {
               this.§?&§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%=§);
               this.§?&§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§!"z§);
               this.§?&§ = null;
            }
            return;
         }
         var _loc2_:§@"!§ = §,#2§.getItemByName(this.§"! §);
         if(_loc2_)
         {
            _loc2_.visible = false;
         }
         this.§?&§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%=§);
         this.§?&§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§!"z§);
         var _loc3_:Bitmap = Bitmap(this.§?&§.content);
         _loc3_.x = -(_loc3_.width >> 1);
         _loc3_.y = -(_loc3_.height >> 1);
         (§,#2§.getItemByName(this.§?$<§) as §@N§).mClip.addChild(_loc3_);
         this.§?&§ = null;
      }
      
      private function §!"z§(param1:IOErrorEvent) : void
      {
         this.§?&§ = null;
         §,#2§.getItemByName(this.§"! §).visible = false;
         §,#2§.getItemByName(this.§?$<§).visible = false;
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         § try§.§!!t§().§^"T§(this.§4#F§.name,"X");
         close();
      }
      
      public function §,"z§(param1:TextField, param2:int) : void
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
