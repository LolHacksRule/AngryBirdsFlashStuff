package § h§
{
   import § "v§.§4$4§;
   import §!!H§.§ $4§;
   import §#Q§.§ l§;
   import §+!n§.§+!p§;
   import §+Z§.§ ![§;
   import §+Z§.§?!T§;
   import §2$;§.§-$5§;
   import §2$;§.§=!Z§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§,!8§;
   import §2E§.§]!P§;
   import §4#l§.§8#E§;
   import §4#l§.§='§;
   import §4#l§.§>"`§;
   import §4$A§.§=$5§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
   import §<"I§.§1!^§;
   import §<"I§.§<$B§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §@!_§.§>%§;
   import §@!_§.§>-§;
   import §[#A§.§&n§;
   import com.rovio.assets.§=@§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuickPurchasePowerupPopup extends AbstractPopup implements §=$5§, §'r§, §;"P§
   {
      
      private static const §2>§:int = 4;
      
      public static const ID:String = "QuickPurchasePowerupPopup";
      
      private static const §`-§:String = "Quick Purchase Powerup";
      
      private static var §=!k§:Object;
      
      private static var §[$%§:Boolean;
       
      
      private var §=#Q§:§8#E§;
      
      private var §4!2§:§1!^§;
      
      private var §1"w§:Wallet;
      
      private var §^!d§:§ l§;
      
      private var §>!b§:§5"f§;
      
      private var §%"h§:§>-§;
      
      private var §1F§:Timer;
      
      public function QuickPurchasePowerupPopup(param1:MovieClip, param2:§8#E§, param3:§1!^§)
      {
         super(§-!S§.NORMAL,§## §.TOP,§&n§.§7a§.Views.PopupView_QuickPurchasePowerupPopup[0],ID);
         this.§4!2§ = param3;
         this.§=#Q§ = param2;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:String = null;
         var _loc4_:§>"`§ = null;
         var _loc6_:MovieClip = null;
         super.show(param1);
         this.§?0§();
         (§'o§.getItemByName("TextField_Header") as §-$5§).setText(this.§4!2§.§[E§);
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         switch(this.§=#Q§.id)
         {
            case §<$B§.§+"4§.§=#@§:
               _loc2_ = "SuperSeedsIcon";
               break;
            case §<$B§.§<$§.§=#@§:
               _loc2_ = "KingSlingIcon";
               break;
            case §<$B§.§[D§.§=#@§:
               _loc2_ = "BoomboxIcon";
               break;
            case §<$B§.§ !n§.§=#@§:
               _loc2_ = "SlingScopeIcon";
               break;
            case §<$B§.§5#J§.§=#@§:
               _loc2_ = "BirdQuakeIcon";
               break;
            case §<$B§.§0"s§.§=#@§:
               _loc2_ = "ExtraBirdIcon";
               break;
            case §<$B§.§!"C§.§=#@§:
               _loc2_ = "MushroomIcon";
               break;
            case §<$B§.§`"K§.§=#@§:
               _loc2_ = "MightyEagleIcon";
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§=#Q§.§+!2§())
         {
            if(_loc3_ >= §2>§)
            {
               break;
            }
            _loc4_ = this.§=#Q§.getPricePoint(_loc3_);
            if(_loc2_)
            {
               _loc6_ = new §=@§.§9!x§(_loc2_)();
               _loc6_.scaleX = _loc6_.scaleY = _loc6_.scaleY * 2;
               (§'o§.getItemByName("Tab_icon_" + (_loc3_ + 1)) as §=!Z§).mClip.addChild(_loc6_);
            }
            (§'o§.getItemByName("Tab_quantity_" + (_loc3_ + 1)) as §-$5§).setText(§='§.MULTIPLIER_STRING + §,!8§.§1"h§(_loc4_.totalQuantity));
            if(_loc4_.§%"X§ > 0)
            {
               ((§'o§.getItemByName("Tab_extra_" + (_loc3_ + 1)) as §=!Z§).mClip.getChildByName("txtAmount") as TextField).text = "" + _loc4_.§%"X§;
            }
            if(_loc4_.campaignPrice > 0)
            {
               §'o§.mClip["Tab_button_" + (_loc3_ + 1)].visible = false;
               this.§ #G§("" + _loc4_.campaignPrice,"Tab_offer_button_" + (_loc3_ + 1),"" + _loc4_.price);
               ((§'o§.getItemByName("Tab_offer_" + (_loc3_ + 1)) as §=!Z§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc4_.campaignSalePercentage + "%";
               §'o§.mClip["Tab_offer_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§;"y§);
            }
            else
            {
               §'o§.mClip["Tab_offer_button_" + (_loc3_ + 1)].visible = false;
               this.§ #G§("" + _loc4_.price,"Tab_button_" + (_loc3_ + 1));
               §'o§.mClip["Tab_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§;"y§);
            }
            _loc3_++;
         }
         this.§-#y§();
         this.§0!x§(true);
         § $4§.§"#n§(this.§=#Q§);
         this.§^!d§ = § l§.§3"1§;
         this.§^!d§.addEventListener(§ l§.§-"i§,this.§>#q§);
         §]!P§.§1!7§().§9a§("QUICK_PURCHASE_POWERUP_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§=#Q§.§+!2§())
         {
            if(_loc3_ >= §2>§)
            {
               break;
            }
            §'o§.mClip["Tab_offer_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§;"y§);
            §'o§.mClip["Tab_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§;"y§);
            _loc3_++;
         }
         this.§^!d§.removeEventListener(§ l§.§-"i§,this.§>#q§);
         this.§^!d§ = null;
         if(this.§>!b§)
         {
            this.§>!b§.removeEventListener(Event.COMPLETE,this.§9!J§);
            this.§>!b§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§>!b§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>!b§ = null;
         }
         §'o§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§[V§);
         §=!k§ = null;
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
         this.§^!G§();
         super.hide(param1);
      }
      
      private function §-#y§() : void
      {
         this.§ "@§(new Wallet(this,true,true));
         this.§1"w§.§6""§.visible = true;
         this.§1"w§.setCoinsAmountText(§,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§);
      }
      
      private function §0!x§(param1:Boolean) : void
      {
         var _loc3_:§>"`§ = null;
         if(!§'o§)
         {
            return;
         }
         §'o§.mClip.mouseEnabled = param1;
         §'o§.mClip.mouseChildren = param1;
         var _loc2_:int = 1;
         while(_loc2_ <= §2>§)
         {
            §'o§.getItemByName("Tab_quantity_" + _loc2_).visible = param1;
            §'o§.getItemByName("Tab_icon_" + _loc2_).visible = param1;
            §'o§.mClip.getChildByName("Tab_button_" + _loc2_).visible = param1;
            §'o§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = param1;
            _loc3_ = this.§=#Q§.getPricePoint(_loc2_ - 1);
            if(_loc3_)
            {
               if(_loc3_.campaignPrice && _loc3_.campaignPrice > 0)
               {
                  §'o§.getItemByName("Tab_extra_" + _loc2_).visible = false;
                  §'o§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
                  §'o§.getItemByName("Tab_offer_" + _loc2_).visible = param1;
               }
               else
               {
                  §'o§.getItemByName("Tab_extra_" + _loc2_).visible = _loc3_.§%"X§ > 0 && param1;
                  §'o§.getItemByName("Tab_offer_" + _loc2_).visible = false;
                  §'o§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
               }
            }
            else
            {
               §'o§.getItemByName("Tab_extra_" + _loc2_).visible = false;
               §'o§.getItemByName("Tab_offer_" + _loc2_).visible = false;
               §'o§.getItemByName("Tab_quantity_" + _loc2_).visible = false;
               §'o§.getItemByName("Tab_icon_" + _loc2_).visible = false;
               §'o§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
               §'o§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
            }
            _loc2_++;
         }
         (§'o§.getItemByName("MovieClip_LoadingImage") as §=!Z§).setVisibility(!param1);
      }
      
      public function §9M§() : String
      {
         return ID;
      }
      
      public function §2!^§() : String
      {
         return §'@§.§5"!§;
      }
      
      public function §6#U§() : String
      {
         return §'@§.§5"r§;
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§'o§)
         {
            return §'o§.getItemByName("walletContainer").mClip;
         }
         return null;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function § #G§(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:DisplayObjectContainer = §'o§.mClip[param2].upState as DisplayObjectContainer;
         var _loc5_:int = 1;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.numChildren)
         {
            if(_loc4_.getChildAt(_loc6_) is TextField)
            {
               if(_loc5_ == 1)
               {
                  (_loc4_.getChildAt(_loc6_) as TextField).text = param1;
                  if(!param3)
                  {
                     break;
                  }
               }
               else if(_loc5_ == 2)
               {
                  (_loc4_.getChildAt(_loc6_) as TextField).text = param3;
                  break;
               }
               _loc5_++;
            }
            _loc6_++;
         }
         _loc5_ = 1;
         _loc4_ = §'o§.mClip[param2].overState as DisplayObjectContainer;
         _loc6_ = 0;
         while(_loc6_ < _loc4_.numChildren)
         {
            if(_loc4_.getChildAt(_loc6_) is TextField)
            {
               if(_loc5_ == 1)
               {
                  (_loc4_.getChildAt(_loc6_) as TextField).text = param1;
                  if(!param3)
                  {
                     break;
                  }
               }
               else if(_loc5_ == 2)
               {
                  (_loc4_.getChildAt(_loc6_) as TextField).text = param3;
                  break;
               }
               _loc5_++;
            }
            _loc6_++;
         }
         _loc5_ = 1;
         _loc4_ = §'o§.mClip[param2].downState as DisplayObjectContainer;
         _loc6_ = 0;
         while(_loc6_ < _loc4_.numChildren)
         {
            if(_loc4_.getChildAt(_loc6_) is TextField)
            {
               if(_loc5_ == 1)
               {
                  (_loc4_.getChildAt(_loc6_) as TextField).text = param1;
                  if(!param3)
                  {
                     break;
                  }
               }
               else if(_loc5_ == 2)
               {
                  (_loc4_.getChildAt(_loc6_) as TextField).text = param3;
                  break;
               }
               _loc5_++;
            }
            _loc6_++;
         }
      }
      
      private function §;"y§(param1:MouseEvent) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:§?!y§ = null;
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§0!x§(false);
         var _loc2_:int = int(param1.target.name.charAt(param1.target.name.length - 1)) - 1;
         var _loc3_:§>"`§ = this.§=#Q§.getPricePoint(_loc2_);
         var _loc4_:Number = _loc3_.campaignPrice > 0 ? Number(_loc3_.campaignPrice) : Number(_loc3_.price);
         if((AngryBirdsBase.singleton.dataModel as §,#b§).§%$;§.§5"i§ < _loc4_)
         {
            _loc7_ = (_loc6_ = _loc4_ - (AngryBirdsBase.singleton.dataModel as §,#b§).§%$;§.§5"i§) > 1 ? "coins" : "coin";
            _loc8_ = new NotEnoughCoinsPopup(§'o§.mClip,"Not enough coins!","You need " + _loc6_ + " more " + _loc7_ + " to buy this. \nVisit the Coin Shop now!",§-!S§.NORMAL,§## §.TOP);
            if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc8_.id))
            {
               AngryBirdsBase.singleton.popupManager.§>#g§(_loc8_.id);
            }
            AngryBirdsBase.singleton.popupManager.openPopup(_loc8_);
            return;
         }
         var _loc5_:§>%§;
         (_loc5_ = new §>%§(this.§=#Q§,_loc3_,ID,§+!p§.§`?§.currentLevel.name)).addEventListener(§?!T§.§@!9§,this.§;#r§);
         _loc5_.addEventListener(§?!T§.§'?§,this.§3$E§);
      }
      
      protected function §;#r§(param1:§?!T§) : void
      {
         var _loc2_:§>%§ = param1.currentTarget as §>%§;
         _loc2_.removeEventListener(§?!T§.§@!9§,this.§;#r§);
         §'@§.trackPageView(this,§'@§.§0#6§);
         §'@§.trackTransaction(_loc2_.orderId,§`-§,_loc2_.§"^§.id,_loc2_.§"^§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         Number(_loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price));
         §!",§.§3"1§.§,"&§();
         this.§0!x§(true);
         dispatchEvent(new § ![§(§ ![§.§=K§,_loc2_.§"^§.id));
         close();
      }
      
      protected function §3$E§(param1:§?!T§) : void
      {
         §!",§.§3"1§.§,"&§();
         this.§0!x§(true);
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§-!S§.§ !^§,§## §.TOP,param1.errorMessage,param1.§8!o§));
      }
      
      private function §>#q§(param1:Event) : void
      {
         this.§0!x§(false);
         close();
      }
      
      private function §?0§() : void
      {
         if(this.§>!b§ || §[$%§ || !§'o§)
         {
            return;
         }
         §'o§.mClip.TargetedOfferLoading.visible = true;
         §'o§.mClip.TargetedOfferButton.visible = false;
         this.§,8§(false);
         this.§>!b§ = new §5"f§();
         this.§>!b§.addEventListener(Event.COMPLETE,this.§9!J§);
         this.§>!b§.addEventListener(ErrorEvent.ERROR,this.onError);
         this.§>!b§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>!b§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/targetedoffer");
         this.§>!b§.load(_loc1_);
      }
      
      private function §9!J§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§,#b§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§1!^§ = null;
         if(this.§>!b§)
         {
            this.§>!b§.removeEventListener(Event.COMPLETE,this.§9!J§);
            this.§>!b§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§>!b§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>!b§ = null;
         }
         if(!§'o§)
         {
            return;
         }
         §=!k§ = param1.target.data;
         this.§^!G§();
         if(§=!k§ && §=!k§.items)
         {
            for each(_loc2_ in §=!k§.items)
            {
               if(_loc2_.id == "VirtualCurrency")
               {
                  this.§=#x§("VirtualCurrencyQuantity","" + _loc2_.q);
               }
               else if(_loc5_ = §<$B§.§-"N§(_loc2_.id))
               {
                  this.§=#x§("PowerupQuantity","x" + _loc2_.q);
                  this.§`#n§(_loc5_.§=#@§);
               }
            }
            _loc3_ = AngryBirdsBase.singleton.dataModel as §,#b§;
            this.§=#x§("prc",_loc3_.currencyModel.getPriceTag(§=!k§.prc,true,"",§=!k§.cur));
            §'o§.mClip.TargetedOfferLoading.visible = false;
            §'o§.mClip.TargetedOfferButton.visible = true;
            if(§=!k§.pcd)
            {
               this.§,8§(true);
               §'o§.mClip.TargetedOfferButton.enabled = false;
               §'o§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§[V§);
            }
            else
            {
               this.§,8§(false);
               §'o§.mClip.TargetedOfferButton.enabled = true;
               if(!§'o§.mClip.TargetedOfferButton.hasEventListener(MouseEvent.CLICK))
               {
                  §'o§.mClip.TargetedOfferButton.addEventListener(MouseEvent.CLICK,this.§[V§);
               }
            }
            if((_loc4_ = §=!k§.rfs * 1000 - new Date().time) < 1000)
            {
               _loc4_ = 1000;
            }
            this.§1F§ = new Timer(_loc4_,1);
            this.§1F§.addEventListener(TimerEvent.TIMER,this.§^j§);
            this.§1F§.start();
         }
         else
         {
            §'o§.mClip.TargetedOfferButton.visible = false;
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Contextual offer loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §=#x§(param1:String, param2:String) : void
      {
         var _loc3_:DisplayObjectContainer = §'o§.mClip.TargetedOfferButton.upState as DisplayObjectContainer;
         (_loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §'o§.mClip.TargetedOfferButton.overState;
         (_loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §'o§.mClip.TargetedOfferButton.downState;
         (_loc3_.getChildByName(param1) as TextField).text = param2;
      }
      
      private function §`#n§(param1:String) : void
      {
         var _loc2_:DisplayObjectContainer = §'o§.mClip.TargetedOfferButton.upState;
         var _loc3_:MovieClip = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §'o§.mClip.TargetedOfferButton.overState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §'o§.mClip.TargetedOfferButton.downState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
      }
      
      private function §,8§(param1:Boolean) : void
      {
         §'o§.mClip.purchasedIcon.visible = param1;
      }
      
      private function §[V§(param1:MouseEvent) : void
      {
         var _loc2_:§8#E§ = null;
         var _loc3_:§>"`§ = null;
         if(!§[$%§ && !this.§>!b§ && §=!k§)
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §[$%§ = true;
            if(this.§%"h§)
            {
               this.§%"h§.removeEventListeners();
               this.§%"h§ = null;
            }
            _loc2_ = new §8#E§(§=!k§.cid,[],false,§=!k§.cur,§=!k§.ogo);
            _loc3_ = new §>"`§(1,0,§=!k§.prc);
            this.§%"h§ = new §>-§(_loc2_,_loc3_,§>-§.§,! §,ID);
            this.§%"h§.addEventListener(§?!T§.§0"Z§,this.§&!R§);
            this.§%"h§.addEventListener(§?!T§.§'?§,this.§]&§);
            this.§%"h§.addEventListener(§>-§.§2Z§,this.§&!R§);
         }
      }
      
      private function §&!R§(param1:Event) : void
      {
         §[$%§ = false;
         this.§?0§();
      }
      
      private function §]&§(param1:§?!T§) : void
      {
         var _loc2_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP,param1.errorMessage,param1.§8!o§,param1.errorCode.toString(),false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §[$%§ = false;
      }
      
      private function §^j§(param1:TimerEvent) : void
      {
         if(this.§1F§)
         {
            this.§^!G§();
            this.§?0§();
         }
      }
      
      private function §^!G§() : void
      {
         if(this.§1F§)
         {
            this.§1F§.stop();
            this.§1F§.removeEventListener(TimerEvent.TIMER,this.§^j§);
            this.§1F§ = null;
         }
      }
   }
}
