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
   import §#"4§.§<"G§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §+!Y§.§3!B§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
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
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuickPurchaseSlingshotPopup extends AbstractPopup implements §1k§, §2"M§, §+#?§
   {
      
      public static const ID:String = "QuickPurchaseSlingshotPopup";
      
      private static const §&v§:String = "Quick Purchase Slingshot";
       
      
      private var §"K§:String = "";
      
      private var §@l§:§2_§;
      
      private var §-$=§:§3!B§;
      
      private var §,"K§:Boolean;
      
      private var §!!P§:§&!t§;
      
      private var §1"V§:Timer;
      
      private var §"#W§:Wallet;
      
      private var §"#`§:Number;
      
      private var §`#0§:§^!r§;
      
      public function QuickPurchaseSlingshotPopup(param1:MovieClip, param2:§2_§, param3:§3!B§)
      {
         super(§@#D§.NORMAL,§5R§.TOP,§false§.§4#;§.Views.PopupView_QuickPurchaseSlingshotPopup[0],ID);
         this.§@l§ = param2;
         this.§-$=§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc6_:§"!A§ = null;
         super.show(param1);
         (§;#'§.getItemByName("TextField_Header") as §7`§).setText(this.§-$=§.§"l§);
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         var _loc2_:String = "Icon_Slingshot_" + this.§-$=§.§8t§;
         var _loc3_:Class = §[a§.§8#k§(_loc2_);
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.scaleX = _loc4_.scaleY = _loc4_.scaleY * 1.5;
         _loc4_.y -= 20;
         (§;#'§.getItemByName("Tab_icon_1") as §"!A§).mClip.addChild(_loc4_);
         (§;#'§.getItemByName("Tab_quantity_1") as §7`§).setText(§7#+§.MULTIPLIER_STRING + "1");
         var _loc5_:§'"j§;
         if((_loc5_ = this.§@l§.getPricePoint(0)).campaignPrice > 0)
         {
            §;#'§.mClip["Tab_button_1"].visible = false;
            this.§?"V§("" + _loc5_.campaignPrice,"Tab_offer_button_1","" + _loc5_.price);
            ((_loc6_ = §;#'§.getItemByName("Tab_offer_1") as §"!A§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc5_.campaignSalePercentage + "%";
            §;#'§.mClip["Tab_offer_button_1"].addEventListener(MouseEvent.CLICK,this.§&"N§);
         }
         else
         {
            §;#'§.mClip["Tab_offer_button_1"].visible = false;
            this.§?"V§("" + _loc5_.price,"Tab_button_1");
            §;#'§.mClip["Tab_button_1"].addEventListener(MouseEvent.CLICK,this.§&"N§);
         }
         this.§,"K§ = this.§@l§.currencyID == "IVC";
         this.§&!J§();
         this.§1!+§(true);
         §7"U§.§5e§(this.§@l§);
         this.§`#0§ = §^!r§.§+!,§;
         this.§`#0§.addEventListener(§^!r§.§0!A§,this.§3!=§);
         §3";§.§#"'§().§0#P§("QUICK_PURCHASE_SLINGSHOT_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §;#'§.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§,!<§);
         §;#'§.mClip["Tab_button_1"].removeEventListener(MouseEvent.CLICK,this.§&"N§);
         §;#'§.mClip["Tab_offer_button_1"].removeEventListener(MouseEvent.CLICK,this.§&"N§);
         this.§`#0§.removeEventListener(§^!r§.§0!A§,this.§3!=§);
         this.§`#0§ = null;
         super.hide(param1,param2);
      }
      
      private function §&!J§() : void
      {
         this.§6"h§(new Wallet(this,true,true));
         this.§"#W§.§`#8§.visible = true;
         this.§"#`§ = §=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§;
         this.§"#W§.setCoinsAmountText(this.§"#`§);
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
         param1.dispose();
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
      
      private function §&"N§(param1:MouseEvent) : void
      {
         var _loc2_:§'"j§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§8#Z§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§,#@§ = null;
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§1!+§(false);
         if(this.§,"K§)
         {
            _loc2_ = this.§@l§.getPricePoint(0);
            _loc3_ = _loc2_.campaignPrice > 0 ? Number(_loc2_.campaignPrice) : Number(_loc2_.price);
            if((AngryBirdsBase.singleton.dataModel as §=#o§).§1q§.§#"+§ < _loc3_)
            {
               _loc6_ = (_loc5_ = _loc3_ - (AngryBirdsBase.singleton.dataModel as §=#o§).§1q§.§#"+§) > 1 ? "coins" : "coin";
               _loc7_ = new NotEnoughCoinsPopup(§;#'§.mClip,"Not enough coins!","You need " + _loc5_ + " more " + _loc6_ + " to buy this. \nVisit the Coin Shop now!",§@#D§.NORMAL,§5R§.TOP);
               if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc7_.id))
               {
                  AngryBirdsBase.singleton.popupManager.§0"O§(_loc7_.id);
               }
               AngryBirdsBase.singleton.popupManager.openPopup(_loc7_);
               return;
            }
            (_loc4_ = new §8#Z§(this.§@l§,this.§@l§.getPricePoint(0),ID,§]$?§.§2#§.currentLevel.name)).addEventListener(§1!>§.§^#b§,this.§>!j§);
            _loc4_.addEventListener(§1!>§.§6#!§,this.§!#h§);
         }
         else
         {
            if(this.§!!P§)
            {
               this.§!!P§.removeEventListeners();
               this.§!!P§ = null;
            }
            this.§!!P§ = new §&!t§(this.§@l§,this.§@l§.getPricePoint(0),§&!t§.§&+§,ID,§]$?§.§2#§.currentLevel.name);
            this.§!!P§.addEventListener(§1!>§.§#-§,this.§#"k§);
            this.§!!P§.addEventListener(§1!>§.§6#!§,this.§>!y§);
            this.§1"V§ = new Timer(2000,1);
            this.§1"V§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,"?§);
            this.§1"V§.start();
         }
      }
      
      private function §1!+§(param1:Boolean) : void
      {
         if(!§;#'§)
         {
            return;
         }
         §;#'§.mClip.mouseEnabled = param1;
         §;#'§.mClip.mouseChildren = param1;
         §;#'§.mClip.getChildByName("Tab_button_1").visible = param1;
         §;#'§.mClip.getChildByName("Tab_offer_button_1").visible = param1;
         var _loc2_:§'"j§ = this.§@l§.getPricePoint(0);
         if(_loc2_)
         {
            if(_loc2_.campaignPrice && _loc2_.campaignPrice > 0)
            {
               §;#'§.mClip.getChildByName("Tab_button_1").visible = false;
               §;#'§.getItemByName("Tab_offer_1").visible = param1;
            }
            else
            {
               §;#'§.getItemByName("Tab_offer_1").visible = false;
               §;#'§.mClip.getChildByName("Tab_offer_button_1").visible = false;
            }
         }
         else
         {
            §;#'§.mClip.getChildByName("Tab_button_1").visible = false;
            §;#'§.mClip.getChildByName("Tab_offer_button_1").visible = false;
         }
         (§;#'§.getItemByName("MovieClip_LoadingImage") as §"!A§).setVisibility(!param1);
      }
      
      protected function §!#h§(param1:§1!>§) : void
      {
         §]#0§.§+!,§.§@!z§();
         this.§1!+§(true);
         this.§4!0§(param1.errorMessage,param1.§^$6§,param1.errorCode.toString());
      }
      
      protected function §4!0§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
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
      
      protected function §#"k§(param1:§1!>§) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:§&!t§ = param1.currentTarget as §&!t§;
         _loc2_.removeEventListener(§1!>§.§#-§,this.§#"k§);
         _loc2_.removeEventListener(§1!>§.§6#!§,this.§>!y§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
         }
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         §<"G§.trackTransaction(_loc2_.orderId,§&v§,_loc2_.§@" §.id,_loc2_.§@" §.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         var _loc3_:Object = {};
         §<"G§.§+#L§(_loc2_.§@" §.id,this.§!!P§.pricePoint.totalQuantity);
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         if(_loc2_.pricePoint)
         {
            _loc4_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            _loc3_ = {
               "product":_loc2_.§@" §.id,
               "pricePoint":_loc4_
            };
            §<"G§.trackTransaction(_loc2_.orderId,§&v§,_loc2_.§@" §.id,_loc2_.§@" §.id,_loc4_ + " x",_loc4_,1,0);
         }
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
         _loc2_.removeEventListeners();
         §]#0§.§+!,§.§@!z§();
         dispatchEvent(new §%#O§(§%#O§.§!"m§,_loc2_.§@" §.id));
         close();
      }
      
      protected function §>!y§(param1:§1!>§) : void
      {
         this.§4!0§(param1.errorMessage,param1.§^$6§,param1.errorCode.toString());
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
         this.§1!+§(true);
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
      
      public function §-!n§() : void
      {
         this.§1!+§(true);
      }
      
      private function §,"?§(param1:TimerEvent) : void
      {
         if(this.§1"V§)
         {
            this.§1"V§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,"?§);
         }
         this.§1!+§(true);
      }
      
      private function §3!=§(param1:Event) : void
      {
         this.§1!+§(false);
         close();
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
   }
}
