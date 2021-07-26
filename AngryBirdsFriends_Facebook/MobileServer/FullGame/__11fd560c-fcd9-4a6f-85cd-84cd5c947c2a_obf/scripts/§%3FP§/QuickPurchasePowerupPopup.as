package §?P§
{
   import § %§.§1Q§;
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §&"`§.§<7§;
   import §&$!§.§##a§;
   import §&$!§.§%#k§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §0#m§.§8#§;
   import §1!=§.§%#;§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §1"N§.§""X§;
   import §1"N§.§4k§;
   import §2"5§.§1"?§;
   import §2"5§.§6"^§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §;#D§.§3#U§;
   import §<h§.§%M§;
   import §<h§.§@N§;
   import §=!,§.§1!l§;
   import §@!M§.§!"p§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §[#[§.§=#Q§;
   import §`7§.§ try§;
   import §`7§.§!"b§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import com.rovio.assets.§!"f§;
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
   
   public class QuickPurchasePowerupPopup extends AbstractPopup implements §8#§, §7E§, §9#a§
   {
      
      private static const §'i§:int = 4;
      
      public static const ID:String = "QuickPurchasePowerupPopup";
      
      private static const §>E§:String = "Quick Purchase Powerup";
      
      private static var §#"§:Object;
      
      private static var §@"h§:Boolean;
       
      
      private var §!!b§:§"#x§;
      
      private var §%!y§:§##a§;
      
      private var §&"K§:Wallet;
      
      private var §@!e§:§1!l§;
      
      private var §@#a§:§1"V§;
      
      private var §+#v§:§4k§;
      
      private var §["d§:Timer;
      
      public function QuickPurchasePowerupPopup(param1:MovieClip, param2:§"#x§, param3:§##a§)
      {
         super(§]"$§.NORMAL,§^"U§.TOP,§1Q§.§5T§.Views.PopupView_QuickPurchasePowerupPopup[0],ID);
         this.§%!y§ = param3;
         this.§!!b§ = param2;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:String = null;
         var _loc4_:§##P§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:§@N§ = null;
         var _loc8_:§@N§ = null;
         super.show(param1);
         this.§4#%§();
         (§,#2§.getItemByName("TextField_Header") as §%M§).setText(this.§%!y§.§9§);
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         switch(this.§!!b§.id)
         {
            case §%#k§.§""z§.§5"g§:
               _loc2_ = "SuperSeedsIcon";
               break;
            case §%#k§.§'"!§.§5"g§:
               _loc2_ = "KingSlingIcon";
               break;
            case §%#k§.§'!N§.§5"g§:
               _loc2_ = "BoomboxIcon";
               break;
            case §%#k§.§0"W§.§5"g§:
               _loc2_ = "SlingScopeIcon";
               break;
            case §%#k§.§6`§.§5"g§:
               _loc2_ = "BirdQuakeIcon";
               break;
            case §%#k§.§6"t§.§5"g§:
               _loc2_ = "ExtraBirdIcon";
               break;
            case §%#k§.§@#l§.§5"g§:
               _loc2_ = "MushroomIcon";
               break;
            case §%#k§.§]k§.§5"g§:
               _loc2_ = "MightyEagleIcon";
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§!!b§.§?" §())
         {
            if(_loc3_ >= §'i§)
            {
               break;
            }
            _loc4_ = this.§!!b§.getPricePoint(_loc3_);
            if(_loc2_)
            {
               _loc6_ = new (_loc5_ = §!"f§.§##?§(_loc2_))();
               _loc6_.scaleX = _loc6_.scaleY = _loc6_.scaleY * 2;
               (§,#2§.getItemByName("Tab_icon_" + (_loc3_ + 1)) as §@N§).mClip.addChild(_loc6_);
            }
            (§,#2§.getItemByName("Tab_quantity_" + (_loc3_ + 1)) as §%M§).setText(§<7§.MULTIPLIER_STRING + §!"b§.§@]§(_loc4_.totalQuantity));
            if(_loc4_.§&!m§ > 0)
            {
               ((_loc7_ = §,#2§.getItemByName("Tab_extra_" + (_loc3_ + 1)) as §@N§).mClip.getChildByName("txtAmount") as TextField).text = "" + _loc4_.§&!m§;
            }
            if(_loc4_.campaignPrice > 0)
            {
               §,#2§.mClip["Tab_button_" + (_loc3_ + 1)].visible = false;
               this.§,a§("" + _loc4_.campaignPrice,"Tab_offer_button_" + (_loc3_ + 1),"" + _loc4_.price);
               ((_loc8_ = §,#2§.getItemByName("Tab_offer_" + (_loc3_ + 1)) as §@N§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc4_.campaignSalePercentage + "%";
               §,#2§.mClip["Tab_offer_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§9#L§);
            }
            else
            {
               §,#2§.mClip["Tab_offer_button_" + (_loc3_ + 1)].visible = false;
               this.§,a§("" + _loc4_.price,"Tab_button_" + (_loc3_ + 1));
               §,#2§.mClip["Tab_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§9#L§);
            }
            _loc3_++;
         }
         this.§`!J§();
         this.§0Q§(true);
         §=#Q§.§"!8§(this.§!!b§);
         this.§@!e§ = §1!l§.§6!§;
         this.§@!e§.addEventListener(§1!l§.§>#,§,this.§'"r§);
         § try§.§!!t§().§%"?§("QUICK_PURCHASE_POWERUP_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§!!b§.§?" §())
         {
            if(_loc3_ >= §'i§)
            {
               break;
            }
            §,#2§.mClip["Tab_offer_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§9#L§);
            §,#2§.mClip["Tab_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§9#L§);
            _loc3_++;
         }
         this.§@!e§.removeEventListener(§1!l§.§>#,§,this.§'"r§);
         this.§@!e§ = null;
         if(this.§@#a§)
         {
            this.§@#a§.removeEventListener(Event.COMPLETE,this.§%!$§);
            this.§@#a§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§@#a§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§@#a§ = null;
         }
         §,#2§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§@!s§);
         §#"§ = null;
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
         this.§1D§();
         super.hide(param1);
      }
      
      private function §`!J§() : void
      {
         this.§[?§(new Wallet(this,true,true));
         this.§&"K§.§=#-§.visible = true;
         this.§&"K§.setCoinsAmountText(§#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§);
      }
      
      private function §0Q§(param1:Boolean) : void
      {
         var _loc3_:§##P§ = null;
         if(!§,#2§)
         {
            return;
         }
         §,#2§.mClip.mouseEnabled = param1;
         §,#2§.mClip.mouseChildren = param1;
         var _loc2_:int = 1;
         while(_loc2_ <= §'i§)
         {
            §,#2§.getItemByName("Tab_quantity_" + _loc2_).visible = param1;
            §,#2§.getItemByName("Tab_icon_" + _loc2_).visible = param1;
            §,#2§.mClip.getChildByName("Tab_button_" + _loc2_).visible = param1;
            §,#2§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = param1;
            _loc3_ = this.§!!b§.getPricePoint(_loc2_ - 1);
            if(_loc3_)
            {
               if(_loc3_.campaignPrice && _loc3_.campaignPrice > 0)
               {
                  §,#2§.getItemByName("Tab_extra_" + _loc2_).visible = false;
                  §,#2§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
                  §,#2§.getItemByName("Tab_offer_" + _loc2_).visible = param1;
               }
               else
               {
                  §,#2§.getItemByName("Tab_extra_" + _loc2_).visible = _loc3_.§&!m§ > 0 && param1;
                  §,#2§.getItemByName("Tab_offer_" + _loc2_).visible = false;
                  §,#2§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
               }
            }
            else
            {
               §,#2§.getItemByName("Tab_extra_" + _loc2_).visible = false;
               §,#2§.getItemByName("Tab_offer_" + _loc2_).visible = false;
               §,#2§.getItemByName("Tab_quantity_" + _loc2_).visible = false;
               §,#2§.getItemByName("Tab_icon_" + _loc2_).visible = false;
               §,#2§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
               §,#2§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
            }
            _loc2_++;
         }
         (§,#2§.getItemByName("MovieClip_LoadingImage") as §@N§).setVisibility(!param1);
      }
      
      public function §+#k§() : String
      {
         return ID;
      }
      
      public function §!3§() : String
      {
         return §`"x§.§[$6§;
      }
      
      public function §0'§() : String
      {
         return §`"x§.§,!y§;
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§,#2§)
         {
            return §,#2§.getItemByName("walletContainer").mClip;
         }
         return null;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §,a§(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:DisplayObjectContainer = §,#2§.mClip[param2].upState as DisplayObjectContainer;
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
         _loc4_ = §,#2§.mClip[param2].overState as DisplayObjectContainer;
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
         _loc4_ = §,#2§.mClip[param2].downState as DisplayObjectContainer;
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
      
      private function §9#L§(param1:MouseEvent) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:§%#;§ = null;
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§0Q§(false);
         var _loc2_:int = int(param1.target.name.charAt(param1.target.name.length - 1)) - 1;
         var _loc3_:§##P§ = this.§!!b§.getPricePoint(_loc2_);
         var _loc4_:Number = _loc3_.campaignPrice > 0 ? Number(_loc3_.campaignPrice) : Number(_loc3_.price);
         if((AngryBirdsBase.singleton.dataModel as §#"8§).§""[§.§##!§ < _loc4_)
         {
            _loc7_ = (_loc6_ = int(_loc4_ - (AngryBirdsBase.singleton.dataModel as §#"8§).§""[§.§##!§)) > 1 ? "coins" : "coin";
            _loc8_ = new NotEnoughCoinsPopup(§,#2§.mClip,"Not enough coins!","You need " + _loc6_ + " more " + _loc7_ + " to buy this. \nVisit the Coin Shop now!",§]"$§.NORMAL,§^"U§.TOP);
            if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc8_.id))
            {
               AngryBirdsBase.singleton.popupManager.§""^§(_loc8_.id);
            }
            AngryBirdsBase.singleton.popupManager.openPopup(_loc8_);
            return;
         }
         var _loc5_:§""X§;
         (_loc5_ = new §""X§(this.§!!b§,_loc3_,ID,§3#U§.§#$4§.currentLevel.name)).addEventListener(§1"?§.§=#j§,this.§@!J§);
         _loc5_.addEventListener(§1"?§.§^#M§,this.§+$8§);
      }
      
      protected function §@!J§(param1:§1"?§) : void
      {
         var _loc2_:§""X§ = param1.currentTarget as §""X§;
         _loc2_.removeEventListener(§1"?§.§=#j§,this.§@!J§);
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         §`"x§.trackTransaction(_loc2_.orderId,§>E§,_loc2_.§2"X§.id,_loc2_.§2"X§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         var _loc3_:Number = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
         §-#+§.§6!§.§<"k§();
         this.§0Q§(true);
         dispatchEvent(new §6"^§(§6"^§.§3!<§,_loc2_.§2"X§.id));
         close();
      }
      
      protected function §+$8§(param1:§1"?§) : void
      {
         §-#+§.§6!§.§<"k§();
         this.§0Q§(true);
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§]"$§.§[#=§,§^"U§.TOP,param1.errorMessage,param1.§%C§));
      }
      
      private function §'"r§(param1:Event) : void
      {
         this.§0Q§(false);
         close();
      }
      
      private function §4#%§() : void
      {
         if(this.§@#a§ || §@"h§ || !§,#2§)
         {
            return;
         }
         §,#2§.mClip.TargetedOfferLoading.visible = true;
         §,#2§.mClip.TargetedOfferButton.visible = false;
         this.§0#M§(false);
         this.§@#a§ = new §1"V§();
         this.§@#a§.addEventListener(Event.COMPLETE,this.§%!$§);
         this.§@#a§.addEventListener(ErrorEvent.ERROR,this.onError);
         this.§@#a§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§@#a§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/targetedoffer");
         this.§@#a§.load(_loc1_);
      }
      
      private function §%!$§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§#"8§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§##a§ = null;
         if(this.§@#a§)
         {
            this.§@#a§.removeEventListener(Event.COMPLETE,this.§%!$§);
            this.§@#a§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§@#a§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§@#a§ = null;
         }
         if(!§,#2§)
         {
            return;
         }
         §#"§ = param1.target.data;
         this.§1D§();
         if(§#"§ && §#"§.items)
         {
            for each(_loc2_ in §#"§.items)
            {
               if(_loc2_.id == "VirtualCurrency")
               {
                  this.§4z§("VirtualCurrencyQuantity","" + _loc2_.q);
               }
               else if(_loc5_ = §%#k§.§62§(_loc2_.id))
               {
                  this.§4z§("PowerupQuantity","x" + _loc2_.q);
                  this.§5!B§(_loc5_.§5"g§);
               }
            }
            _loc3_ = AngryBirdsBase.singleton.dataModel as §#"8§;
            this.§4z§("prc",_loc3_.currencyModel.getPriceTag(§#"§.prc,true,"",§#"§.cur));
            §,#2§.mClip.TargetedOfferLoading.visible = false;
            §,#2§.mClip.TargetedOfferButton.visible = true;
            if(§#"§.pcd)
            {
               this.§0#M§(true);
               §,#2§.mClip.TargetedOfferButton.enabled = false;
               §,#2§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§@!s§);
            }
            else
            {
               this.§0#M§(false);
               §,#2§.mClip.TargetedOfferButton.enabled = true;
               if(!§,#2§.mClip.TargetedOfferButton.hasEventListener(MouseEvent.CLICK))
               {
                  §,#2§.mClip.TargetedOfferButton.addEventListener(MouseEvent.CLICK,this.§@!s§);
               }
            }
            if((_loc4_ = §#"§.rfs * 1000 - new Date().time) < 1000)
            {
               _loc4_ = 1000;
            }
            this.§["d§ = new Timer(_loc4_,1);
            this.§["d§.addEventListener(TimerEvent.TIMER,this.§-!y§);
            this.§["d§.start();
         }
         else
         {
            §,#2§.mClip.TargetedOfferButton.visible = false;
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Contextual offer loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §4z§(param1:String, param2:String) : void
      {
         var _loc3_:DisplayObjectContainer = §,#2§.mClip.TargetedOfferButton.upState as DisplayObjectContainer;
         var _loc4_:TextField;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §,#2§.mClip.TargetedOfferButton.overState;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §,#2§.mClip.TargetedOfferButton.downState;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
      }
      
      private function §5!B§(param1:String) : void
      {
         var _loc2_:DisplayObjectContainer = §,#2§.mClip.TargetedOfferButton.upState;
         var _loc3_:MovieClip = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §,#2§.mClip.TargetedOfferButton.overState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §,#2§.mClip.TargetedOfferButton.downState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
      }
      
      private function §0#M§(param1:Boolean) : void
      {
         §,#2§.mClip.purchasedIcon.visible = param1;
      }
      
      private function §@!s§(param1:MouseEvent) : void
      {
         var _loc2_:§"#x§ = null;
         var _loc3_:§##P§ = null;
         if(!§@"h§ && !this.§@#a§ && §#"§)
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §@"h§ = true;
            if(this.§+#v§)
            {
               this.§+#v§.removeEventListeners();
               this.§+#v§ = null;
            }
            _loc2_ = new §"#x§(§#"§.cid,[],false,§#"§.cur,§#"§.ogo);
            _loc3_ = new §##P§(1,0,§#"§.prc);
            this.§+#v§ = new §4k§(_loc2_,_loc3_,§4k§.§4!c§,ID);
            this.§+#v§.addEventListener(§1"?§.§7"^§,this.§["a§);
            this.§+#v§.addEventListener(§1"?§.§^#M§,this.§]!n§);
            this.§+#v§.addEventListener(§4k§.§-s§,this.§["a§);
         }
      }
      
      private function §["a§(param1:Event) : void
      {
         §@"h§ = false;
         this.§4#%§();
      }
      
      private function §]!n§(param1:§1"?§) : void
      {
         var _loc2_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP,param1.errorMessage,param1.§%C§,param1.errorCode.toString(),false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §@"h§ = false;
      }
      
      private function §-!y§(param1:TimerEvent) : void
      {
         if(this.§["d§)
         {
            this.§1D§();
            this.§4#%§();
         }
      }
      
      private function §1D§() : void
      {
         if(this.§["d§)
         {
            this.§["d§.stop();
            this.§["d§.removeEventListener(TimerEvent.TIMER,this.§-!y§);
            this.§["d§ = null;
         }
      }
   }
}
