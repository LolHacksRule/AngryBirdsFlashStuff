package § o§
{
   import §!@§.§&$#§;
   import §!@§.§<"U§;
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
   import §6V§.§`"5§;
   import §7",§.§!#q§;
   import §7",§.§"$8§;
   import §7",§.§2#i§;
   import §8#D§.§=>§;
   import §<#m§.§!"<§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §=#C§.§6!u§;
   import §[!E§.§>#`§;
   import §[§.§]"w§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuickPurchaseSlingshotPopup extends AbstractPopup implements §]"w§, §7#M§, §8[§
   {
      
      public static const ID:String = "QuickPurchaseSlingshotPopup";
      
      private static const §[!r§:String = "Quick Purchase Slingshot";
       
      
      private var §@"1§:String = "";
      
      private var §]#+§:§2#i§;
      
      private var §;#<§:§6!u§;
      
      private var §"#m§:Boolean;
      
      private var §?!V§:§<"U§;
      
      private var §+"a§:Timer;
      
      private var §3!B§:Wallet;
      
      private var §7!X§:Number;
      
      private var §&"t§:§>#`§;
      
      public function QuickPurchaseSlingshotPopup(param1:MovieClip, param2:§2#i§, param3:§6!u§)
      {
         super(§%"!§.NORMAL,§^#o§.TOP,§=>§.§%" §.Views.PopupView_QuickPurchaseSlingshotPopup[0],ID);
         this.§]#+§ = param2;
         this.§;#<§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc6_:§'=§ = null;
         super.show(param1);
         (§1"6§.getItemByName("TextField_Header") as §^!4§).setText(this.§;#<§.§,!&§);
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         var _loc2_:String = "Icon_Slingshot_" + this.§;#<§.§?"9§;
         var _loc3_:Class = §+$#§.§["`§(_loc2_);
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.scaleX = _loc4_.scaleY = _loc4_.scaleY * 1.5;
         _loc4_.y -= 20;
         (§1"6§.getItemByName("Tab_icon_1") as §'=§).mClip.addChild(_loc4_);
         (§1"6§.getItemByName("Tab_quantity_1") as §^!4§).setText(§"$8§.MULTIPLIER_STRING + "1");
         var _loc5_:§!#q§;
         if((_loc5_ = this.§]#+§.getPricePoint(0)).campaignPrice > 0)
         {
            §1"6§.mClip["Tab_button_1"].visible = false;
            this.§?z§("" + _loc5_.campaignPrice,"Tab_offer_button_1","" + _loc5_.price);
            ((_loc6_ = §1"6§.getItemByName("Tab_offer_1") as §'=§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc5_.campaignSalePercentage + "%";
            §1"6§.mClip["Tab_offer_button_1"].addEventListener(MouseEvent.CLICK,this.§8"V§);
         }
         else
         {
            §1"6§.mClip["Tab_offer_button_1"].visible = false;
            this.§?z§("" + _loc5_.price,"Tab_button_1");
            §1"6§.mClip["Tab_button_1"].addEventListener(MouseEvent.CLICK,this.§8"V§);
         }
         this.§"#m§ = this.§]#+§.currencyID == "IVC";
         this.§`#§();
         this.§`4§(true);
         §@!g§.§;n§(this.§]#+§);
         this.§&"t§ = §>#`§.§ "D§;
         this.§&"t§.addEventListener(§>#`§.§0!D§,this.§2"#§);
         §?!=§.§3!q§().§]f§("QUICK_PURCHASE_SLINGSHOT_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §1"6§.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§4#Y§);
         §1"6§.mClip["Tab_button_1"].removeEventListener(MouseEvent.CLICK,this.§8"V§);
         §1"6§.mClip["Tab_offer_button_1"].removeEventListener(MouseEvent.CLICK,this.§8"V§);
         this.§&"t§.removeEventListener(§>#`§.§0!D§,this.§2"#§);
         this.§&"t§ = null;
         super.hide(param1,param2);
      }
      
      private function §`#§() : void
      {
         this.§##Y§(new Wallet(this,true,true));
         this.§3!B§.§[!R§.visible = true;
         this.§7!X§ = §`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§;
         this.§3!B§.setCoinsAmountText(this.§7!X§);
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
         param1.dispose();
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
      
      private function §8"V§(param1:MouseEvent) : void
      {
         var _loc2_:§!#q§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§&$#§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§!"<§ = null;
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§`4§(false);
         if(this.§"#m§)
         {
            _loc2_ = this.§]#+§.getPricePoint(0);
            _loc3_ = _loc2_.campaignPrice > 0 ? Number(_loc2_.campaignPrice) : Number(_loc2_.price);
            if((AngryBirdsBase.singleton.dataModel as §`]§).§>p§.§5##§ < _loc3_)
            {
               _loc6_ = (_loc5_ = _loc3_ - (AngryBirdsBase.singleton.dataModel as §`]§).§>p§.§5##§) > 1 ? "coins" : "coin";
               _loc7_ = new NotEnoughCoinsPopup(§1"6§.mClip,"Not enough coins!","You need " + _loc5_ + " more " + _loc6_ + " to buy this. \nVisit the Coin Shop now!",§%"!§.NORMAL,§^#o§.TOP);
               if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc7_.id))
               {
                  AngryBirdsBase.singleton.popupManager.§?$=§(_loc7_.id);
               }
               AngryBirdsBase.singleton.popupManager.openPopup(_loc7_);
               return;
            }
            (_loc4_ = new §&$#§(this.§]#+§,this.§]#+§.getPricePoint(0),ID,§!#A§.§#F§.currentLevel.name)).addEventListener(§9"z§.§9$>§,this.§66§);
            _loc4_.addEventListener(§9"z§.§@H§,this.§"!6§);
         }
         else
         {
            if(this.§?!V§)
            {
               this.§?!V§.removeEventListeners();
               this.§?!V§ = null;
            }
            this.§?!V§ = new §<"U§(this.§]#+§,this.§]#+§.getPricePoint(0),§<"U§.§ $4§,ID,§!#A§.§#F§.currentLevel.name);
            this.§?!V§.addEventListener(§9"z§.§2!c§,this.§<$#§);
            this.§?!V§.addEventListener(§9"z§.§@H§,this.§=$#§);
            this.§+"a§ = new Timer(2000,1);
            this.§+"a§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
            this.§+"a§.start();
         }
      }
      
      private function §`4§(param1:Boolean) : void
      {
         if(!§1"6§)
         {
            return;
         }
         §1"6§.mClip.mouseEnabled = param1;
         §1"6§.mClip.mouseChildren = param1;
         §1"6§.mClip.getChildByName("Tab_button_1").visible = param1;
         §1"6§.mClip.getChildByName("Tab_offer_button_1").visible = param1;
         var _loc2_:§!#q§ = this.§]#+§.getPricePoint(0);
         if(_loc2_)
         {
            if(_loc2_.campaignPrice && _loc2_.campaignPrice > 0)
            {
               §1"6§.mClip.getChildByName("Tab_button_1").visible = false;
               §1"6§.getItemByName("Tab_offer_1").visible = param1;
            }
            else
            {
               §1"6§.getItemByName("Tab_offer_1").visible = false;
               §1"6§.mClip.getChildByName("Tab_offer_button_1").visible = false;
            }
         }
         else
         {
            §1"6§.mClip.getChildByName("Tab_button_1").visible = false;
            §1"6§.mClip.getChildByName("Tab_offer_button_1").visible = false;
         }
         (§1"6§.getItemByName("MovieClip_LoadingImage") as §'=§).setVisibility(!param1);
      }
      
      protected function §"!6§(param1:§9"z§) : void
      {
         §4"W§.§ "D§.§@!z§();
         this.§`4§(true);
         this.§=!,§(param1.errorMessage,param1.§7$+§,param1.errorCode.toString());
      }
      
      protected function §=!,§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
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
      
      protected function §<$#§(param1:§9"z§) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:§<"U§ = param1.currentTarget as §<"U§;
         _loc2_.removeEventListener(§9"z§.§2!c§,this.§<$#§);
         _loc2_.removeEventListener(§9"z§.§@H§,this.§=$#§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
         }
         §`"5§.trackPageView(this,§`"5§.§9>§);
         §`"5§.trackTransaction(_loc2_.orderId,§[!r§,_loc2_.§in§.id,_loc2_.§in§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         var _loc3_:Object = {};
         §`"5§.§0"o§(_loc2_.§in§.id,this.§?!V§.pricePoint.totalQuantity);
         §`"5§.trackPageView(this,§`"5§.§9>§);
         if(_loc2_.pricePoint)
         {
            _loc4_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            _loc3_ = {
               "product":_loc2_.§in§.id,
               "pricePoint":_loc4_
            };
            §`"5§.trackTransaction(_loc2_.orderId,§[!r§,_loc2_.§in§.id,_loc2_.§in§.id,_loc4_ + " x",_loc4_,1,0);
         }
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
         _loc2_.removeEventListeners();
         §4"W§.§ "D§.§@!z§();
         dispatchEvent(new §+Q§(§+Q§.§=<§,_loc2_.§in§.id));
         close();
      }
      
      protected function §=$#§(param1:§9"z§) : void
      {
         this.§=!,§(param1.errorMessage,param1.§7$+§,param1.errorCode.toString());
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
         this.§`4§(true);
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
      
      public function §9!Q§() : void
      {
         this.§`4§(true);
      }
      
      private function §^"b§(param1:TimerEvent) : void
      {
         if(this.§+"a§)
         {
            this.§+"a§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
         }
         this.§`4§(true);
      }
      
      private function §2"#§(param1:Event) : void
      {
         this.§`4§(false);
         close();
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
   }
}
