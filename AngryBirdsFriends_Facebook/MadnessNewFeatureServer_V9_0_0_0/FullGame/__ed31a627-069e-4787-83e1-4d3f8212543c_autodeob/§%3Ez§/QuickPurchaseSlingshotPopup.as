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
   import §-$!§.§ $<§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
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
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuickPurchaseSlingshotPopup extends AbstractPopup implements §%!#§, §,!n§, §&>§
   {
      
      public static const ID:String = "QuickPurchaseSlingshotPopup";
      
      private static const §5$,§:String = "Quick Purchase Slingshot";
       
      
      private var §6""§:String = "";
      
      private var §3$@§:§=n§;
      
      private var §;"+§:§ $<§;
      
      private var §!t§:Boolean;
      
      private var §""2§:§%e§;
      
      private var §7!q§:Timer;
      
      private var §1!B§:Wallet;
      
      private var §?=§:Number;
      
      private var §->§:§<!M§;
      
      public function QuickPurchaseSlingshotPopup(param1:MovieClip, param2:§=n§, param3:§ $<§)
      {
         super(§#"l§.NORMAL,§]"Y§.TOP,§?l§.§3m§.Views.PopupView_QuickPurchaseSlingshotPopup[0],ID);
         this.§3$@§ = param2;
         this.§;"+§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc6_:§'!`§ = null;
         super.show(param1);
         (§&!M§.getItemByName("TextField_Header") as §`"$§).setText(this.§;"+§.§ #=§);
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         var _loc2_:String = "Icon_Slingshot_" + this.§;"+§.§1#7§;
         var _loc3_:Class = §6$A§.§1!m§(_loc2_);
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.scaleX = _loc4_.scaleY = _loc4_.scaleY * 1.5;
         _loc4_.y -= 20;
         (§&!M§.getItemByName("Tab_icon_1") as §'!`§).mClip.addChild(_loc4_);
         (§&!M§.getItemByName("Tab_quantity_1") as §`"$§).setText(§2$0§.MULTIPLIER_STRING + "1");
         var _loc5_:§5u§;
         if((_loc5_ = this.§3$@§.getPricePoint(0)).campaignPrice > 0)
         {
            §&!M§.mClip["Tab_button_1"].visible = false;
            this.§5`§("" + _loc5_.campaignPrice,"Tab_offer_button_1","" + _loc5_.price);
            ((_loc6_ = §&!M§.getItemByName("Tab_offer_1") as §'!`§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc5_.campaignSalePercentage + "%";
            §&!M§.mClip["Tab_offer_button_1"].addEventListener(MouseEvent.CLICK,this.§&#^§);
         }
         else
         {
            §&!M§.mClip["Tab_offer_button_1"].visible = false;
            this.§5`§("" + _loc5_.price,"Tab_button_1");
            §&!M§.mClip["Tab_button_1"].addEventListener(MouseEvent.CLICK,this.§&#^§);
         }
         this.§!t§ = this.§3$@§.currencyID == "IVC";
         this.§=3§();
         this.§+$;§(true);
         §;"x§.§,!]§(this.§3$@§);
         this.§->§ = §<!M§.§`"H§;
         this.§->§.addEventListener(§<!M§.§"! §,this.§>#§);
         §!!K§.§%#S§().§""o§("QUICK_PURCHASE_SLINGSHOT_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §&!M§.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§@!2§);
         §&!M§.mClip["Tab_button_1"].removeEventListener(MouseEvent.CLICK,this.§&#^§);
         §&!M§.mClip["Tab_offer_button_1"].removeEventListener(MouseEvent.CLICK,this.§&#^§);
         this.§->§.removeEventListener(§<!M§.§"! §,this.§>#§);
         this.§->§ = null;
         super.hide(param1,param2);
      }
      
      private function §=3§() : void
      {
         this.§0!A§(new Wallet(this,true,true));
         this.§1!B§.§+F§.visible = true;
         this.§?=§ = §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§;
         this.§1!B§.setCoinsAmountText(this.§?=§);
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
         param1.dispose();
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
      
      private function §&#^§(param1:MouseEvent) : void
      {
         var _loc2_:§5u§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§2"O§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§5!-§ = null;
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§+$;§(false);
         if(this.§!t§)
         {
            _loc2_ = this.§3$@§.getPricePoint(0);
            _loc3_ = _loc2_.campaignPrice > 0 ? Number(_loc2_.campaignPrice) : Number(_loc2_.price);
            if((AngryBirdsBase.singleton.dataModel as §4!Q§).§1W§.§<B§ < _loc3_)
            {
               _loc6_ = (_loc5_ = _loc3_ - (AngryBirdsBase.singleton.dataModel as §4!Q§).§1W§.§<B§) > 1 ? "coins" : "coin";
               _loc7_ = new NotEnoughCoinsPopup(§&!M§.mClip,"Not enough coins!","You need " + _loc5_ + " more " + _loc6_ + " to buy this. \nVisit the Coin Shop now!",§#"l§.NORMAL,§]"Y§.TOP);
               if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc7_.id))
               {
                  AngryBirdsBase.singleton.popupManager.§7$9§(_loc7_.id);
               }
               AngryBirdsBase.singleton.popupManager.openPopup(_loc7_);
               return;
            }
            (_loc4_ = new §2"O§(this.§3$@§,this.§3$@§.getPricePoint(0),ID,§7n§.§6#K§.currentLevel.name)).addEventListener(§4?§.§?w§,this.§%$#§);
            _loc4_.addEventListener(§4?§.§3$2§,this.§2#J§);
         }
         else
         {
            if(this.§""2§)
            {
               this.§""2§.removeEventListeners();
               this.§""2§ = null;
            }
            this.§""2§ = new §%e§(this.§3$@§,this.§3$@§.getPricePoint(0),§%e§.§1#S§,ID,§7n§.§6#K§.currentLevel.name);
            this.§""2§.addEventListener(§4?§.§3!b§,this.§7-§);
            this.§""2§.addEventListener(§4?§.§3$2§,this.§@$C§);
            this.§7!q§ = new Timer(2000,1);
            this.§7!q§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;#g§);
            this.§7!q§.start();
         }
      }
      
      private function §+$;§(param1:Boolean) : void
      {
         if(!§&!M§)
         {
            return;
         }
         §&!M§.mClip.mouseEnabled = param1;
         §&!M§.mClip.mouseChildren = param1;
         §&!M§.mClip.getChildByName("Tab_button_1").visible = param1;
         §&!M§.mClip.getChildByName("Tab_offer_button_1").visible = param1;
         var _loc2_:§5u§ = this.§3$@§.getPricePoint(0);
         if(_loc2_)
         {
            if(_loc2_.campaignPrice && _loc2_.campaignPrice > 0)
            {
               §&!M§.mClip.getChildByName("Tab_button_1").visible = false;
               §&!M§.getItemByName("Tab_offer_1").visible = param1;
            }
            else
            {
               §&!M§.getItemByName("Tab_offer_1").visible = false;
               §&!M§.mClip.getChildByName("Tab_offer_button_1").visible = false;
            }
         }
         else
         {
            §&!M§.mClip.getChildByName("Tab_button_1").visible = false;
            §&!M§.mClip.getChildByName("Tab_offer_button_1").visible = false;
         }
         (§&!M§.getItemByName("MovieClip_LoadingImage") as §'!`§).setVisibility(!param1);
      }
      
      protected function §2#J§(param1:§4?§) : void
      {
         § $?§.§`"H§.§-!P§();
         this.§+$;§(true);
         this.§;%§(param1.errorMessage,param1.§5I§,param1.errorCode.toString());
      }
      
      protected function §;%§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
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
      
      protected function §7-§(param1:§4?§) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:§%e§ = param1.currentTarget as §%e§;
         _loc2_.removeEventListener(§4?§.§3!b§,this.§7-§);
         _loc2_.removeEventListener(§4?§.§3$2§,this.§@$C§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
         }
         §0I§.trackPageView(this,§0I§.§'#u§);
         §0I§.trackTransaction(_loc2_.orderId,§5$,§,_loc2_.§6!-§.id,_loc2_.§6!-§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         var _loc3_:Object = {};
         §0I§.§6#?§(_loc2_.§6!-§.id,this.§""2§.pricePoint.totalQuantity);
         §0I§.trackPageView(this,§0I§.§'#u§);
         if(_loc2_.pricePoint)
         {
            _loc4_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            _loc3_ = {
               "product":_loc2_.§6!-§.id,
               "pricePoint":_loc4_
            };
            §0I§.trackTransaction(_loc2_.orderId,§5$,§,_loc2_.§6!-§.id,_loc2_.§6!-§.id,_loc4_ + " x",_loc4_,1,0);
         }
         if(this.§""2§)
         {
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
         _loc2_.removeEventListeners();
         § $?§.§`"H§.§-!P§();
         dispatchEvent(new §^"b§(§^"b§.§"&§,_loc2_.§6!-§.id));
         close();
      }
      
      protected function §@$C§(param1:§4?§) : void
      {
         this.§;%§(param1.errorMessage,param1.§5I§,param1.errorCode.toString());
         if(this.§""2§)
         {
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
         this.§+$;§(true);
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
      
      public function §#u§() : void
      {
         this.§+$;§(true);
      }
      
      private function §;#g§(param1:TimerEvent) : void
      {
         if(this.§7!q§)
         {
            this.§7!q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#g§);
         }
         this.§+$;§(true);
      }
      
      private function §>#§(param1:Event) : void
      {
         this.§+$;§(false);
         close();
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
   }
}
