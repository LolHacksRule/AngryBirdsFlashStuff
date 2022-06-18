package § o§
{
   import §!@§.§&$#§;
   import §%#A§.§'=§;
   import §%#A§.§^!4§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+"E§.§+Q§;
   import §+"E§.§9"z§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§^">§;
   import §6V§.§`"5§;
   import §7",§.§!#q§;
   import §7",§.§"$8§;
   import §7",§.§2#i§;
   import §8#D§.§=>§;
   import §;P§.§-#b§;
   import §;P§.§super§;
   import §<#m§.§!"<§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §[!E§.§>#`§;
   import §[§.§]"w§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class QuickPurchasePowerupPopup extends AbstractPopup implements §]"w§, §7#M§, §8[§
   {
      
      private static const §"#§:int = 4;
      
      public static const ID:String = "QuickPurchasePowerupPopup";
      
      private static const §[!r§:String = "Quick Purchase Powerup";
       
      
      private var §]#+§:§2#i§;
      
      private var §4!9§:§-#b§;
      
      private var §3!B§:Wallet;
      
      private var §&"t§:§>#`§;
      
      public function QuickPurchasePowerupPopup(param1:MovieClip, param2:§2#i§, param3:§-#b§)
      {
         super(§%"!§.NORMAL,§^#o§.TOP,§=>§.§%" §.Views.PopupView_QuickPurchasePowerupPopup[0],ID);
         this.§4!9§ = param3;
         this.§]#+§ = param2;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:String = null;
         var _loc4_:§!#q§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:§'=§ = null;
         var _loc8_:§'=§ = null;
         super.show(param1);
         (§1"6§.getItemByName("TextField_Header") as §^!4§).setText(this.§4!9§.§,!&§);
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         switch(this.§]#+§.id)
         {
            case §super§.§@"B§.§?"9§:
               _loc2_ = "SuperSeedsIcon";
               break;
            case §super§.§&"l§.§?"9§:
               _loc2_ = "KingSlingIcon";
               break;
            case §super§.§!!y§.§?"9§:
               _loc2_ = "SlingScopeIcon";
               break;
            case §super§.§+!d§.§?"9§:
               _loc2_ = "BirdQuakeIcon";
               break;
            case §super§.§#"[§.§?"9§:
               _loc2_ = "ExtraBirdIcon";
               break;
            case §super§.§9!T§.§?"9§:
               _loc2_ = "MushroomIcon";
               break;
            case §super§.§["0§.§?"9§:
               _loc2_ = "MightyEagleIcon";
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§]#+§.§]$4§())
         {
            if(_loc3_ >= §"#§)
            {
               break;
            }
            _loc4_ = this.§]#+§.getPricePoint(_loc3_);
            if(_loc2_)
            {
               _loc6_ = new (_loc5_ = §+$#§.§["`§(_loc2_))();
               _loc6_.scaleX = _loc6_.scaleY = _loc6_.scaleY * 2;
               (§1"6§.getItemByName("Tab_icon_" + (_loc3_ + 1)) as §'=§).mClip.addChild(_loc6_);
            }
            (§1"6§.getItemByName("Tab_quantity_" + (_loc3_ + 1)) as §^!4§).setText(§"$8§.MULTIPLIER_STRING + §^">§.§?"Y§(_loc4_.totalQuantity));
            if(_loc4_.§3y§ > 0)
            {
               ((_loc7_ = §1"6§.getItemByName("Tab_extra_" + (_loc3_ + 1)) as §'=§).mClip.getChildByName("txtAmount") as TextField).text = "" + _loc4_.§3y§;
            }
            if(_loc4_.campaignPrice > 0)
            {
               §1"6§.mClip["Tab_button_" + (_loc3_ + 1)].visible = false;
               this.§?z§("" + _loc4_.campaignPrice,"Tab_offer_button_" + (_loc3_ + 1),"" + _loc4_.price);
               ((_loc8_ = §1"6§.getItemByName("Tab_offer_" + (_loc3_ + 1)) as §'=§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc4_.campaignSalePercentage + "%";
               §1"6§.mClip["Tab_offer_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§8"V§);
            }
            else
            {
               §1"6§.mClip["Tab_offer_button_" + (_loc3_ + 1)].visible = false;
               this.§?z§("" + _loc4_.price,"Tab_button_" + (_loc3_ + 1));
               §1"6§.mClip["Tab_button_" + (_loc3_ + 1)].addEventListener(MouseEvent.CLICK,this.§8"V§);
            }
            _loc3_++;
         }
         this.§`#§();
         this.§`4§(true);
         §@!g§.§;n§(this.§]#+§);
         this.§&"t§ = §>#`§.§ "D§;
         this.§&"t§.addEventListener(§>#`§.§0!D§,this.§2"#§);
         §?!=§.§3!q§().§]f§("QUICK_PURCHASE_POWERUP_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§]#+§.§]$4§())
         {
            if(_loc3_ >= §"#§)
            {
               break;
            }
            §1"6§.mClip["Tab_offer_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§8"V§);
            §1"6§.mClip["Tab_button_" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,this.§8"V§);
            _loc3_++;
         }
         this.§&"t§.removeEventListener(§>#`§.§0!D§,this.§2"#§);
         this.§&"t§ = null;
         super.hide(param1);
      }
      
      private function §`#§() : void
      {
         this.§##Y§(new Wallet(this,true,true));
         this.§3!B§.§[!R§.visible = true;
         this.§3!B§.setCoinsAmountText(§`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§);
      }
      
      private function §`4§(param1:Boolean) : void
      {
         var _loc3_:§!#q§ = null;
         if(!§1"6§)
         {
            return;
         }
         §1"6§.mClip.mouseEnabled = param1;
         §1"6§.mClip.mouseChildren = param1;
         var _loc2_:int = 1;
         while(_loc2_ <= §"#§)
         {
            §1"6§.getItemByName("Tab_quantity_" + _loc2_).visible = param1;
            §1"6§.getItemByName("Tab_icon_" + _loc2_).visible = param1;
            §1"6§.mClip.getChildByName("Tab_button_" + _loc2_).visible = param1;
            §1"6§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = param1;
            _loc3_ = this.§]#+§.getPricePoint(_loc2_ - 1);
            if(_loc3_)
            {
               if(_loc3_.campaignPrice && _loc3_.campaignPrice > 0)
               {
                  §1"6§.getItemByName("Tab_extra_" + _loc2_).visible = false;
                  §1"6§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
                  §1"6§.getItemByName("Tab_offer_" + _loc2_).visible = param1;
               }
               else
               {
                  §1"6§.getItemByName("Tab_extra_" + _loc2_).visible = _loc3_.§3y§ > 0 && param1;
                  §1"6§.getItemByName("Tab_offer_" + _loc2_).visible = false;
                  §1"6§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
               }
            }
            else
            {
               §1"6§.getItemByName("Tab_extra_" + _loc2_).visible = false;
               §1"6§.getItemByName("Tab_offer_" + _loc2_).visible = false;
               §1"6§.getItemByName("Tab_quantity_" + _loc2_).visible = false;
               §1"6§.getItemByName("Tab_icon_" + _loc2_).visible = false;
               §1"6§.mClip.getChildByName("Tab_button_" + _loc2_).visible = false;
               §1"6§.mClip.getChildByName("Tab_offer_button_" + _loc2_).visible = false;
            }
            _loc2_++;
         }
         (§1"6§.getItemByName("MovieClip_LoadingImage") as §'=§).setVisibility(!param1);
      }
      
      public function §-"K§() : String
      {
         return ID;
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§7"C§;
      }
      
      public function §>"-§() : String
      {
         return §`"5§.§0"T§;
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§1"6§)
         {
            return §1"6§.getItemByName("walletContainer").mClip;
         }
         return null;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §?z§(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:DisplayObjectContainer = §1"6§.mClip[param2].upState as DisplayObjectContainer;
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
         _loc4_ = §1"6§.mClip[param2].overState as DisplayObjectContainer;
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
         _loc4_ = §1"6§.mClip[param2].downState as DisplayObjectContainer;
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
      
      private function §8"V§(param1:MouseEvent) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:§!"<§ = null;
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§`4§(false);
         var _loc2_:int = int(param1.target.name.charAt(param1.target.name.length - 1)) - 1;
         var _loc3_:§!#q§ = this.§]#+§.getPricePoint(_loc2_);
         var _loc4_:Number = _loc3_.campaignPrice > 0 ? Number(_loc3_.campaignPrice) : Number(_loc3_.price);
         if((AngryBirdsBase.singleton.dataModel as §`]§).§>p§.§5##§ < _loc4_)
         {
            _loc7_ = (_loc6_ = _loc4_ - (AngryBirdsBase.singleton.dataModel as §`]§).§>p§.§5##§) > 1 ? "coins" : "coin";
            _loc8_ = new NotEnoughCoinsPopup(§1"6§.mClip,"Not enough coins!","You need " + _loc6_ + " more " + _loc7_ + " to buy this. \nVisit the Coin Shop now!",§%"!§.NORMAL,§^#o§.TOP);
            if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc8_.id))
            {
               AngryBirdsBase.singleton.popupManager.§?$=§(_loc8_.id);
            }
            AngryBirdsBase.singleton.popupManager.openPopup(_loc8_);
            return;
         }
         var _loc5_:§&$#§;
         (_loc5_ = new §&$#§(this.§]#+§,_loc3_,ID,§!#A§.§#F§.currentLevel.name)).addEventListener(§9"z§.§9$>§,this.§66§);
         _loc5_.addEventListener(§9"z§.§@H§,this.§"!6§);
      }
      
      protected function §66§(param1:§9"z§) : void
      {
         var _loc2_:§&$#§ = param1.currentTarget as §&$#§;
         _loc2_.removeEventListener(§9"z§.§9$>§,this.§66§);
         §`"5§.trackPageView(this,§`"5§.§9>§);
         §`"5§.trackTransaction(_loc2_.orderId,§[!r§,_loc2_.§in§.id,_loc2_.§in§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         var _loc3_:Number = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
         §4"W§.§ "D§.§@!z§();
         this.§`4§(true);
         dispatchEvent(new §+Q§(§+Q§.§=<§,_loc2_.§in§.id));
         close();
      }
      
      protected function §"!6§(param1:§9"z§) : void
      {
         §4"W§.§ "D§.§@!z§();
         this.§`4§(true);
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§%"!§.§4!P§,§^#o§.TOP,param1.errorMessage,param1.§7$+§));
      }
      
      private function §2"#§(param1:Event) : void
      {
         this.§`4§(false);
         close();
      }
   }
}
