package §>z§
{
   import §#,§.§'!`§;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §,!Q§.§8#=§;
   import §0!s§.AbstractPopup;
   import §1!3§.§!§;
   import §1!3§.§in §;
   import com.rovio.assets.§6$A§;
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
   
   public class §7$,§ extends AbstractPopup
   {
       
      
      private var §@#+§:§!#1§;
      
      private var §-!T§:Loader;
      
      private var §[e§:String;
      
      private var §,!b§:String;
      
      public function §7$,§(param1:int, param2:int, param3:§!#1§)
      {
         super(param1,param2,§?l§.§3m§.Views.Popup_DynamicNotification[0],"Popup_DynamicNotification_" + param3.id);
         this.§@#+§ = param3;
      }
      
      override protected function init() : void
      {
         var _loc2_:§in § = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:SimpleButton = null;
         super.init();
         if(this.§@#+§.§&!I§)
         {
            §&!M§.mClip.btnClose.visible = true;
            §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         }
         else
         {
            §&!M§.mClip.btnClose.visible = false;
         }
         (§&!M§.getItemByName("TextField_Header") as §`"$§).setText(!!this.§@#+§.title ? this.§@#+§.title : "");
         §&!M§.getItemByName("TF_50_50").visible = false;
         §&!M§.getItemByName("TF_50_50_Updown").visible = false;
         §&!M§.getItemByName("TF_AllText").visible = false;
         §&!M§.getItemByName("ImgPos_50_50").visible = false;
         §&!M§.getItemByName("ImgPos_50_50_Updown").visible = false;
         §&!M§.getItemByName("ImgPos_AllImage").visible = false;
         this.§[e§ = null;
         switch(this.§@#+§.layoutType)
         {
            case "FIFTY_FIFTY":
               §&!M§.getItemByName("TF_50_50").visible = true;
               (§&!M§.getItemByName("TF_50_50") as §`"$§).setText(!!this.§@#+§.text ? this.§@#+§.text : "");
               this.§&"n§((§&!M§.getItemByName("TF_50_50") as §`"$§).§2"<§,this.§@#+§.fontSize);
               this.§[e§ = "ImgPos_50_50";
               this.§,!b§ = "LoadingImage_50_50";
               break;
            case "FIFTY_FIFTY_UPDOWN":
               §&!M§.getItemByName("TF_50_50_Updown").visible = true;
               (§&!M§.getItemByName("TF_50_50_Updown") as §`"$§).setText(!!this.§@#+§.text ? this.§@#+§.text : "");
               this.§&"n§((§&!M§.getItemByName("TF_50_50_Updown") as §`"$§).§2"<§,this.§@#+§.fontSize);
               this.§[e§ = "ImgPos_50_50_Updown";
               this.§,!b§ = "LoadingImage_50_50_Updown";
               break;
            case "ALL_IMAGE":
               this.§[e§ = "ImgPos_AllImage";
               this.§,!b§ = "LoadingImage_AllImage";
               break;
            case "ALL_TEXT":
               §&!M§.getItemByName("TF_AllText").visible = true;
               (§&!M§.getItemByName("TF_AllText") as §`"$§).setText(!!this.§@#+§.text ? this.§@#+§.text : "");
               this.§&"n§((§&!M§.getItemByName("TF_AllText") as §`"$§).§2"<§,this.§@#+§.fontSize);
         }
         if(this.§[e§)
         {
            if(this.§@#+§.§!"H§)
            {
               §&!M§.getItemByName(this.§[e§).visible = true;
               §&!M§.getItemByName(this.§,!b§).visible = true;
               this.§-!T§ = new Loader();
               this.§-!T§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ !A§);
               this.§-!T§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§@#p§);
               this.§-!T§.load(new URLRequest(this.§@#+§.§!"H§),new LoaderContext(true));
            }
            else if(this.§@#+§.imageRef)
            {
               §&!M§.getItemByName(this.§[e§).visible = true;
               §&!M§.getItemByName(this.§,!b§).visible = false;
               _loc3_ = §6$A§.§1!m§("MovieClip_ImageRef");
               (_loc4_ = new _loc3_()).gotoAndStop(this.§@#+§.imageRef);
               (§&!M§.getItemByName(this.§[e§) as §'!`§).mClip.addChild(_loc4_);
            }
            else
            {
               §&!M§.getItemByName(this.§,!b§).visible = false;
               §&!M§.getItemByName(this.§[e§).visible = false;
            }
         }
         var _loc1_:Number = -(this.§@#+§.§>$!§() >> 1);
         for each(_loc2_ in this.§@#+§.§"#U§)
         {
            _loc2_.§?#J§(mId);
            (_loc5_ = _loc2_.§"#4§()).x = _loc1_;
            (§&!M§.getItemByName("ButtonsPositioner") as §'!`§).mClip.addChild(_loc5_);
            _loc1_ += _loc2_.§7$A§();
         }
      }
      
      private function § !A§(param1:Event) : void
      {
         if(!§&!M§)
         {
            if(this.§-!T§)
            {
               this.§-!T§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ !A§);
               this.§-!T§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§@#p§);
               this.§-!T§ = null;
            }
            return;
         }
         var _loc2_:§8#=§ = §&!M§.getItemByName(this.§,!b§);
         if(_loc2_)
         {
            _loc2_.visible = false;
         }
         this.§-!T§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ !A§);
         this.§-!T§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§@#p§);
         var _loc3_:Bitmap = Bitmap(this.§-!T§.content);
         _loc3_.x = -(_loc3_.width >> 1);
         _loc3_.y = -(_loc3_.height >> 1);
         (§&!M§.getItemByName(this.§[e§) as §'!`§).mClip.addChild(_loc3_);
         this.§-!T§ = null;
      }
      
      private function §@#p§(param1:IOErrorEvent) : void
      {
         this.§-!T§ = null;
         §&!M§.getItemByName(this.§,!b§).visible = false;
         §&!M§.getItemByName(this.§[e§).visible = false;
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         §!!K§.§%#S§().§#"^§(this.§@#+§.name,"X");
         close();
      }
      
      public function §&"n§(param1:TextField, param2:int) : void
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
