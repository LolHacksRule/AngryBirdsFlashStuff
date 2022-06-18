package § h§
{
   import § "v§.§4$4§;
   import §!!H§.§ $4§;
   import §#Q§.§ l§;
   import §+!n§.§+!p§;
   import §+Z§.§ ![§;
   import §+Z§.§?!T§;
   import §-"e§.§^#i§;
   import §2$;§.§-$5§;
   import §2$;§.§=!Z§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§]!P§;
   import §4#l§.§8#E§;
   import §4#l§.§='§;
   import §4#l§.§>"`§;
   import §4$A§.§=$5§;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
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
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuickPurchaseSlingshotPopup extends AbstractPopup implements §=$5§, §'r§, §;"P§
   {
      
      public static const ID:String = "QuickPurchaseSlingshotPopup";
      
      private static const §`-§:String = "Quick Purchase Slingshot";
       
      
      private var §5#t§:String = "";
      
      private var §=#Q§:§8#E§;
      
      private var §!!V§:§^#i§;
      
      private var §3#V§:Boolean;
      
      private var §%"h§:§>-§;
      
      private var §!-§:Timer;
      
      private var §1"w§:Wallet;
      
      private var §!X§:Number;
      
      private var §^!d§:§ l§;
      
      public function QuickPurchaseSlingshotPopup(param1:MovieClip, param2:§8#E§, param3:§^#i§)
      {
         super(§-!S§.NORMAL,§## §.TOP,§&n§.§7a§.Views.PopupView_QuickPurchaseSlingshotPopup[0],ID);
         this.§=#Q§ = param2;
         this.§!!V§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         (§'o§.getItemByName("TextField_Header") as §-$5§).setText(this.§!!V§.§[E§);
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         var _loc2_:String = "Icon_Slingshot_" + this.§!!V§.§=#@§;
         var _loc3_:Class = §=@§.§9!x§(_loc2_);
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.scaleX = _loc4_.scaleY = _loc4_.scaleY * 1.5;
         _loc4_.y -= 20;
         (§'o§.getItemByName("Tab_icon_1") as §=!Z§).mClip.addChild(_loc4_);
         (§'o§.getItemByName("Tab_quantity_1") as §-$5§).setText(§='§.MULTIPLIER_STRING + "1");
         var _loc5_:§>"`§;
         if((_loc5_ = this.§=#Q§.getPricePoint(0)).campaignPrice > 0)
         {
            §'o§.mClip["Tab_button_1"].visible = false;
            this.§ #G§("" + _loc5_.campaignPrice,"Tab_offer_button_1","" + _loc5_.price);
            ((§'o§.getItemByName("Tab_offer_1") as §=!Z§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc5_.campaignSalePercentage + "%";
            §'o§.mClip["Tab_offer_button_1"].addEventListener(MouseEvent.CLICK,this.§;"y§);
         }
         else
         {
            §'o§.mClip["Tab_offer_button_1"].visible = false;
            this.§ #G§("" + _loc5_.price,"Tab_button_1");
            §'o§.mClip["Tab_button_1"].addEventListener(MouseEvent.CLICK,this.§;"y§);
         }
         this.§3#V§ = this.§=#Q§.currencyID == "IVC";
         this.§-#y§();
         this.§0!x§(true);
         § $4§.§"#n§(this.§=#Q§);
         this.§^!d§ = § l§.§3"1§;
         this.§^!d§.addEventListener(§ l§.§-"i§,this.§>#q§);
         §]!P§.§1!7§().§9a§("QUICK_PURCHASE_SLINGSHOT_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §'o§.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§1",§);
         §'o§.mClip["Tab_button_1"].removeEventListener(MouseEvent.CLICK,this.§;"y§);
         §'o§.mClip["Tab_offer_button_1"].removeEventListener(MouseEvent.CLICK,this.§;"y§);
         this.§^!d§.removeEventListener(§ l§.§-"i§,this.§>#q§);
         this.§^!d§ = null;
         super.hide(param1,param2);
      }
      
      private function §-#y§() : void
      {
         this.§ "@§(new Wallet(this,true,true));
         this.§1"w§.§6""§.visible = true;
         this.§!X§ = §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§;
         this.§1"w§.setCoinsAmountText(this.§!X§);
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
         param1.dispose();
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
      
      private function §;"y§(param1:MouseEvent) : void
      {
         var _loc2_:§>"`§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§>%§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§?!y§ = null;
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§0!x§(false);
         if(this.§3#V§)
         {
            _loc2_ = this.§=#Q§.getPricePoint(0);
            _loc3_ = _loc2_.campaignPrice > 0 ? Number(_loc2_.campaignPrice) : Number(_loc2_.price);
            if((AngryBirdsBase.singleton.dataModel as §,#b§).§%$;§.§5"i§ < _loc3_)
            {
               _loc6_ = (_loc5_ = _loc3_ - (AngryBirdsBase.singleton.dataModel as §,#b§).§%$;§.§5"i§) > 1 ? "coins" : "coin";
               _loc7_ = new NotEnoughCoinsPopup(§'o§.mClip,"Not enough coins!","You need " + _loc5_ + " more " + _loc6_ + " to buy this. \nVisit the Coin Shop now!",§-!S§.NORMAL,§## §.TOP);
               if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc7_.id))
               {
                  AngryBirdsBase.singleton.popupManager.§>#g§(_loc7_.id);
               }
               AngryBirdsBase.singleton.popupManager.openPopup(_loc7_);
               return;
            }
            (_loc4_ = new §>%§(this.§=#Q§,this.§=#Q§.getPricePoint(0),ID,§+!p§.§`?§.currentLevel.name)).addEventListener(§?!T§.§@!9§,this.§;#r§);
            _loc4_.addEventListener(§?!T§.§'?§,this.§3$E§);
         }
         else
         {
            if(this.§%"h§)
            {
               this.§%"h§.removeEventListeners();
               this.§%"h§ = null;
            }
            this.§%"h§ = new §>-§(this.§=#Q§,this.§=#Q§.getPricePoint(0),§>-§.§,! §,ID,§+!p§.§`?§.currentLevel.name);
            this.§%"h§.addEventListener(§?!T§.§0"Z§,this.§,!G§);
            this.§%"h§.addEventListener(§?!T§.§'?§,this.§-"o§);
            this.§!-§ = new Timer(2000,1);
            this.§!-§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§"!9§);
            this.§!-§.start();
         }
      }
      
      private function §0!x§(param1:Boolean) : void
      {
         if(!§'o§)
         {
            return;
         }
         §'o§.mClip.mouseEnabled = param1;
         §'o§.mClip.mouseChildren = param1;
         §'o§.mClip.getChildByName("Tab_button_1").visible = param1;
         §'o§.mClip.getChildByName("Tab_offer_button_1").visible = param1;
         var _loc2_:§>"`§ = this.§=#Q§.getPricePoint(0);
         if(_loc2_)
         {
            if(_loc2_.campaignPrice && _loc2_.campaignPrice > 0)
            {
               §'o§.mClip.getChildByName("Tab_button_1").visible = false;
               §'o§.getItemByName("Tab_offer_1").visible = param1;
            }
            else
            {
               §'o§.getItemByName("Tab_offer_1").visible = false;
               §'o§.mClip.getChildByName("Tab_offer_button_1").visible = false;
            }
         }
         else
         {
            §'o§.mClip.getChildByName("Tab_button_1").visible = false;
            §'o§.mClip.getChildByName("Tab_offer_button_1").visible = false;
         }
         (§'o§.getItemByName("MovieClip_LoadingImage") as §=!Z§).setVisibility(!param1);
      }
      
      protected function §3$E§(param1:§?!T§) : void
      {
         §!",§.§3"1§.§,"&§();
         this.§0!x§(true);
         this.§[T§(param1.errorMessage,param1.§8!o§,param1.errorCode.toString());
      }
      
      protected function §[T§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
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
      
      protected function §,!G§(param1:§?!T§) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:§>-§ = param1.currentTarget as §>-§;
         _loc2_.removeEventListener(§?!T§.§0"Z§,this.§,!G§);
         _loc2_.removeEventListener(§?!T§.§'?§,this.§-"o§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
         }
         §'@§.trackPageView(this,§'@§.§0#6§);
         §'@§.trackTransaction(_loc2_.orderId,§`-§,_loc2_.§"^§.id,_loc2_.§"^§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §'@§.§2!c§(_loc2_.§"^§.id,this.§%"h§.pricePoint.totalQuantity);
         §'@§.trackPageView(this,§'@§.§0#6§);
         if(_loc2_.pricePoint)
         {
            _loc4_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            {
               "product":_loc2_.§"^§.id,
               "pricePoint":_loc4_
            };
            §'@§.trackTransaction(_loc2_.orderId,§`-§,_loc2_.§"^§.id,_loc2_.§"^§.id,_loc4_ + " x",_loc4_,1,0);
         }
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
         _loc2_.removeEventListeners();
         §!",§.§3"1§.§,"&§();
         dispatchEvent(new § ![§(§ ![§.§=K§,_loc2_.§"^§.id));
         close();
      }
      
      protected function §-"o§(param1:§?!T§) : void
      {
         this.§[T§(param1.errorMessage,param1.§8!o§,param1.errorCode.toString());
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
         this.§0!x§(true);
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
      
      public function §!"S§() : void
      {
         this.§0!x§(true);
      }
      
      private function §"!9§(param1:TimerEvent) : void
      {
         if(this.§!-§)
         {
            this.§!-§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"!9§);
         }
         this.§0!x§(true);
      }
      
      private function §>#q§(param1:Event) : void
      {
         this.§0!x§(false);
         close();
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
   }
}
