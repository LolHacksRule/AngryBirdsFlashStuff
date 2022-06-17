package §?!N§
{
   import § O§.§6f§;
   import §!!?§.§&#+§;
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import §!§.§="D§;
   import §%#v§.§0"j§;
   import §'#g§.§&^§;
   import §'#g§.§1"i§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
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
   import §?§.§<$?§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuickPurchaseSlingshotPopup extends AbstractPopup implements §="D§, §0"+§, §["b§
   {
      
      public static const ID:String = "QuickPurchaseSlingshotPopup";
      
      private static const §[!_§:String = "Quick Purchase Slingshot";
       
      
      private var §2!8§:String = "";
      
      private var §'$$§:§,!K§;
      
      private var § #T§:§6f§;
      
      private var § !3§:Boolean;
      
      private var §>$&§:§&^§;
      
      private var §?#"§:Timer;
      
      private var §?3§:Wallet;
      
      private var §`"y§:Number;
      
      private var §<#E§:§<$?§;
      
      public function QuickPurchaseSlingshotPopup(param1:MovieClip, param2:§,!K§, param3:§6f§)
      {
         super(§%#§.NORMAL,§9#5§.TOP,§0"j§.§-i§.Views.PopupView_QuickPurchaseSlingshotPopup[0],ID);
         this.§'$$§ = param2;
         this.§ #T§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         (§8#Y§.getItemByName("TextField_Header") as §-#j§).setText(this.§ #T§.§[L§);
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         var _loc2_:String = "Icon_Slingshot_" + this.§ #T§.§]'§;
         var _loc3_:Class = §2"O§.§`>§(_loc2_);
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.scaleX = _loc4_.scaleY = _loc4_.scaleY * 1.5;
         _loc4_.y -= 20;
         (§8#Y§.getItemByName("Tab_icon_1") as §>#8§).mClip.addChild(_loc4_);
         (§8#Y§.getItemByName("Tab_quantity_1") as §-#j§).setText(§&#+§.MULTIPLIER_STRING + "1");
         var _loc5_:§<#a§;
         if((_loc5_ = this.§'$$§.getPricePoint(0)).campaignPrice > 0)
         {
            §8#Y§.mClip["Tab_button_1"].visible = false;
            this.§4"!§("" + _loc5_.campaignPrice,"Tab_offer_button_1","" + _loc5_.price);
            ((§8#Y§.getItemByName("Tab_offer_1") as §>#8§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc5_.campaignSalePercentage + "%";
            §8#Y§.mClip["Tab_offer_button_1"].addEventListener(MouseEvent.CLICK,this.§;!l§);
         }
         else
         {
            §8#Y§.mClip["Tab_offer_button_1"].visible = false;
            this.§4"!§("" + _loc5_.price,"Tab_button_1");
            §8#Y§.mClip["Tab_button_1"].addEventListener(MouseEvent.CLICK,this.§;!l§);
         }
         this.§ !3§ = this.§'$$§.currencyID == "IVC";
         this.§+"^§();
         this.§6#+§(true);
         §&!b§.§%"J§(this.§'$$§);
         this.§<#E§ = §<$?§.§?q§;
         this.§<#E§.addEventListener(§<$?§.§ !O§,this.§;8§);
         §+$A§.§@"i§().§2K§("QUICK_PURCHASE_SLINGSHOT_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §8#Y§.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§'#+§);
         §8#Y§.mClip["Tab_button_1"].removeEventListener(MouseEvent.CLICK,this.§;!l§);
         §8#Y§.mClip["Tab_offer_button_1"].removeEventListener(MouseEvent.CLICK,this.§;!l§);
         this.§<#E§.removeEventListener(§<$?§.§ !O§,this.§;8§);
         this.§<#E§ = null;
         super.hide(param1,param2);
      }
      
      private function §+"^§() : void
      {
         this.§[D§(new Wallet(this,true,true));
         this.§?3§.§5#k§.visible = true;
         this.§`"y§ = §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§;
         this.§?3§.setCoinsAmountText(this.§`"y§);
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
         param1.dispose();
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
      
      private function §;!l§(param1:MouseEvent) : void
      {
         var _loc2_:§<#a§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§1"i§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§@#G§ = null;
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§6#+§(false);
         if(this.§ !3§)
         {
            _loc2_ = this.§'$$§.getPricePoint(0);
            _loc3_ = _loc2_.campaignPrice > 0 ? Number(_loc2_.campaignPrice) : Number(_loc2_.price);
            if((AngryBirdsBase.singleton.dataModel as §@"%§).§8!8§.§"$6§ < _loc3_)
            {
               _loc6_ = (_loc5_ = _loc3_ - (AngryBirdsBase.singleton.dataModel as §@"%§).§8!8§.§"$6§) > 1 ? "coins" : "coin";
               _loc7_ = new NotEnoughCoinsPopup(§8#Y§.mClip,"Not enough coins!","You need " + _loc5_ + " more " + _loc6_ + " to buy this. \nVisit the Coin Shop now!",§%#§.NORMAL,§9#5§.TOP);
               if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc7_.id))
               {
                  AngryBirdsBase.singleton.popupManager.§2;§(_loc7_.id);
               }
               AngryBirdsBase.singleton.popupManager.openPopup(_loc7_);
               return;
            }
            (_loc4_ = new §1"i§(this.§'$$§,this.§'$$§.getPricePoint(0),ID,§%"T§.§;`§.currentLevel.name)).addEventListener(§8K§.§`#y§,this.§&##§);
            _loc4_.addEventListener(§8K§.§<"&§,this.§7#k§);
         }
         else
         {
            if(this.§>$&§)
            {
               this.§>$&§.removeEventListeners();
               this.§>$&§ = null;
            }
            this.§>$&§ = new §&^§(this.§'$$§,this.§'$$§.getPricePoint(0),§&^§.§?$4§,ID,§%"T§.§;`§.currentLevel.name);
            this.§>$&§.addEventListener(§8K§.§ ",§,this.§6$A§);
            this.§>$&§.addEventListener(§8K§.§<"&§,this.§#n§);
            this.§?#"§ = new Timer(2000,1);
            this.§?#"§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§[#a§);
            this.§?#"§.start();
         }
      }
      
      private function §6#+§(param1:Boolean) : void
      {
         if(!§8#Y§)
         {
            return;
         }
         §8#Y§.mClip.mouseEnabled = param1;
         §8#Y§.mClip.mouseChildren = param1;
         §8#Y§.mClip.getChildByName("Tab_button_1").visible = param1;
         §8#Y§.mClip.getChildByName("Tab_offer_button_1").visible = param1;
         var _loc2_:§<#a§ = this.§'$$§.getPricePoint(0);
         if(_loc2_)
         {
            if(_loc2_.campaignPrice && _loc2_.campaignPrice > 0)
            {
               §8#Y§.mClip.getChildByName("Tab_button_1").visible = false;
               §8#Y§.getItemByName("Tab_offer_1").visible = param1;
            }
            else
            {
               §8#Y§.getItemByName("Tab_offer_1").visible = false;
               §8#Y§.mClip.getChildByName("Tab_offer_button_1").visible = false;
            }
         }
         else
         {
            §8#Y§.mClip.getChildByName("Tab_button_1").visible = false;
            §8#Y§.mClip.getChildByName("Tab_offer_button_1").visible = false;
         }
         (§8#Y§.getItemByName("MovieClip_LoadingImage") as §>#8§).setVisibility(!param1);
      }
      
      protected function §7#k§(param1:§8K§) : void
      {
         §#$D§.§?q§.§>!'§();
         this.§6#+§(true);
         this.§^!c§(param1.errorMessage,param1.§ $1§,param1.errorCode.toString());
      }
      
      protected function §^!c§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
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
      
      protected function §6$A§(param1:§8K§) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:§&^§ = param1.currentTarget as §&^§;
         _loc2_.removeEventListener(§8K§.§ ",§,this.§6$A§);
         _loc2_.removeEventListener(§8K§.§<"&§,this.§#n§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
         }
         §5"w§.trackPageView(this,§5"w§.§9`§);
         §5"w§.trackTransaction(_loc2_.orderId,§[!_§,_loc2_.§4">§.id,_loc2_.§4">§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §5"w§.§7&§(_loc2_.§4">§.id,this.§>$&§.pricePoint.totalQuantity);
         §5"w§.trackPageView(this,§5"w§.§9`§);
         if(_loc2_.pricePoint)
         {
            _loc4_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            {
               "product":_loc2_.§4">§.id,
               "pricePoint":_loc4_
            };
            §5"w§.trackTransaction(_loc2_.orderId,§[!_§,_loc2_.§4">§.id,_loc2_.§4">§.id,_loc4_ + " x",_loc4_,1,0);
         }
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
         _loc2_.removeEventListeners();
         §#$D§.§?q§.§>!'§();
         dispatchEvent(new §9"2§(§9"2§.§?"t§,_loc2_.§4">§.id));
         close();
      }
      
      protected function §#n§(param1:§8K§) : void
      {
         this.§^!c§(param1.errorMessage,param1.§ $1§,param1.errorCode.toString());
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
         this.§6#+§(true);
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
      
      public function §9#0§() : void
      {
         this.§6#+§(true);
      }
      
      private function §[#a§(param1:TimerEvent) : void
      {
         if(this.§?#"§)
         {
            this.§?#"§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§[#a§);
         }
         this.§6#+§(true);
      }
      
      private function §;8§(param1:Event) : void
      {
         this.§6#+§(false);
         close();
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
   }
}
