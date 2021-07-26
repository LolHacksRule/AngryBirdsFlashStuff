package §&"`§
{
   import § %§.§1Q§;
   import §!$;§.§8#F§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §1"N§.§4k§;
   import §2"5§.§1"?§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §3#T§.§'§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §=!,§.§1!l§;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class NonSpenderAutoSalePopup extends AbstractPopup implements §7E§
   {
      
      public static const ID:String = "PERSONALIZED_OFFER";
      
      private static var §1!D§:Boolean = true;
       
      
      private var §@!e§:§1!l§;
      
      private var §`!p§:TextField;
      
      private var §+#v§:§4k§;
      
      private var §<!@§:Timer;
      
      public function NonSpenderAutoSalePopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_NonSpenderAutoSale[0],ID);
         this.§@!e§ = §1!l§.§6!§;
         this.§@!e§.addEventListener(§1!l§.§ "[§,this.update);
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      public static function §5!4§() : Boolean
      {
         return §1!D§;
      }
      
      public function §!3§() : String
      {
         return §`"x§.§[$6§;
      }
      
      public function §0'§() : String
      {
         return ID;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§9E§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§`!p§ = §,#2§.mClip.Textfield_TimeLeft as TextField;
      }
      
      private function §"!M§(param1:Boolean) : void
      {
         if(!§,#2§)
         {
            return;
         }
         §,#2§.mClip.mouseEnabled = !param1;
         §,#2§.mClip.mouseChildren = !param1;
         §,#2§.getItemByName("btnBuy").visible = !param1;
         §,#2§.getItemByName("ItemsImage").visible = !param1;
         §,#2§.getItemByName("DiscountImage").visible = !param1;
         §,#2§.mClip.AngryBirdLoader.visible = param1;
      }
      
      private function §9E§() : void
      {
         this.§"!M§(true);
         if(!dataModel.§-!h§.§="]§)
         {
            §-#+§.§6!§.§<"k§();
            dataModel.§-!h§.addEventListener(Event.COMPLETE,this.§52§);
         }
         else
         {
            this.§52§(null);
         }
      }
      
      private function §52§(param1:Event = null) : void
      {
         if(!dataModel.§-!h§.§="]§ || dataModel.§-!h§.§="]§.length == 0 || !§1!D§)
         {
            §,#2§.mClip.mouseEnabled = true;
            §,#2§.mClip.mouseChildren = true;
            return;
         }
         var _loc2_:§"#x§ = dataModel.§-!h§.§="]§[0];
         var _loc3_:§##P§ = _loc2_.getPricePoint(0);
         this.§"!M§(false);
         var _loc4_:§>"0§;
         ((_loc4_ = §,#2§.getItemByName("btnBuy") as §>"0§).mClip.getChildByName("NormalPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.price,true,"",_loc2_.currencyID);
         (_loc4_.mClip.getChildByName("CampaignPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.campaignPrice,true,"",_loc2_.currencyID);
         var _loc5_:§@N§;
         ((_loc5_ = §,#2§.getItemByName("DiscountImage") as §@N§).mClip.getChildByName("DiscountPercentage") as TextField).text = _loc3_.campaignSalePercentage + "%";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "BUY":
               this.§"!M§(true);
               AngryBirdsBase.singleton.exitFullScreen();
               if(this.§+#v§)
               {
                  this.§+#v§.removeEventListeners();
                  this.§+#v§ = null;
               }
               this.§+#v§ = new §4k§(dataModel.§-!h§.§="]§[0],dataModel.§-!h§.§="]§[0].getPricePoint(0),§4k§.§4!c§,ID);
               this.§+#v§.addEventListener(§1"?§.§7"^§,this.§3![§);
               this.§+#v§.addEventListener(§1"?§.§^#M§,this.§=##§);
               this.§<!@§ = new Timer(3000,1);
               this.§<!@§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§24§);
               this.§<!@§.start();
         }
      }
      
      private function update(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§@!e§)
         {
            if(!this.§@!e§.§-<§())
            {
               dispatchEvent(new §8#F§(§8#F§.CLOSE,this));
               return;
            }
            if(this.§`!p§)
            {
               _loc2_ = this.§@!e§.§ d§();
               if(_loc2_ != this.§`!p§.text)
               {
                  this.§`!p§.text = _loc2_;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§@!e§)
         {
            this.§@!e§.removeEventListener(§1!l§.§ "[§,this.update);
            this.§@!e§ = null;
         }
         if(this.§<!@§)
         {
            this.§<!@§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§24§);
            this.§<!@§ = null;
         }
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
      }
      
      protected function §3![§(param1:§1"?§) : void
      {
         var _loc3_:Number = NaN;
         §1!D§ = false;
         var _loc2_:§4k§ = param1.currentTarget as §4k§;
         _loc2_.removeEventListener(§1"?§.§7"^§,this.§3![§);
         _loc2_.removeEventListener(§1"?§.§^#M§,this.§=##§);
         if(this.§+#v§)
         {
            §`"x§.§!!4§(_loc2_.§2"X§.id,this.§+#v§.pricePoint.totalQuantity);
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         if(_loc2_.pricePoint)
         {
            _loc3_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            §`"x§.trackTransaction(_loc2_.orderId,ID,_loc2_.§2"X§.id,_loc2_.§2"X§.id,_loc3_ + " x",_loc3_,1,0);
         }
         _loc2_.removeEventListeners();
         dataModel.§-!h§.§6"s§(true);
         §-#+§.§6!§.§<"k§();
         if(this.§@!e§)
         {
            this.§@!e§.§?!5§();
         }
         dispatchEvent(new §8#F§(§8#F§.CLOSE,this));
      }
      
      protected function §=##§(param1:§1"?§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§]"$§.§[#=§,§^"U§.TOP,param1.errorMessage,param1.§%C§,param1.errorCode.toString(),false));
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
         this.§"!M§(false);
      }
      
      private function §24§(param1:TimerEvent) : void
      {
         if(this.§<!@§)
         {
            this.§<!@§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§24§);
            this.§<!@§ = null;
         }
         this.§"!M§(false);
      }
   }
}
