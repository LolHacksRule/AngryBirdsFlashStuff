package §?!N§
{
   import §%#v§.§0"j§;
   import §+#B§.§+$A§;
   import §4!n§.§#$>§;
   import §4#O§.§-#§;
   import §4#O§.§="j§;
   import §5!$§.§-#j§;
   import §5!$§.§>§;
   import §;$5§.AbstractPopup;
   import com.rovio.assets.§2"O§;
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
   
   public class §5W§ extends AbstractPopup
   {
       
      
      private var §,P§:§="j§;
      
      private var §!^§:Loader;
      
      private var §,#N§:String;
      
      private var §1$"§:String;
      
      public function §5W§(param1:int, param2:int, param3:§="j§)
      {
         super(param1,param2,§0"j§.§-i§.Views.Popup_DynamicNotification[0],"Popup_DynamicNotification_" + param3.id);
         this.§,P§ = param3;
      }
      
      override protected function init() : void
      {
         var _loc2_:§-#§ = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:SimpleButton = null;
         super.init();
         if(this.§,P§.§%"`§)
         {
            §8#Y§.mClip.btnClose.visible = true;
            §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         }
         else
         {
            §8#Y§.mClip.btnClose.visible = false;
         }
         (§8#Y§.getItemByName("TextField_Header") as §-#j§).setText(!!this.§,P§.title ? this.§,P§.title : "");
         §8#Y§.getItemByName("TF_50_50").visible = false;
         §8#Y§.getItemByName("TF_50_50_Updown").visible = false;
         §8#Y§.getItemByName("TF_AllText").visible = false;
         §8#Y§.getItemByName("ImgPos_50_50").visible = false;
         §8#Y§.getItemByName("ImgPos_50_50_Updown").visible = false;
         §8#Y§.getItemByName("ImgPos_AllImage").visible = false;
         this.§,#N§ = null;
         switch(this.§,P§.layoutType)
         {
            case "FIFTY_FIFTY":
               §8#Y§.getItemByName("TF_50_50").visible = true;
               (§8#Y§.getItemByName("TF_50_50") as §-#j§).setText(!!this.§,P§.text ? this.§,P§.text : "");
               this.§5"v§((§8#Y§.getItemByName("TF_50_50") as §-#j§).§^g§,this.§,P§.fontSize);
               this.§,#N§ = "ImgPos_50_50";
               this.§1$"§ = "LoadingImage_50_50";
               break;
            case "FIFTY_FIFTY_UPDOWN":
               §8#Y§.getItemByName("TF_50_50_Updown").visible = true;
               (§8#Y§.getItemByName("TF_50_50_Updown") as §-#j§).setText(!!this.§,P§.text ? this.§,P§.text : "");
               this.§5"v§((§8#Y§.getItemByName("TF_50_50_Updown") as §-#j§).§^g§,this.§,P§.fontSize);
               this.§,#N§ = "ImgPos_50_50_Updown";
               this.§1$"§ = "LoadingImage_50_50_Updown";
               break;
            case "ALL_IMAGE":
               this.§,#N§ = "ImgPos_AllImage";
               this.§1$"§ = "LoadingImage_AllImage";
               break;
            case "ALL_TEXT":
               §8#Y§.getItemByName("TF_AllText").visible = true;
               (§8#Y§.getItemByName("TF_AllText") as §-#j§).setText(!!this.§,P§.text ? this.§,P§.text : "");
               this.§5"v§((§8#Y§.getItemByName("TF_AllText") as §-#j§).§^g§,this.§,P§.fontSize);
         }
         if(this.§,#N§)
         {
            if(this.§,P§.§%"p§)
            {
               §8#Y§.getItemByName(this.§,#N§).visible = true;
               §8#Y§.getItemByName(this.§1$"§).visible = true;
               this.§!^§ = new Loader();
               this.§!^§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§6#v§);
               this.§!^§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§@!>§);
               this.§!^§.load(new URLRequest(this.§,P§.§%"p§),new LoaderContext(true));
            }
            else if(this.§,P§.imageRef)
            {
               §8#Y§.getItemByName(this.§,#N§).visible = true;
               §8#Y§.getItemByName(this.§1$"§).visible = false;
               _loc3_ = §2"O§.§`>§("MovieClip_ImageRef");
               (_loc4_ = new _loc3_()).gotoAndStop(this.§,P§.imageRef);
               (§8#Y§.getItemByName(this.§,#N§) as §>#8§).mClip.addChild(_loc4_);
            }
            else
            {
               §8#Y§.getItemByName(this.§1$"§).visible = false;
               §8#Y§.getItemByName(this.§,#N§).visible = false;
            }
         }
         var _loc1_:Number = -(this.§,P§.§1z§() >> 1);
         for each(_loc2_ in this.§,P§.§8$-§)
         {
            _loc2_.§@"p§(mId);
            (_loc5_ = _loc2_.§2"2§()).x = _loc1_;
            (§8#Y§.getItemByName("ButtonsPositioner") as §>#8§).mClip.addChild(_loc5_);
            _loc1_ += _loc2_.§""V§();
         }
      }
      
      private function §6#v§(param1:Event) : void
      {
         if(!§8#Y§)
         {
            if(this.§!^§)
            {
               this.§!^§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6#v§);
               this.§!^§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!>§);
               this.§!^§ = null;
            }
            return;
         }
         var _loc2_:§#$>§ = §8#Y§.getItemByName(this.§1$"§);
         if(_loc2_)
         {
            _loc2_.visible = false;
         }
         this.§!^§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6#v§);
         this.§!^§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!>§);
         var _loc3_:Bitmap = Bitmap(this.§!^§.content);
         _loc3_.x = -(_loc3_.width >> 1);
         _loc3_.y = -(_loc3_.height >> 1);
         (§8#Y§.getItemByName(this.§,#N§) as §>#8§).mClip.addChild(_loc3_);
         this.§!^§ = null;
      }
      
      private function §@!>§(param1:IOErrorEvent) : void
      {
         this.§!^§ = null;
         §8#Y§.getItemByName(this.§1$"§).visible = false;
         §8#Y§.getItemByName(this.§,#N§).visible = false;
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         §+$A§.§@"i§().§'O§(this.§,P§.name,"X");
         close();
      }
      
      public function §5"v§(param1:TextField, param2:int) : void
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
