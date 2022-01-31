package §>z§
{
   import § §.§%e§;
   import § §.§2"O§;
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§'!`§;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §&!_§.§9#%§;
   import §-;§.§+"d§;
   import §-;§.§<K§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §5" §.§2$0§;
   import §5" §.§5u§;
   import §5" §.§=n§;
   import §6#f§.§<!M§;
   import §6t§.§4?§;
   import §6t§.§^"b§;
   import §8#K§.§3Z§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
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
   
   public class QuickPurchasePowerupPopup extends AbstractPopup implements §%!#§, §,!n§, §&>§
   {
      
      private static const §'!h§:int = 4;
      
      public static const ID:String = "QuickPurchasePowerupPopup";
      
      private static const §5$,§:String = "Quick Purchase Powerup";
      
      private static var §5&§:Object;
      
      private static var §31§:Boolean;
       
      
      private var §3$@§:§=n§;
      
      private var §%!U§:§<K§;
      
      private var §1!B§:Wallet;
      
      private var §->§:§<!M§;
      
      private var §?!g§:§!!o§;
      
      private var §""2§:§%e§;
      
      private var §5#V§:Timer;
      
      public function QuickPurchasePowerupPopup(param1:MovieClip, param2:§=n§, param3:§<K§)
      {
         super(§#"l§.NORMAL,§]"Y§.TOP,§?l§.§3m§.Views.PopupView_QuickPurchasePowerupPopup[0],ID);
         this.§%!U§ = param3;
         this.§3$@§ = param2;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:String = null;
         var _loc4_:§5u§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:§'!`§ = null;
         var _loc8_:§'!`§ = null;
         super.show(param1);
         this.§0#d§();
         (§&!M§.getItemByName("TextField_Header") as §`"$§).setText(this.§%!U§.§ #=§);
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         switch(this.§3$@§.id)
         {
            case §+"d§.§1J§.§1#7§:
               _loc2_ = "SuperSeedsIcon";
               break;
            case §+"d§.§[p§.§1#7§:
               _loc2_ = "KingSlingIcon";
               break;
            case §+"d§.§?"$§.§1#7§:
               _loc2_ = "BoomboxIcon";
               break;
            case §+"d§.§#T§.§1#7§:
               _loc2_ = "SlingScopeIcon";
               break;
            case §+"d§.§&!w§.§1#7§:
               _loc2_ = "BirdQuakeIcon";
               break;
            case §+"d§.§]#_§.§1#7§:
               _loc2_ = "ExtraBirdIcon";
               break;
            case §+"d§.§,!$§.§1#7§:
               _loc2_ = "MushroomIcon";
               break;
            case §+"d§.§ !T§.§1#7§:
               _loc2_ = "MightyEagleIcon";
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§3$@§.§^#G§())
         {
            if(_loc3_ >= §'!h§)
            {
               break;
            }
            _loc4_ = this.§3$@§.getPricePoint(_loc3_);
            if(_loc2_)
            {
               _loc6_ = new (_loc5_ = §6$A§.§1!m§(_loc2_))();
               _loc6_.scaleX = _loc6_.scaleY = _loc6_.scaleY * 2;
               (§&!M§.getItemByName("Tab_icon_" + (_loc3_ + 1)) as §'!`§).mClip.addChild(_loc6_);
            }
            (§&!M§.getItemByName("Tab_quantity_" + (_loc3_ + 1)) as §`"$§).setText(§2$0§.MULTIPLIER_STRING + §9#%§.§##W§(_loc4_.totalQuantity));
            if(_loc4_.§^!B§ > 0)
            {
               ((_loc7_ = §&!M§.getItemByName("Tab_extra_" + (_loc3_ + 1)) as §'!`§).mClip.getChildByName("txtAmount") as TextField).text = "" + _loc4_.§^!B§;
            }
            if(_loc4_.campaignPrice > 0)
            {
               §&!M§.mClip["Tab_button_" + (_loc3_ + 1)].visible = false;
               this.§5`§("" + _loc4_.campaignPrice,"Tab_offer_button_" + (_loc3_ + 1),"" + _loc4_.price);
               ((_loc8_ = §&!M§.getItemByName("Tab_offer_" + (_loc3_ + 1)) as §'!`§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc4_.campaignSalePercentage + "%";
               §&!M§.mClip["Tab_offer_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§&#^§);
            }
            else
            {
               §&!M§.mClip["Tab_offer_button_" + (_loc3_ + 1)].visible = false;
               this.§5`§("" + _loc4_.price,"Tab_button_" + (_loc3_ + 1));
               §&!M§.mClip["Tab_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§&#^§);
            }
            _loc3_++;
         }
         this.§=3§();
         this.§+$;§(true);
         §;"x§.§,!]§(this.§3$@§);
         this.§->§ = §<!M§.§`"H§;
         this.§->§.addEventListener(§<!M§.§"! §,this.§>#§);
         §!!K§.§%#S§().§""o§("QUICK_PURCHASE_POWERUP_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§3$@§.§^#G§())
         {
            if(_loc3_ >= §'!h§)
            {
               break;
            }
            §&!M§.mClip["Tab_offer_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§&#^§);
            §&!M§.mClip["Tab_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§&#^§);
            _loc3_++;
         }
         this.§->§.removeEventListener(§<!M§.§"! §,this.§>#§);
         this.§->§ = null;
         if(this.§?!g§)
         {
            this.§?!g§.removeEventListener(Event.COMPLETE,this.§^!y§);
            this.§?!g§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§?!g§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§?!g§ = null;
         }
         §&!M§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§%"c§);
         §5&§ = null;
         if(this.§""2§)
         {
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
         this.§6";§();
         super.hide(param1);
      }
      
      private function §=3§() : void
      {
         this.§0!A§(new Wallet(this,true,true));
         this.§1!B§.§+F§.visible = true;
         this.§1!B§.setCoinsAmountText(§4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§);
      }
      
      private function §+$;§(param1:Boolean) : void
      {
         var _loc3_:§5u§ = null;
         if(!§&!M§)
         {
            return;
         }
         §&!M§.mClip.mouseEnabled = param1;
         §&!M§.mClip.mouseChildren = param1;
         var _loc2_:int = 1;
         while(_loc2_ <= §'!h§)
         {
            §&!M§.getItemByName("Tab_quantity_" + _loc2_).visible = param1;
            §&!M§.getItemByName("Tab_icon_" + _loc2_).visible = param1;
            §&!M§.mClip.getChildByName("Tab_button_" + _loc2_).visible = param1;
            §&!M§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = param1;
            _loc3_ = this.§3$@§.getPricePoint(_loc2_ - 1);
            if(_loc3_)
            {
               if(_loc3_.campaignPrice && _loc3_.campaignPrice > 0)
               {
                  §&!M§.getItemByName("Tab_extra_" + _loc2_).visible = false;
                  §&!M§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
                  §&!M§.getItemByName("Tab_offer_" + _loc2_).visible = param1;
               }
               else
               {
                  §&!M§.getItemByName("Tab_extra_" + _loc2_).visible = _loc3_.§^!B§ > 0 && param1;
                  §&!M§.getItemByName("Tab_offer_" + _loc2_).visible = false;
                  §&!M§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
               }
            }
            else
            {
               §&!M§.getItemByName("Tab_extra_" + _loc2_).visible = false;
               §&!M§.getItemByName("Tab_offer_" + _loc2_).visible = false;
               §&!M§.getItemByName("Tab_quantity_" + _loc2_).visible = false;
               §&!M§.getItemByName("Tab_icon_" + _loc2_).visible = false;
               §&!M§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
               §&!M§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
            }
            _loc2_++;
         }
         (§&!M§.getItemByName("MovieClip_LoadingImage") as §'!`§).setVisibility(!param1);
      }
      
      public function §+"-§() : String
      {
         return ID;
      }
      
      public function §;!=§() : String
      {
         return §0I§.§!#O§;
      }
      
      public function §#"!§() : String
      {
         return §0I§.§`#7§;
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§&!M§)
         {
            return §&!M§.getItemByName("walletContainer").mClip;
         }
         return null;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §5`§(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:DisplayObjectContainer = §&!M§.mClip[param2].upState as DisplayObjectContainer;
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
         _loc4_ = §&!M§.mClip[param2].overState as DisplayObjectContainer;
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
         _loc4_ = §&!M§.mClip[param2].downState as DisplayObjectContainer;
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
      
      private function §&#^§(param1:MouseEvent) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:§5!-§ = null;
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§+$;§(false);
         var _loc2_:int = int(param1.target.name.charAt(param1.target.name.length - 1)) - 1;
         var _loc3_:§5u§ = this.§3$@§.getPricePoint(_loc2_);
         var _loc4_:Number = _loc3_.campaignPrice > 0 ? Number(_loc3_.campaignPrice) : Number(_loc3_.price);
         if((AngryBirdsBase.singleton.dataModel as §4!Q§).§1W§.§<B§ < _loc4_)
         {
            _loc7_ = (_loc6_ = _loc4_ - (AngryBirdsBase.singleton.dataModel as §4!Q§).§1W§.§<B§) > 1 ? "coins" : "coin";
            _loc8_ = new NotEnoughCoinsPopup(§&!M§.mClip,"Not enough coins!","You need " + _loc6_ + " more " + _loc7_ + " to buy this. \nVisit the Coin Shop now!",§#"l§.NORMAL,§]"Y§.TOP);
            if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc8_.id))
            {
               AngryBirdsBase.singleton.popupManager.§7$9§(_loc8_.id);
            }
            AngryBirdsBase.singleton.popupManager.openPopup(_loc8_);
            return;
         }
         var _loc5_:§2"O§;
         (_loc5_ = new §2"O§(this.§3$@§,_loc3_,ID,§7n§.§6#K§.currentLevel.name)).addEventListener(§4?§.§?w§,this.§%$#§);
         _loc5_.addEventListener(§4?§.§3$2§,this.§2#J§);
      }
      
      protected function §%$#§(param1:§4?§) : void
      {
         var _loc2_:§2"O§ = param1.currentTarget as §2"O§;
         _loc2_.removeEventListener(§4?§.§?w§,this.§%$#§);
         §0I§.trackPageView(this,§0I§.§'#u§);
         §0I§.trackTransaction(_loc2_.orderId,§5$,§,_loc2_.§6!-§.id,_loc2_.§6!-§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         var _loc3_:Number = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
         § $?§.§`"H§.§-!P§();
         this.§+$;§(true);
         dispatchEvent(new §^"b§(§^"b§.§"&§,_loc2_.§6!-§.id));
         close();
      }
      
      protected function §2#J§(param1:§4?§) : void
      {
         § $?§.§`"H§.§-!P§();
         this.§+$;§(true);
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP,param1.errorMessage,param1.§5I§));
      }
      
      private function §>#§(param1:Event) : void
      {
         this.§+$;§(false);
         close();
      }
      
      private function §0#d§() : void
      {
         if(this.§?!g§ || §31§ || !§&!M§)
         {
            return;
         }
         §&!M§.mClip.TargetedOfferLoading.visible = true;
         §&!M§.mClip.TargetedOfferButton.visible = false;
         this.§7!G§(false);
         this.§?!g§ = new §!!o§();
         this.§?!g§.addEventListener(Event.COMPLETE,this.§^!y§);
         this.§?!g§.addEventListener(ErrorEvent.ERROR,this.onError);
         this.§?!g§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§?!g§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/targetedoffer");
         this.§?!g§.load(_loc1_);
      }
      
      private function §^!y§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§4!Q§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§<K§ = null;
         if(this.§?!g§)
         {
            this.§?!g§.removeEventListener(Event.COMPLETE,this.§^!y§);
            this.§?!g§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§?!g§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§?!g§ = null;
         }
         if(!§&!M§)
         {
            return;
         }
         §5&§ = param1.target.data;
         this.§6";§();
         if(§5&§ && §5&§.items)
         {
            for each(_loc2_ in §5&§.items)
            {
               if(_loc2_.id == "VirtualCurrency")
               {
                  this.§8#&§("VirtualCurrencyQuantity","" + _loc2_.q);
               }
               else if(_loc5_ = §+"d§.§,!c§(_loc2_.id))
               {
                  this.§8#&§("PowerupQuantity","x" + _loc2_.q);
                  this.§-!v§(_loc5_.§1#7§);
               }
            }
            _loc3_ = AngryBirdsBase.singleton.dataModel as §4!Q§;
            this.§8#&§("prc",_loc3_.currencyModel.getPriceTag(§5&§.prc,true,"",§5&§.cur));
            §&!M§.mClip.TargetedOfferLoading.visible = false;
            §&!M§.mClip.TargetedOfferButton.visible = true;
            if(§5&§.pcd)
            {
               this.§7!G§(true);
               §&!M§.mClip.TargetedOfferButton.enabled = false;
               §&!M§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§%"c§);
            }
            else
            {
               this.§7!G§(false);
               §&!M§.mClip.TargetedOfferButton.enabled = true;
               if(!§&!M§.mClip.TargetedOfferButton.hasEventListener(MouseEvent.CLICK))
               {
                  §&!M§.mClip.TargetedOfferButton.addEventListener(MouseEvent.CLICK,this.§%"c§);
               }
            }
            if((_loc4_ = §5&§.rfs * 1000 - new Date().time) < 1000)
            {
               _loc4_ = 1000;
            }
            this.§5#V§ = new Timer(_loc4_,1);
            this.§5#V§.addEventListener(TimerEvent.TIMER,this.§1@§);
            this.§5#V§.start();
         }
         else
         {
            §&!M§.mClip.TargetedOfferButton.visible = false;
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Contextual offer loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §8#&§(param1:String, param2:String) : void
      {
         var _loc3_:DisplayObjectContainer = §&!M§.mClip.TargetedOfferButton.upState as DisplayObjectContainer;
         var _loc4_:TextField;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §&!M§.mClip.TargetedOfferButton.overState;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §&!M§.mClip.TargetedOfferButton.downState;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
      }
      
      private function §-!v§(param1:String) : void
      {
         var _loc2_:DisplayObjectContainer = §&!M§.mClip.TargetedOfferButton.upState;
         var _loc3_:MovieClip = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §&!M§.mClip.TargetedOfferButton.overState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §&!M§.mClip.TargetedOfferButton.downState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
      }
      
      private function §7!G§(param1:Boolean) : void
      {
         §&!M§.mClip.purchasedIcon.visible = param1;
      }
      
      private function §%"c§(param1:MouseEvent) : void
      {
         var _loc2_:§=n§ = null;
         var _loc3_:§5u§ = null;
         if(!§31§ && !this.§?!g§ && §5&§)
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §31§ = true;
            if(this.§""2§)
            {
               this.§""2§.removeEventListeners();
               this.§""2§ = null;
            }
            _loc2_ = new §=n§(§5&§.cid,[],false,§5&§.cur,§5&§.ogo);
            _loc3_ = new §5u§(1,0,§5&§.prc);
            this.§""2§ = new §%e§(_loc2_,_loc3_,§%e§.§1#S§,ID);
            this.§""2§.addEventListener(§4?§.§3!b§,this.§1#o§);
            this.§""2§.addEventListener(§4?§.§3$2§,this.§7#Y§);
            this.§""2§.addEventListener(§%e§.§##"§,this.§1#o§);
         }
      }
      
      private function §1#o§(param1:Event) : void
      {
         §31§ = false;
         this.§0#d§();
      }
      
      private function §7#Y§(param1:§4?§) : void
      {
         var _loc2_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP,param1.errorMessage,param1.§5I§,param1.errorCode.toString(),false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §31§ = false;
      }
      
      private function §1@§(param1:TimerEvent) : void
      {
         if(this.§5#V§)
         {
            this.§6";§();
            this.§0#d§();
         }
      }
      
      private function §6";§() : void
      {
         if(this.§5#V§)
         {
            this.§5#V§.stop();
            this.§5#V§.removeEventListener(TimerEvent.TIMER,this.§1@§);
            this.§5#V§ = null;
         }
      }
   }
}
