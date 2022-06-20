package §?!N§
{
   import §!!?§.§&#+§;
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import §!§.§="D§;
   import §%#v§.§0"j§;
   import §'#g§.§&^§;
   import §'#g§.§1"i§;
   import §+#B§.§""D§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-#R§.§0!w§;
   import §-#R§.§4"p§;
   import §5!$§.§-#j§;
   import §5!$§.§>§;
   import §5"c§.§8K§;
   import §5"c§.§9"2§;
   import §8"b§.§&!b§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?§.§<$?§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
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
   
   public class QuickPurchasePowerupPopup extends AbstractPopup implements §="D§, §0"+§, §["b§
   {
      
      private static const §'?§:int = 4;
      
      public static const ID:String = "QuickPurchasePowerupPopup";
      
      private static const §[!_§:String = "Quick Purchase Powerup";
      
      private static var §&<§:Object;
      
      private static var §"E§:Boolean;
       
      
      private var §'$$§:§,!K§;
      
      private var §;";§:§4"p§;
      
      private var §?3§:Wallet;
      
      private var §<#E§:§<$?§;
      
      private var §"!l§:§'!n§;
      
      private var §>$&§:§&^§;
      
      private var §8"9§:Timer;
      
      public function QuickPurchasePowerupPopup(param1:MovieClip, param2:§,!K§, param3:§4"p§)
      {
         super(§%#§.NORMAL,§9#5§.TOP,§0"j§.§-i§.Views.PopupView_QuickPurchasePowerupPopup[0],ID);
         this.§;";§ = param3;
         this.§'$$§ = param2;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:String = null;
         var _loc4_:§<#a§ = null;
         var _loc6_:MovieClip = null;
         super.show(param1);
         this.§]"%§();
         (§8#Y§.getItemByName("TextField_Header") as §-#j§).setText(this.§;";§.§[L§);
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         switch(this.§'$$§.id)
         {
            case §0!w§.§3#D§.§]'§:
               _loc2_ = "SuperSeedsIcon";
               break;
            case §0!w§.§ #;§.§]'§:
               _loc2_ = "KingSlingIcon";
               break;
            case §0!w§.§<L§.§]'§:
               _loc2_ = "BoomboxIcon";
               break;
            case §0!w§.§,"w§.§]'§:
               _loc2_ = "SlingScopeIcon";
               break;
            case §0!w§.§%#p§.§]'§:
               _loc2_ = "BirdQuakeIcon";
               break;
            case §0!w§.§2$?§.§]'§:
               _loc2_ = "ExtraBirdIcon";
               break;
            case §0!w§.§<!y§.§]'§:
               _loc2_ = "MushroomIcon";
               break;
            case §0!w§.§'!z§.§]'§:
               _loc2_ = "MightyEagleIcon";
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§'$$§.§&R§())
         {
            if(_loc3_ >= §'?§)
            {
               break;
            }
            _loc4_ = this.§'$$§.getPricePoint(_loc3_);
            if(_loc2_)
            {
               _loc6_ = new §2"O§.§`>§(_loc2_)();
               _loc6_.scaleX = _loc6_.scaleY = _loc6_.scaleY * 2;
               (§8#Y§.getItemByName("Tab_icon_" + (_loc3_ + 1)) as §>#8§).mClip.addChild(_loc6_);
            }
            (§8#Y§.getItemByName("Tab_quantity_" + (_loc3_ + 1)) as §-#j§).setText(§&#+§.MULTIPLIER_STRING + §""D§.§"k§(_loc4_.totalQuantity));
            if(_loc4_.§;2§ > 0)
            {
               ((§8#Y§.getItemByName("Tab_extra_" + (_loc3_ + 1)) as §>#8§).mClip.getChildByName("txtAmount") as TextField).text = "" + _loc4_.§;2§;
            }
            if(_loc4_.campaignPrice > 0)
            {
               §8#Y§.mClip["Tab_button_" + (_loc3_ + 1)].visible = false;
               this.§4"!§("" + _loc4_.campaignPrice,"Tab_offer_button_" + (_loc3_ + 1),"" + _loc4_.price);
               ((§8#Y§.getItemByName("Tab_offer_" + (_loc3_ + 1)) as §>#8§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc4_.campaignSalePercentage + "%";
               §8#Y§.mClip["Tab_offer_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§;!l§);
            }
            else
            {
               §8#Y§.mClip["Tab_offer_button_" + (_loc3_ + 1)].visible = false;
               this.§4"!§("" + _loc4_.price,"Tab_button_" + (_loc3_ + 1));
               §8#Y§.mClip["Tab_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§;!l§);
            }
            _loc3_++;
         }
         this.§+"^§();
         this.§6#+§(true);
         §&!b§.§%"J§(this.§'$$§);
         this.§<#E§ = §<$?§.§?q§;
         this.§<#E§.addEventListener(§<$?§.§ !O§,this.§;8§);
         §+$A§.§@"i§().§2K§("QUICK_PURCHASE_POWERUP_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§'$$§.§&R§())
         {
            if(_loc3_ >= §'?§)
            {
               break;
            }
            §8#Y§.mClip["Tab_offer_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§;!l§);
            §8#Y§.mClip["Tab_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§;!l§);
            _loc3_++;
         }
         this.§<#E§.removeEventListener(§<$?§.§ !O§,this.§;8§);
         this.§<#E§ = null;
         if(this.§"!l§)
         {
            this.§"!l§.removeEventListener(Event.COMPLETE,this.§0"3§);
            this.§"!l§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§"!l§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§"!l§ = null;
         }
         §8#Y§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§]h§);
         §&<§ = null;
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
         this.§4!,§();
         super.hide(param1);
      }
      
      private function §+"^§() : void
      {
         this.§[D§(new Wallet(this,true,true));
         this.§?3§.§5#k§.visible = true;
         this.§?3§.setCoinsAmountText(§@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§);
      }
      
      private function §6#+§(param1:Boolean) : void
      {
         var _loc3_:§<#a§ = null;
         if(!§8#Y§)
         {
            return;
         }
         §8#Y§.mClip.mouseEnabled = param1;
         §8#Y§.mClip.mouseChildren = param1;
         var _loc2_:int = 1;
         while(_loc2_ <= §'?§)
         {
            §8#Y§.getItemByName("Tab_quantity_" + _loc2_).visible = param1;
            §8#Y§.getItemByName("Tab_icon_" + _loc2_).visible = param1;
            §8#Y§.mClip.getChildByName("Tab_button_" + _loc2_).visible = param1;
            §8#Y§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = param1;
            _loc3_ = this.§'$$§.getPricePoint(_loc2_ - 1);
            if(_loc3_)
            {
               if(_loc3_.campaignPrice && _loc3_.campaignPrice > 0)
               {
                  §8#Y§.getItemByName("Tab_extra_" + _loc2_).visible = false;
                  §8#Y§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
                  §8#Y§.getItemByName("Tab_offer_" + _loc2_).visible = param1;
               }
               else
               {
                  §8#Y§.getItemByName("Tab_extra_" + _loc2_).visible = _loc3_.§;2§ > 0 && param1;
                  §8#Y§.getItemByName("Tab_offer_" + _loc2_).visible = false;
                  §8#Y§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
               }
            }
            else
            {
               §8#Y§.getItemByName("Tab_extra_" + _loc2_).visible = false;
               §8#Y§.getItemByName("Tab_offer_" + _loc2_).visible = false;
               §8#Y§.getItemByName("Tab_quantity_" + _loc2_).visible = false;
               §8#Y§.getItemByName("Tab_icon_" + _loc2_).visible = false;
               §8#Y§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
               §8#Y§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
            }
            _loc2_++;
         }
         (§8#Y§.getItemByName("MovieClip_LoadingImage") as §>#8§).setVisibility(!param1);
      }
      
      public function §+"n§() : String
      {
         return ID;
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§3#R§;
      }
      
      public function §5!R§() : String
      {
         return §5"w§.§ 1§;
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§8#Y§)
         {
            return §8#Y§.getItemByName("walletContainer").mClip;
         }
         return null;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §4"!§(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:DisplayObjectContainer = §8#Y§.mClip[param2].upState as DisplayObjectContainer;
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
         _loc4_ = §8#Y§.mClip[param2].overState as DisplayObjectContainer;
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
         _loc4_ = §8#Y§.mClip[param2].downState as DisplayObjectContainer;
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
      
      private function §;!l§(param1:MouseEvent) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:§@#G§ = null;
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§6#+§(false);
         var _loc2_:int = int(param1.target.name.charAt(param1.target.name.length - 1)) - 1;
         var _loc3_:§<#a§ = this.§'$$§.getPricePoint(_loc2_);
         var _loc4_:Number = _loc3_.campaignPrice > 0 ? Number(_loc3_.campaignPrice) : Number(_loc3_.price);
         if((AngryBirdsBase.singleton.dataModel as §@"%§).§8!8§.§"$6§ < _loc4_)
         {
            _loc7_ = (_loc6_ = _loc4_ - (AngryBirdsBase.singleton.dataModel as §@"%§).§8!8§.§"$6§) > 1 ? "coins" : "coin";
            _loc8_ = new NotEnoughCoinsPopup(§8#Y§.mClip,"Not enough coins!","You need " + _loc6_ + " more " + _loc7_ + " to buy this. \nVisit the Coin Shop now!",§%#§.NORMAL,§9#5§.TOP);
            if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc8_.id))
            {
               AngryBirdsBase.singleton.popupManager.§2;§(_loc8_.id);
            }
            AngryBirdsBase.singleton.popupManager.openPopup(_loc8_);
            return;
         }
         var _loc5_:§1"i§;
         (_loc5_ = new §1"i§(this.§'$$§,_loc3_,ID,§%"T§.§;`§.currentLevel.name)).addEventListener(§8K§.§`#y§,this.§&##§);
         _loc5_.addEventListener(§8K§.§<"&§,this.§7#k§);
      }
      
      protected function §&##§(param1:§8K§) : void
      {
         var _loc2_:§1"i§ = param1.currentTarget as §1"i§;
         _loc2_.removeEventListener(§8K§.§`#y§,this.§&##§);
         §5"w§.trackPageView(this,§5"w§.§9`§);
         §5"w§.trackTransaction(_loc2_.orderId,§[!_§,_loc2_.§4">§.id,_loc2_.§4">§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         Number(_loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price));
         §#$D§.§?q§.§>!'§();
         this.§6#+§(true);
         dispatchEvent(new §9"2§(§9"2§.§?"t§,_loc2_.§4">§.id));
         close();
      }
      
      protected function §7#k§(param1:§8K§) : void
      {
         §#$D§.§?q§.§>!'§();
         this.§6#+§(true);
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§%#§.§3t§,§9#5§.TOP,param1.errorMessage,param1.§ $1§));
      }
      
      private function §;8§(param1:Event) : void
      {
         this.§6#+§(false);
         close();
      }
      
      private function §]"%§() : void
      {
         if(this.§"!l§ || §"E§ || !§8#Y§)
         {
            return;
         }
         §8#Y§.mClip.TargetedOfferLoading.visible = true;
         §8#Y§.mClip.TargetedOfferButton.visible = false;
         this.§<";§(false);
         this.§"!l§ = new §'!n§();
         this.§"!l§.addEventListener(Event.COMPLETE,this.§0"3§);
         this.§"!l§.addEventListener(ErrorEvent.ERROR,this.onError);
         this.§"!l§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"!l§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/targetedoffer");
         this.§"!l§.load(_loc1_);
      }
      
      private function §0"3§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§@"%§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§4"p§ = null;
         if(this.§"!l§)
         {
            this.§"!l§.removeEventListener(Event.COMPLETE,this.§0"3§);
            this.§"!l§.removeEventListener(ErrorEvent.ERROR,this.onError);
            this.§"!l§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§"!l§ = null;
         }
         if(!§8#Y§)
         {
            return;
         }
         §&<§ = param1.target.data;
         this.§4!,§();
         if(§&<§ && §&<§.items)
         {
            for each(_loc2_ in §&<§.items)
            {
               if(_loc2_.id == "VirtualCurrency")
               {
                  this.§8!5§("VirtualCurrencyQuantity","" + _loc2_.q);
               }
               else if(_loc5_ = §0!w§.§7$§(_loc2_.id))
               {
                  this.§8!5§("PowerupQuantity","x" + _loc2_.q);
                  this.§'#2§(_loc5_.§]'§);
               }
            }
            _loc3_ = AngryBirdsBase.singleton.dataModel as §@"%§;
            this.§8!5§("prc",_loc3_.currencyModel.getPriceTag(§&<§.prc,true,"",§&<§.cur));
            §8#Y§.mClip.TargetedOfferLoading.visible = false;
            §8#Y§.mClip.TargetedOfferButton.visible = true;
            if(§&<§.pcd)
            {
               this.§<";§(true);
               §8#Y§.mClip.TargetedOfferButton.enabled = false;
               §8#Y§.mClip.TargetedOfferButton.removeEventListener(MouseEvent.CLICK,this.§]h§);
            }
            else
            {
               this.§<";§(false);
               §8#Y§.mClip.TargetedOfferButton.enabled = true;
               if(!§8#Y§.mClip.TargetedOfferButton.hasEventListener(MouseEvent.CLICK))
               {
                  §8#Y§.mClip.TargetedOfferButton.addEventListener(MouseEvent.CLICK,this.§]h§);
               }
            }
            if((_loc4_ = §&<§.rfs * 1000 - new Date().time) < 1000)
            {
               _loc4_ = 1000;
            }
            this.§8"9§ = new Timer(_loc4_,1);
            this.§8"9§.addEventListener(TimerEvent.TIMER,this.§%$1§);
            this.§8"9§.start();
         }
         else
         {
            §8#Y§.mClip.TargetedOfferButton.visible = false;
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Contextual offer loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §8!5§(param1:String, param2:String) : void
      {
         var _loc3_:DisplayObjectContainer = §8#Y§.mClip.TargetedOfferButton.upState as DisplayObjectContainer;
         (_loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §8#Y§.mClip.TargetedOfferButton.overState;
         (_loc3_.getChildByName(param1) as TextField).text = param2;
         _loc3_ = §8#Y§.mClip.TargetedOfferButton.downState;
         (_loc3_.getChildByName(param1) as TextField).text = param2;
      }
      
      private function §'#2§(param1:String) : void
      {
         var _loc2_:DisplayObjectContainer = §8#Y§.mClip.TargetedOfferButton.upState;
         var _loc3_:MovieClip = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §8#Y§.mClip.TargetedOfferButton.overState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
         _loc2_ = §8#Y§.mClip.TargetedOfferButton.downState;
         _loc3_ = _loc2_.getChildByName("TargetedOfferPowerupIcons") as MovieClip;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(_loc4_).visible = _loc3_.getChildAt(_loc4_).name == param1;
            _loc4_++;
         }
      }
      
      private function §<";§(param1:Boolean) : void
      {
         §8#Y§.mClip.purchasedIcon.visible = param1;
      }
      
      private function §]h§(param1:MouseEvent) : void
      {
         var _loc2_:§,!K§ = null;
         var _loc3_:§<#a§ = null;
         if(!§"E§ && !this.§"!l§ && §&<§)
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §"E§ = true;
            if(this.§>$&§)
            {
               this.§>$&§.removeEventListeners();
               this.§>$&§ = null;
            }
            _loc2_ = new §,!K§(§&<§.cid,[],false,§&<§.cur,§&<§.ogo);
            _loc3_ = new §<#a§(1,0,§&<§.prc);
            this.§>$&§ = new §&^§(_loc2_,_loc3_,§&^§.§?$4§,ID);
            this.§>$&§.addEventListener(§8K§.§ ",§,this.§]9§);
            this.§>$&§.addEventListener(§8K§.§<"&§,this.§<$=§);
            this.§>$&§.addEventListener(§&^§.§2!§,this.§]9§);
         }
      }
      
      private function §]9§(param1:Event) : void
      {
         §"E§ = false;
         this.§]"%§();
      }
      
      private function §<$=§(param1:§8K§) : void
      {
         var _loc2_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP,param1.errorMessage,param1.§ $1§,param1.errorCode.toString(),false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §"E§ = false;
      }
      
      private function §%$1§(param1:TimerEvent) : void
      {
         if(this.§8"9§)
         {
            this.§4!,§();
            this.§]"%§();
         }
      }
      
      private function §4!,§() : void
      {
         if(this.§8"9§)
         {
            this.§8"9§.stop();
            this.§8"9§.removeEventListener(TimerEvent.TIMER,this.§%$1§);
            this.§8"9§ = null;
         }
      }
   }
}
