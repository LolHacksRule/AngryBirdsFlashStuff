package §?Q§
{
   import § "L§.§"!A§;
   import § "L§.§7`§;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §"N§.§^!r§;
   import §#"4§.§2"M§;
   import §#"4§.§3";§;
   import §#"4§.§6!B§;
   import §#"4§.§<"G§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §3"V§.§ b§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §7"&§.§1k§;
   import §9T§.§ "T§;
   import §9T§.§!#;§;
   import §>#q§.§&!t§;
   import §>#q§.§8#Z§;
   import §?#z§.§]$?§;
   import §[#V§.§%#O§;
   import §[#V§.§1!>§;
   import §`"t§.§7"U§;
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import §`D§.§7#+§;
   import com.rovio.assets.§[a§;
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
   
   public class QuickPurchasePowerupPopup extends AbstractPopup implements §1k§, §2"M§, §+#?§
   {
      
      private static const §@m§:int = 4;
      
      public static const ID:String = "QuickPurchasePowerupPopup";
      
      private static const §&v§:String = "Quick Purchase Powerup";
      
      private static var §99§:Object;
      
      private static var §`!D§:Boolean;
       
      
      private var §@l§:§2_§;
      
      private var §8x§:§!#;§;
      
      private var §"#W§:Wallet;
      
      private var §`#0§:§^!r§;
      
      private var §'!i§:§-$C§;
      
      private var §!!P§:§&!t§;
      
      private var §0!@§:Timer;
      
      public function QuickPurchasePowerupPopup(param1:MovieClip, param2:§2_§, param3:§!#;§)
      {
         super(§@#D§.NORMAL,§5R§.TOP,§false§.§4#;§.Views.PopupView_QuickPurchasePowerupPopup[0],ID);
         this.§8x§ = param3;
         this.§@l§ = param2;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:String = null;
         var _loc4_:§'"j§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:§"!A§ = null;
         var _loc8_:§"!A§ = null;
         super.show(param1);
         this.§-# §();
         (§;#'§.getItemByName("TextField_Header") as §7`§).setText(this.§8x§.§"l§);
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         switch(this.§@l§.id)
         {
            case § "T§.§&!C§.§8t§:
               _loc2_ = "SuperSeedsIcon";
               break;
            case § "T§.§=#x§.§8t§:
               _loc2_ = "KingSlingIcon";
               break;
            case § "T§.§#"9§.§8t§:
               _loc2_ = "BoomboxIcon";
               break;
            case § "T§.§4@§.§8t§:
               _loc2_ = "SlingScopeIcon";
               break;
            case § "T§.§8"8§.§8t§:
               _loc2_ = "BirdQuakeIcon";
               break;
            case § "T§.§7z§.§8t§:
               _loc2_ = "ExtraBirdIcon";
               break;
            case § "T§.§=$%§.§8t§:
               _loc2_ = "MushroomIcon";
               break;
            case § "T§.§="E§.§8t§:
               _loc2_ = "MightyEagleIcon";
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§@l§.§set §())
         {
            if(_loc3_ >= §@m§)
            {
               break;
            }
            _loc4_ = this.§@l§.getPricePoint(_loc3_);
            if(_loc2_)
            {
               _loc6_ = new (_loc5_ = §[a§.§8#k§(_loc2_))();
               _loc6_.scaleX = _loc6_.scaleY = _loc6_.scaleY * 2;
               (§;#'§.getItemByName("Tab_icon_" + (_loc3_ + 1)) as §"!A§).mClip.addChild(_loc6_);
            }
            (§;#'§.getItemByName("Tab_quantity_" + (_loc3_ + 1)) as §7`§).setText(§7#+§.MULTIPLIER_STRING + §6!B§.§^"O§(_loc4_.totalQuantity));
            if(_loc4_.§+"l§ > 0)
            {
               ((_loc7_ = §;#'§.getItemByName("Tab_extra_" + (_loc3_ + 1)) as §"!A§).mClip.getChildByName("txtAmount") as TextField).text = "" + _loc4_.§+"l§;
            }
            if(_loc4_.campaignPrice > 0)
            {
               §;#'§.mClip["Tab_button_" + (_loc3_ + 1)].visible = false;
               this.§?"V§("" + _loc4_.campaignPrice,"Tab_offer_button_" + (_loc3_ + 1),"" + _loc4_.price);
               ((_loc8_ = §;#'§.getItemByName("Tab_offer_" + (_loc3_ + 1)) as §"!A§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc4_.campaignSalePercentage + "%";
               §;#'§.mClip["Tab_offer_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§&"N§);
            }
            else
            {
               §;#'§.mClip["Tab_offer_button_" + (_loc3_ + 1)].visible = false;
               this.§?"V§("" + _loc4_.price,"Tab_button_" + (_loc3_ + 1));
               §;#'§.mClip["Tab_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§&"N§);
            }
            _loc3_++;
         }
         this.§&!J§();
         this.§1!+§(true);
         §7"U§.§5e§(this.§@l§);
         this.§`#0§ = §^!r§.§+!,§;
         this.§`#0§.addEventListener(§^!r§.§0!A§,this.§3!=§);
         §3";§.§#"'§().§0#P§("QUICK_PURCHASE_POWERUP_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§@l§.§set §())
         {
            if(_loc3_ >= §@m§)
            {
               break;
            }
            §;#'§.mClip["Tab_offer_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§&"N§);
            §;#'§.mClip["Tab_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§&"N§);
            _loc3_++;
         }
         this.§`#0§.removeEventListener(§^!r§.§0!A§,this.§3!=§);
         this.§`#0§ = null;
         if(this.§'!i§)
         {
            this.§'!i§.removeEventListener(Event.COMPLETE,this.§!"3§);
            this.§'!i§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§'!i§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§'!i§ = null;
         }
         §;#'§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§?P§);
         §99§ = null;
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
         this.§6!M§();
         super.hide(param1);
      }
      
      private function §&!J§() : void
      {
         this.§6"h§(new Wallet(this,true,true));
         this.§"#W§.§`#8§.visible = true;
         this.§"#W§.setCoinsAmountText(§=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§);
      }
      
      private function §1!+§(param1:Boolean) : void
      {
         var _loc3_:§'"j§ = null;
         if(!§;#'§)
         {
            return;
         }
         §;#'§.mClip.mouseEnabled = param1;
         §;#'§.mClip.mouseChildren = param1;
         var _loc2_:int = 1;
         while(_loc2_ <= §@m§)
         {
            §;#'§.getItemByName("Tab_quantity_" + _loc2_).visible = param1;
            §;#'§.getItemByName("Tab_icon_" + _loc2_).visible = param1;
            §;#'§.mClip.getChildByName("Tab_button_" + _loc2_).visible = param1;
            §;#'§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = param1;
            _loc3_ = this.§@l§.getPricePoint(_loc2_ - 1);
            if(_loc3_)
            {
               if(_loc3_.campaignPrice && _loc3_.campaignPrice > 0)
               {
                  §;#'§.getItemByName("Tab_extra_" + _loc2_).visible = false;
                  §;#'§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
                  §;#'§.getItemByName("Tab_offer_" + _loc2_).visible = param1;
               }
               else
               {
                  §;#'§.getItemByName("Tab_extra_" + _loc2_).visible = _loc3_.§+"l§ > 0 && param1;
                  §;#'§.getItemByName("Tab_offer_" + _loc2_).visible = false;
                  §;#'§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
               }
            }
            else
            {
               §;#'§.getItemByName("Tab_extra_" + _loc2_).visible = false;
               §;#'§.getItemByName("Tab_offer_" + _loc2_).visible = false;
               §;#'§.getItemByName("Tab_quantity_" + _loc2_).visible = false;
               §;#'§.getItemByName("Tab_icon_" + _loc2_).visible = false;
               §;#'§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
               §;#'§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
            }
            _loc2_++;
         }
         (§;#'§.getItemByName("MovieClip_LoadingImage") as §"!A§).setVisibility(!param1);
      }
      
      public function §6#n§() : String
      {
         return ID;
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§7"'§;
      }
      
      public function §4!G§() : String
      {
         return §<"G§.§2!o§;
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§;#'§)
         {
            return §;#'§.getItemByName("walletContainer").mClip;
         }
         return null;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §?"V§(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:DisplayObjectContainer = §;#'§.mClip[param2].upState as DisplayObjectContainer;
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
         _loc4_ = §;#'§.mClip[param2].overState as DisplayObjectContainer;
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
         _loc4_ = §;#'§.mClip[param2].downState as DisplayObjectContainer;
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
      
      private function §&"N§(param1:MouseEvent) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:§,#@§ = null;
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§1!+§(false);
         var _loc2_:int = int(param1.target.name.charAt(param1.target.name.length - 1)) - 1;
         var _loc3_:§'"j§ = this.§@l§.getPricePoint(_loc2_);
         var _loc4_:Number = _loc3_.campaignPrice > 0 ? Number(_loc3_.campaignPrice) : Number(_loc3_.price);
         if((AngryBirdsBase.singleton.dataModel as §=#o§).§1q§.§#"+§ < _loc4_)
         {
            _loc7_ = (_loc6_ = _loc4_ - (AngryBirdsBase.singleton.dataModel as §=#o§).§1q§.§#"+§) > 1 ? "coins" : "coin";
            _loc8_ = new NotEnoughCoinsPopup(§;#'§.mClip,"Not enough coins!","You need " + _loc6_ + " more " + _loc7_ + " to buy this. \nVisit the Coin Shop now!",§@#D§.NORMAL,§5R§.TOP);
            if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc8_.id))
            {
               AngryBirdsBase.singleton.popupManager.§0"O§(_loc8_.id);
            }
            AngryBirdsBase.singleton.popupManager.openPopup(_loc8_);
            return;
         }
         var _loc5_:§8#Z§;
         (_loc5_ = new §8#Z§(this.§@l§,_loc3_,ID,§]$?§.§2#§.currentLevel.name)).addEventListener(§1!>§.§^#b§,this.§>!j§);
         _loc5_.addEventListener(§1!>§.§6#!§,this.§!#h§);
      }
      
      protected function §>!j§(param1:§1!>§) : void
      {
         var _loc2_:§8#Z§ = param1.currentTarget as §8#Z§;
         _loc2_.removeEventListener(§1!>§.§^#b§,this.§>!j§);
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         §<"G§.trackTransaction(_loc2_.orderId,§&v§,_loc2_.§@" §.id,_loc2_.§@" §.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         var _loc3_:Number = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
         §]#0§.§+!,§.§@!z§();
         this.§1!+§(true);
         dispatchEvent(new §%#O§(§%#O§.§!"m§,_loc2_.§@" §.id));
         close();
      }
      
      protected function §!#h§(param1:§1!>§) : void
      {
         §]#0§.§+!,§.§@!z§();
         this.§1!+§(true);
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§@#D§.§,"4§,§5R§.TOP,param1.errorMessage,param1.§^$6§));
      }
      
      private function §3!=§(param1:Event) : void
      {
         this.§1!+§(false);
         close();
      }
      
      private function §-# §() : void
      {
         if(this.§'!i§ || §`!D§ || !§;#'§)
         {
            return;
         }
         §;#'§.mClip.TargetedOfferLoading.visible = true;
         §;#'§.mClip.TargetedOfferButton.visible = false;
         this.§ "Z§(false);
         this.§'!i§ = new §-$C§();
         this.§'!i§.addEventListener(Event.COMPLETE,this.§!"3§);
         this.§'!i§.addEventListener(ErrorEvent.ERROR,this.onError);
         this.§'!i§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§'!i§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/targetedoffer");
         this.§'!i§.load(_loc1_);
      }
      
      private function §!"3§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§=#o§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§!#;§ = null;
         if(this.§'!i§)
         {
            this.§'!i§.removeEventListener(Event.COMPLETE,this.§!"3§);
            this.§'!i§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§'!i§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§'!i§ = null;
         }
         if(!§;#'§)
         {
            return;
         }
         §99§ = param1.target.data;
         this.§6!M§();
         if(§99§ && §99§.items)
         {
            for each(_loc2_ in §99§.items)
            {
               if(_loc2_.id == "VirtualCurrency")
               {
                  this.§?C§("VirtualCurrencyQuantity","" + _loc2_.q);
               }
               else if(_loc5_ = § "T§.§7#?§(_loc2_.id))
               {
                  this.§?C§("PowerupQuantity","x" + _loc2_.q);
                  this.§8$'§(_loc5_.§8t§);
               }
            }
            _loc3_ = AngryBirdsBase.singleton.dataModel as §=#o§;
            this.§?C§("prc",_loc3_.currencyModel.getPriceTag(§99§.prc,true,"",§99§.cur));
            §;#'§.mClip.TargetedOfferLoading.visible = false;
            §;#'§.mClip.TargetedOfferButton.visible = true;
            if(§99§.pcd)
            {
               this.§ "Z§(true);
               §;#'§.mClip.TargetedOfferButton.enabled = false;
               §;#'§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§?P§);
            }
            else
            {
               this.§ "Z§(false);
               §;#'§.mClip.TargetedOfferButton.enabled = true;
               if(!§;#'§.mClip.TargetedOfferButton.hasEventListener(MouseEvent.CLICK))
               {
                  §;#'§.mClip.TargetedOfferButton.addEventListener(MouseEvent.CLICK,this.§?P§);
               }
            }
            if((_loc4_ = §99§.rfs * 1000 - new Date().time) < 1000)
            {
               _loc4_ = 1000;
            }
            this.§0!@§ = new Timer(_loc4_,1);
            this.§0!@§.addEventListener(TimerEvent.TIMER,this.§8"x§);
            this.§0!@§.start();
         }
         else
         {
            §;#'§.mClip.TargetedOfferButton.visible = false;
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Contextual offer loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §?C§(param1:String, param2:String) : void
      {
         var _loc3_:DisplayObjectContainer = §;#'§.mClip.TargetedOfferButton.upState as DisplayObjectContainer;
         var _loc4_:TextField;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §;#'§.mClip.TargetedOfferButton.overState;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §;#'§.mClip.TargetedOfferButton.downState;
         (_loc4_ = _loc3_.getChildByName(param1) as TextField).text = param2;
      }
      
      private function §8$'§(param1:String) : void
      {
         var _loc2_:DisplayObjectContainer = §;#'§.mClip.TargetedOfferButton.upState;
         var _loc3_:MovieClip = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §;#'§.mClip.TargetedOfferButton.overState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §;#'§.mClip.TargetedOfferButton.downState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
      }
      
      private function § "Z§(param1:Boolean) : void
      {
         §;#'§.mClip.purchasedIcon.visible = param1;
      }
      
      private function §?P§(param1:MouseEvent) : void
      {
         var _loc2_:§2_§ = null;
         var _loc3_:§'"j§ = null;
         if(!§`!D§ && !this.§'!i§ && §99§)
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §`!D§ = true;
            if(this.§!!P§)
            {
               this.§!!P§.removeEventListeners();
               this.§!!P§ = null;
            }
            _loc2_ = new §2_§(§99§.cid,[],false,§99§.cur,§99§.ogo);
            _loc3_ = new §'"j§(1,0,§99§.prc);
            this.§!!P§ = new §&!t§(_loc2_,_loc3_,§&!t§.§&+§,ID);
            this.§!!P§.addEventListener(§1!>§.§#-§,this.§?q§);
            this.§!!P§.addEventListener(§1!>§.§6#!§,this.§^#h§);
            this.§!!P§.addEventListener(§&!t§.§2<§,this.§?q§);
         }
      }
      
      private function §?q§(param1:Event) : void
      {
         §`!D§ = false;
         this.§-# §();
      }
      
      private function §^#h§(param1:§1!>§) : void
      {
         var _loc2_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP,param1.errorMessage,param1.§^$6§,param1.errorCode.toString(),false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §`!D§ = false;
      }
      
      private function §8"x§(param1:TimerEvent) : void
      {
         if(this.§0!@§)
         {
            this.§6!M§();
            this.§-# §();
         }
      }
      
      private function §6!M§() : void
      {
         if(this.§0!@§)
         {
            this.§0!@§.stop();
            this.§0!@§.removeEventListener(TimerEvent.TIMER,this.§8"x§);
            this.§0!@§ = null;
         }
      }
   }
}
