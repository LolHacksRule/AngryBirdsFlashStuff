package §?P§
{
   import § %§.§1Q§;
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §&"`§.§<7§;
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
   import §4"R§.§'#v§;
   import §;#D§.§3#U§;
   import §<h§.§%M§;
   import §<h§.§@N§;
   import §=!,§.§1!l§;
   import §@!M§.§!"p§;
   import §[#[§.§=#Q§;
   import §`7§.§ try§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuickPurchaseSlingshotPopup extends AbstractPopup implements §8#§, §7E§, §9#a§
   {
      
      public static const ID:String = "QuickPurchaseSlingshotPopup";
      
      private static const §>E§:String = "Quick Purchase Slingshot";
       
      
      private var §;#8§:String = "";
      
      private var §!!b§:§"#x§;
      
      private var §<$?§:§'#v§;
      
      private var §4"!§:Boolean;
      
      private var §+#v§:§4k§;
      
      private var §<!@§:Timer;
      
      private var §&"K§:Wallet;
      
      private var §@$ §:Number;
      
      private var §@!e§:§1!l§;
      
      public function QuickPurchaseSlingshotPopup(param1:MovieClip, param2:§"#x§, param3:§'#v§)
      {
         super(§]"$§.NORMAL,§^"U§.TOP,§1Q§.§5T§.Views.PopupView_QuickPurchaseSlingshotPopup[0],ID);
         this.§!!b§ = param2;
         this.§<$?§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc6_:§@N§ = null;
         super.show(param1);
         (§,#2§.getItemByName("TextField_Header") as §%M§).setText(this.§<$?§.§9§);
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         var _loc2_:String = "Icon_Slingshot_" + this.§<$?§.§5"g§;
         var _loc3_:Class = §!"f§.§##?§(_loc2_);
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.scaleX = _loc4_.scaleY = _loc4_.scaleY * 1.5;
         _loc4_.y -= 20;
         (§,#2§.getItemByName("Tab_icon_1") as §@N§).mClip.addChild(_loc4_);
         (§,#2§.getItemByName("Tab_quantity_1") as §%M§).setText(§<7§.MULTIPLIER_STRING + "1");
         var _loc5_:§##P§;
         if((_loc5_ = this.§!!b§.getPricePoint(0)).campaignPrice > 0)
         {
            §,#2§.mClip["Tab_button_1"].visible = false;
            this.§,a§("" + _loc5_.campaignPrice,"Tab_offer_button_1","" + _loc5_.price);
            ((_loc6_ = §,#2§.getItemByName("Tab_offer_1") as §@N§).mClip.getChildByName("Sale_Percentage") as TextField).text = _loc5_.campaignSalePercentage + "%";
            §,#2§.mClip["Tab_offer_button_1"].addEventListener(MouseEvent.CLICK,this.§9#L§);
         }
         else
         {
            §,#2§.mClip["Tab_offer_button_1"].visible = false;
            this.§,a§("" + _loc5_.price,"Tab_button_1");
            §,#2§.mClip["Tab_button_1"].addEventListener(MouseEvent.CLICK,this.§9#L§);
         }
         this.§4"!§ = this.§!!b§.currencyID == "IVC";
         this.§`!J§();
         this.§0Q§(true);
         §=#Q§.§"!8§(this.§!!b§);
         this.§@!e§ = §1!l§.§6!§;
         this.§@!e§.addEventListener(§1!l§.§>#,§,this.§'"r§);
         § try§.§!!t§().§%"?§("QUICK_PURCHASE_SLINGSHOT_POPUP");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §,#2§.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§="!§);
         §,#2§.mClip["Tab_button_1"].removeEventListener(MouseEvent.CLICK,this.§9#L§);
         §,#2§.mClip["Tab_offer_button_1"].removeEventListener(MouseEvent.CLICK,this.§9#L§);
         this.§@!e§.removeEventListener(§1!l§.§>#,§,this.§'"r§);
         this.§@!e§ = null;
         super.hide(param1,param2);
      }
      
      private function §`!J§() : void
      {
         this.§[?§(new Wallet(this,true,true));
         this.§&"K§.§=#-§.visible = true;
         this.§@$ § = §#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§;
         this.§&"K§.setCoinsAmountText(this.§@$ §);
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
         param1.dispose();
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
      
      private function §9#L§(param1:MouseEvent) : void
      {
         var _loc2_:§##P§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§""X§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§%#;§ = null;
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§0Q§(false);
         if(this.§4"!§)
         {
            _loc2_ = this.§!!b§.getPricePoint(0);
            _loc3_ = _loc2_.campaignPrice > 0 ? Number(_loc2_.campaignPrice) : Number(_loc2_.price);
            if((AngryBirdsBase.singleton.dataModel as §#"8§).§""[§.§##!§ < _loc3_)
            {
               _loc6_ = (_loc5_ = int(_loc3_ - (AngryBirdsBase.singleton.dataModel as §#"8§).§""[§.§##!§)) > 1 ? "coins" : "coin";
               _loc7_ = new NotEnoughCoinsPopup(§,#2§.mClip,"Not enough coins!","You need " + _loc5_ + " more " + _loc6_ + " to buy this. \nVisit the Coin Shop now!",§]"$§.NORMAL,§^"U§.TOP);
               if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc7_.id))
               {
                  AngryBirdsBase.singleton.popupManager.§""^§(_loc7_.id);
               }
               AngryBirdsBase.singleton.popupManager.openPopup(_loc7_);
               return;
            }
            (_loc4_ = new §""X§(this.§!!b§,this.§!!b§.getPricePoint(0),ID,§3#U§.§#$4§.currentLevel.name)).addEventListener(§1"?§.§=#j§,this.§@!J§);
            _loc4_.addEventListener(§1"?§.§^#M§,this.§+$8§);
         }
         else
         {
            if(this.§+#v§)
            {
               this.§+#v§.removeEventListeners();
               this.§+#v§ = null;
            }
            this.§+#v§ = new §4k§(this.§!!b§,this.§!!b§.getPricePoint(0),§4k§.§4!c§,ID,§3#U§.§#$4§.currentLevel.name);
            this.§+#v§.addEventListener(§1"?§.§7"^§,this.§3![§);
            this.§+#v§.addEventListener(§1"?§.§^#M§,this.§=##§);
            this.§<!@§ = new Timer(2000,1);
            this.§<!@§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§24§);
            this.§<!@§.start();
         }
      }
      
      private function §0Q§(param1:Boolean) : void
      {
         if(!§,#2§)
         {
            return;
         }
         §,#2§.mClip.mouseEnabled = param1;
         §,#2§.mClip.mouseChildren = param1;
         §,#2§.mClip.getChildByName("Tab_button_1").visible = param1;
         §,#2§.mClip.getChildByName("Tab_offer_button_1").visible = param1;
         var _loc2_:§##P§ = this.§!!b§.getPricePoint(0);
         if(_loc2_)
         {
            if(_loc2_.campaignPrice && _loc2_.campaignPrice > 0)
            {
               §,#2§.mClip.getChildByName("Tab_button_1").visible = false;
               §,#2§.getItemByName("Tab_offer_1").visible = param1;
            }
            else
            {
               §,#2§.getItemByName("Tab_offer_1").visible = false;
               §,#2§.mClip.getChildByName("Tab_offer_button_1").visible = false;
            }
         }
         else
         {
            §,#2§.mClip.getChildByName("Tab_button_1").visible = false;
            §,#2§.mClip.getChildByName("Tab_offer_button_1").visible = false;
         }
         (§,#2§.getItemByName("MovieClip_LoadingImage") as §@N§).setVisibility(!param1);
      }
      
      protected function §+$8§(param1:§1"?§) : void
      {
         §-#+§.§6!§.§<"k§();
         this.§0Q§(true);
         this.§<#Y§(param1.errorMessage,param1.§%C§,param1.errorCode.toString());
      }
      
      protected function §<#Y§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
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
      
      protected function §3![§(param1:§1"?§) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:§4k§ = param1.currentTarget as §4k§;
         _loc2_.removeEventListener(§1"?§.§7"^§,this.§3![§);
         _loc2_.removeEventListener(§1"?§.§^#M§,this.§=##§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
         }
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         §`"x§.trackTransaction(_loc2_.orderId,§>E§,_loc2_.§2"X§.id,_loc2_.§2"X§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         var _loc3_:Object = {};
         §`"x§.§!!4§(_loc2_.§2"X§.id,this.§+#v§.pricePoint.totalQuantity);
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         if(_loc2_.pricePoint)
         {
            _loc4_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            _loc3_ = {
               "product":_loc2_.§2"X§.id,
               "pricePoint":_loc4_
            };
            §`"x§.trackTransaction(_loc2_.orderId,§>E§,_loc2_.§2"X§.id,_loc2_.§2"X§.id,_loc4_ + " x",_loc4_,1,0);
         }
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
         _loc2_.removeEventListeners();
         §-#+§.§6!§.§<"k§();
         dispatchEvent(new §6"^§(§6"^§.§3!<§,_loc2_.§2"X§.id));
         close();
      }
      
      protected function §=##§(param1:§1"?§) : void
      {
         this.§<#Y§(param1.errorMessage,param1.§%C§,param1.errorCode.toString());
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
         this.§0Q§(true);
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
      
      public function §^!7§() : void
      {
         this.§0Q§(true);
      }
      
      private function §24§(param1:TimerEvent) : void
      {
         if(this.§<!@§)
         {
            this.§<!@§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§24§);
         }
         this.§0Q§(true);
      }
      
      private function §'"r§(param1:Event) : void
      {
         this.§0Q§(false);
         close();
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
   }
}
