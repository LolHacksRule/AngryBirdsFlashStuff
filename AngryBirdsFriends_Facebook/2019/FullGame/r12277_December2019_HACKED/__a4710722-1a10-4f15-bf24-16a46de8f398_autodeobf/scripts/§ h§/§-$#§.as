package § h§
{
   import §2$;§.§-$5§;
   import §2$;§.§=!Z§;
   import §2E§.§]!P§;
   import §9!6§.AbstractPopup;
   import §<8§.§6!1§;
   import §[!;§.§<#a§;
   import §[!;§.§[">§;
   import §[#A§.§&n§;
   import com.rovio.assets.§=@§;
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
   
   public class §-$#§ extends AbstractPopup
   {
       
      
      private var §@$1§:§<#a§;
      
      private var §"$>§:Loader;
      
      private var §#W§:String;
      
      private var §`!T§:String;
      
      public function §-$#§(param1:int, param2:int, param3:§<#a§)
      {
         super(param1,param2,§&n§.§7a§.Views.Popup_DynamicNotification[0],"Popup_DynamicNotification_" + param3.id);
         this.§@$1§ = param3;
      }
      
      override protected function init() : void
      {
         var _loc2_:§[">§ = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:SimpleButton = null;
         super.init();
         if(this.§@$1§.§5!E§)
         {
            §'o§.mClip.btnClose.visible = true;
            §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         }
         else
         {
            §'o§.mClip.btnClose.visible = false;
         }
         (§'o§.getItemByName("TextField_Header") as §-$5§).setText(!!this.§@$1§.title ? this.§@$1§.title : "");
         §'o§.getItemByName("TF_50_50").visible = false;
         §'o§.getItemByName("TF_50_50_Updown").visible = false;
         §'o§.getItemByName("TF_AllText").visible = false;
         §'o§.getItemByName("ImgPos_50_50").visible = false;
         §'o§.getItemByName("ImgPos_50_50_Updown").visible = false;
         §'o§.getItemByName("ImgPos_AllImage").visible = false;
         this.§#W§ = null;
         switch(this.§@$1§.layoutType)
         {
            case "FIFTY_FIFTY":
               §'o§.getItemByName("TF_50_50").visible = true;
               (§'o§.getItemByName("TF_50_50") as §-$5§).setText(!!this.§@$1§.text ? this.§@$1§.text : "");
               this.§2#&§((§'o§.getItemByName("TF_50_50") as §-$5§).§>$D§,this.§@$1§.fontSize);
               this.§#W§ = "ImgPos_50_50";
               this.§`!T§ = "LoadingImage_50_50";
               break;
            case "FIFTY_FIFTY_UPDOWN":
               §'o§.getItemByName("TF_50_50_Updown").visible = true;
               (§'o§.getItemByName("TF_50_50_Updown") as §-$5§).setText(!!this.§@$1§.text ? this.§@$1§.text : "");
               this.§2#&§((§'o§.getItemByName("TF_50_50_Updown") as §-$5§).§>$D§,this.§@$1§.fontSize);
               this.§#W§ = "ImgPos_50_50_Updown";
               this.§`!T§ = "LoadingImage_50_50_Updown";
               break;
            case "ALL_IMAGE":
               this.§#W§ = "ImgPos_AllImage";
               this.§`!T§ = "LoadingImage_AllImage";
               break;
            case "ALL_TEXT":
               §'o§.getItemByName("TF_AllText").visible = true;
               (§'o§.getItemByName("TF_AllText") as §-$5§).setText(!!this.§@$1§.text ? this.§@$1§.text : "");
               this.§2#&§((§'o§.getItemByName("TF_AllText") as §-$5§).§>$D§,this.§@$1§.fontSize);
         }
         if(this.§#W§)
         {
            if(this.§@$1§.§=#z§)
            {
               §'o§.getItemByName(this.§#W§).visible = true;
               §'o§.getItemByName(this.§`!T§).visible = true;
               this.§"$>§ = new Loader();
               this.§"$>§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§@"Y§);
               this.§"$>§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6I§);
               this.§"$>§.load(new URLRequest(this.§@$1§.§=#z§),new LoaderContext(true));
            }
            else if(this.§@$1§.imageRef)
            {
               §'o§.getItemByName(this.§#W§).visible = true;
               §'o§.getItemByName(this.§`!T§).visible = false;
               _loc3_ = §=@§.§9!x§("MovieClip_ImageRef");
               (_loc4_ = new _loc3_()).gotoAndStop(this.§@$1§.imageRef);
               (§'o§.getItemByName(this.§#W§) as §=!Z§).mClip.addChild(_loc4_);
            }
            else
            {
               §'o§.getItemByName(this.§`!T§).visible = false;
               §'o§.getItemByName(this.§#W§).visible = false;
            }
         }
         var _loc1_:Number = -(this.§@$1§.§?R§() >> 1);
         for each(_loc2_ in this.§@$1§.§>§)
         {
            _loc2_.§'#7§(mId);
            (_loc5_ = _loc2_.§'j§()).x = _loc1_;
            (§'o§.getItemByName("ButtonsPositioner") as §=!Z§).mClip.addChild(_loc5_);
            _loc1_ += _loc2_.§"#;§();
         }
      }
      
      private function §@"Y§(param1:Event) : void
      {
         if(!§'o§)
         {
            if(this.§"$>§)
            {
               this.§"$>§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§@"Y§);
               this.§"$>§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6I§);
               this.§"$>§ = null;
            }
            return;
         }
         var _loc2_:§6!1§ = §'o§.getItemByName(this.§`!T§);
         if(_loc2_)
         {
            _loc2_.visible = false;
         }
         this.§"$>§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§@"Y§);
         this.§"$>§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6I§);
         var _loc3_:Bitmap = Bitmap(this.§"$>§.content);
         _loc3_.x = -(_loc3_.width >> 1);
         _loc3_.y = -(_loc3_.height >> 1);
         (§'o§.getItemByName(this.§#W§) as §=!Z§).mClip.addChild(_loc3_);
         this.§"$>§ = null;
      }
      
      private function §6I§(param1:IOErrorEvent) : void
      {
         this.§"$>§ = null;
         §'o§.getItemByName(this.§`!T§).visible = false;
         §'o§.getItemByName(this.§#W§).visible = false;
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         §]!P§.§1!7§().§6#Q§(this.§@$1§.name,"X");
         close();
      }
      
      public function §2#&§(param1:TextField, param2:int) : void
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
