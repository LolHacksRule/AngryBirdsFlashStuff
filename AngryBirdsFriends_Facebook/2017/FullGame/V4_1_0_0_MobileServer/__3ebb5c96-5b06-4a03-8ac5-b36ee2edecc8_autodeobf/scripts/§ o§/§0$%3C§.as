package § o§
{
   import §%#A§.§'=§;
   import §%#A§.§^!4§;
   import §6V§.§?!=§;
   import §8#D§.§=>§;
   import §<"1§.§[!K§;
   import §<#m§.AbstractPopup;
   import §?]§.§0!B§;
   import §?]§.§[!y§;
   import com.rovio.assets.§+$#§;
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
   
   public class §0$<§ extends AbstractPopup
   {
       
      
      private var §<"§:§0!B§;
      
      private var §8!o§:Loader;
      
      private var §0"%§:String;
      
      private var §["k§:String;
      
      public function §0$<§(param1:int, param2:int, param3:§0!B§)
      {
         super(param1,param2,§=>§.§%" §.Views.Popup_DynamicNotification[0],"Popup_DynamicNotification_" + param3.id);
         this.§<"§ = param3;
      }
      
      override protected function init() : void
      {
         var _loc2_:§[!y§ = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:SimpleButton = null;
         super.init();
         if(this.§<"§.§6#O§)
         {
            §1"6§.mClip.btnClose.visible = true;
            §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         }
         else
         {
            §1"6§.mClip.btnClose.visible = false;
         }
         (§1"6§.getItemByName("TextField_Header") as §^!4§).setText(!!this.§<"§.title ? this.§<"§.title : "");
         §1"6§.getItemByName("TF_50_50").visible = false;
         §1"6§.getItemByName("TF_50_50_Updown").visible = false;
         §1"6§.getItemByName("TF_AllText").visible = false;
         §1"6§.getItemByName("ImgPos_50_50").visible = false;
         §1"6§.getItemByName("ImgPos_50_50_Updown").visible = false;
         §1"6§.getItemByName("ImgPos_AllImage").visible = false;
         this.§0"%§ = null;
         switch(this.§<"§.layoutType)
         {
            case "FIFTY_FIFTY":
               §1"6§.getItemByName("TF_50_50").visible = true;
               (§1"6§.getItemByName("TF_50_50") as §^!4§).setText(!!this.§<"§.text ? this.§<"§.text : "");
               this.§!!K§((§1"6§.getItemByName("TF_50_50") as §^!4§).§[!&§,this.§<"§.fontSize);
               this.§0"%§ = "ImgPos_50_50";
               this.§["k§ = "LoadingImage_50_50";
               break;
            case "FIFTY_FIFTY_UPDOWN":
               §1"6§.getItemByName("TF_50_50_Updown").visible = true;
               (§1"6§.getItemByName("TF_50_50_Updown") as §^!4§).setText(!!this.§<"§.text ? this.§<"§.text : "");
               this.§!!K§((§1"6§.getItemByName("TF_50_50_Updown") as §^!4§).§[!&§,this.§<"§.fontSize);
               this.§0"%§ = "ImgPos_50_50_Updown";
               this.§["k§ = "LoadingImage_50_50_Updown";
               break;
            case "ALL_IMAGE":
               this.§0"%§ = "ImgPos_AllImage";
               this.§["k§ = "LoadingImage_AllImage";
               break;
            case "ALL_TEXT":
               §1"6§.getItemByName("TF_AllText").visible = true;
               (§1"6§.getItemByName("TF_AllText") as §^!4§).setText(!!this.§<"§.text ? this.§<"§.text : "");
               this.§!!K§((§1"6§.getItemByName("TF_AllText") as §^!4§).§[!&§,this.§<"§.fontSize);
         }
         if(this.§0"%§)
         {
            if(this.§<"§.§3!2§)
            {
               §1"6§.getItemByName(this.§0"%§).visible = true;
               §1"6§.getItemByName(this.§["k§).visible = true;
               this.§8!o§ = new Loader();
               this.§8!o§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§<,§);
               this.§8!o§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§0#Z§);
               this.§8!o§.load(new URLRequest(this.§<"§.§3!2§),new LoaderContext(true));
            }
            else if(this.§<"§.imageRef)
            {
               §1"6§.getItemByName(this.§0"%§).visible = true;
               §1"6§.getItemByName(this.§["k§).visible = false;
               _loc3_ = §+$#§.§["`§("MovieClip_ImageRef");
               (_loc4_ = new _loc3_()).gotoAndStop(this.§<"§.imageRef);
               (§1"6§.getItemByName(this.§0"%§) as §'=§).mClip.addChild(_loc4_);
            }
            else
            {
               §1"6§.getItemByName(this.§["k§).visible = false;
               §1"6§.getItemByName(this.§0"%§).visible = false;
            }
         }
         var _loc1_:Number = -(this.§<"§.§=$,§() >> 1);
         for each(_loc2_ in this.§<"§.§0!z§)
         {
            _loc2_.§&#6§(mId);
            (_loc5_ = _loc2_.§4#W§()).x = _loc1_;
            (§1"6§.getItemByName("ButtonsPositioner") as §'=§).mClip.addChild(_loc5_);
            _loc1_ += _loc2_.§,#Y§();
         }
      }
      
      private function §<,§(param1:Event) : void
      {
         if(!§1"6§)
         {
            if(this.§8!o§)
            {
               this.§8!o§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<,§);
               this.§8!o§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§0#Z§);
               this.§8!o§ = null;
            }
            return;
         }
         var _loc2_:§[!K§ = §1"6§.getItemByName(this.§["k§);
         if(_loc2_)
         {
            _loc2_.visible = false;
         }
         this.§8!o§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<,§);
         this.§8!o§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§0#Z§);
         var _loc3_:Bitmap = Bitmap(this.§8!o§.content);
         _loc3_.x = -(_loc3_.width >> 1);
         _loc3_.y = -(_loc3_.height >> 1);
         (§1"6§.getItemByName(this.§0"%§) as §'=§).mClip.addChild(_loc3_);
         this.§8!o§ = null;
      }
      
      private function §0#Z§(param1:IOErrorEvent) : void
      {
         this.§8!o§ = null;
         §1"6§.getItemByName(this.§["k§).visible = false;
         §1"6§.getItemByName(this.§0"%§).visible = false;
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         §?!=§.§3!q§().§2#"§(this.§<"§.name,"X");
         close();
      }
      
      public function §!!K§(param1:TextField, param2:int) : void
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
