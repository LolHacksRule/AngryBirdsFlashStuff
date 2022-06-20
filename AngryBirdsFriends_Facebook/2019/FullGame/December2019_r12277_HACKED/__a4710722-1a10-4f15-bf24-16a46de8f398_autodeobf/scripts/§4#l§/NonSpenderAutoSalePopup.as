package §4#l§
{
   import § h§.§-!S§;
   import § h§.WarningPopup;
   import §#Q§.§ l§;
   import §+Z§.§?!T§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §5"l§.§0!b§;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §@!_§.§>-§;
   import §[#A§.§&n§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class NonSpenderAutoSalePopup extends AbstractPopup implements §'r§
   {
      
      public static const ID:String = "PERSONALIZED_OFFER";
      
      private static var §1!H§:Boolean = true;
       
      
      private var §^!d§:§ l§;
      
      private var §!#G§:TextField;
      
      private var §%"h§:§>-§;
      
      private var §!-§:Timer;
      
      public function NonSpenderAutoSalePopup(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_NonSpenderAutoSale[0],ID);
         this.§^!d§ = § l§.§3"1§;
         this.§^!d§.addEventListener(§ l§.§%,§,this.update);
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      public static function §=!P§() : Boolean
      {
         return §1!H§;
      }
      
      public function §2!^§() : String
      {
         return §'@§.§5"!§;
      }
      
      public function §6#U§() : String
      {
         return ID;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§9"G§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§!#G§ = §'o§.mClip.Textfield_TimeLeft as TextField;
      }
      
      private function §%#h§(param1:Boolean) : void
      {
         if(!§'o§)
         {
            return;
         }
         §'o§.mClip.mouseEnabled = !param1;
         §'o§.mClip.mouseChildren = !param1;
         §'o§.getItemByName("btnBuy").visible = !param1;
         §'o§.getItemByName("ItemsImage").visible = !param1;
         §'o§.getItemByName("DiscountImage").visible = !param1;
         §'o§.mClip.AngryBirdLoader.visible = param1;
      }
      
      private function §9"G§() : void
      {
         this.§%#h§(true);
         if(!dataModel.§+!J§.§5"@§)
         {
            §!",§.§3"1§.§,"&§();
            dataModel.§+!J§.addEventListener(Event.COMPLETE,this.§"W§);
         }
         else
         {
            this.§"W§(null);
         }
      }
      
      private function §"W§(param1:Event = null) : void
      {
         if(!dataModel.§+!J§.§5"@§ || dataModel.§+!J§.§5"@§.length == 0 || !§1!H§)
         {
            §'o§.mClip.mouseEnabled = true;
            §'o§.mClip.mouseChildren = true;
            return;
         }
         var _loc2_:§8#E§ = dataModel.§+!J§.§5"@§[0];
         var _loc3_:§>"`§ = _loc2_.getPricePoint(0);
         this.§%#h§(false);
         var _loc4_:§;!b§;
         ((_loc4_ = §'o§.getItemByName("btnBuy") as §;!b§).mClip.getChildByName("NormalPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.price,true,"",_loc2_.currencyID);
         (_loc4_.mClip.getChildByName("CampaignPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.campaignPrice,true,"",_loc2_.currencyID);
         ((§'o§.getItemByName("DiscountImage") as §=!Z§).mClip.getChildByName("DiscountPercentage") as TextField).text = _loc3_.campaignSalePercentage + "%";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "BUY":
               this.§%#h§(true);
               AngryBirdsBase.singleton.exitFullScreen();
               if(this.§%"h§)
               {
                  this.§%"h§.removeEventListeners();
                  this.§%"h§ = null;
               }
               this.§%"h§ = new §>-§(dataModel.§+!J§.§5"@§[0],dataModel.§+!J§.§5"@§[0].getPricePoint(0),§>-§.§,! §,ID);
               this.§%"h§.addEventListener(§?!T§.§0"Z§,this.§,!G§);
               this.§%"h§.addEventListener(§?!T§.§'?§,this.§-"o§);
               this.§!-§ = new Timer(3000,1);
               this.§!-§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§"!9§);
               this.§!-§.start();
         }
      }
      
      private function update(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§^!d§)
         {
            if(!this.§^!d§.§7"O§())
            {
               dispatchEvent(new §0!b§(§0!b§.CLOSE,this));
               return;
            }
            if(this.§!#G§)
            {
               _loc2_ = this.§^!d§.§&!§();
               if(_loc2_ != this.§!#G§.text)
               {
                  this.§!#G§.text = _loc2_;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§^!d§)
         {
            this.§^!d§.removeEventListener(§ l§.§%,§,this.update);
            this.§^!d§ = null;
         }
         if(this.§!-§)
         {
            this.§!-§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"!9§);
            this.§!-§ = null;
         }
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
      }
      
      protected function §,!G§(param1:§?!T§) : void
      {
         var _loc3_:Number = NaN;
         §1!H§ = false;
         var _loc2_:§>-§ = param1.currentTarget as §>-§;
         _loc2_.removeEventListener(§?!T§.§0"Z§,this.§,!G§);
         _loc2_.removeEventListener(§?!T§.§'?§,this.§-"o§);
         if(this.§%"h§)
         {
            §'@§.§2!c§(_loc2_.§"^§.id,this.§%"h§.pricePoint.totalQuantity);
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
         §'@§.trackPageView(this,§'@§.§0#6§);
         if(_loc2_.pricePoint)
         {
            _loc3_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            §'@§.trackTransaction(_loc2_.orderId,ID,_loc2_.§"^§.id,_loc2_.§"^§.id,_loc3_ + " x",_loc3_,1,0);
         }
         _loc2_.removeEventListeners();
         dataModel.§+!J§.§!$"§(true);
         §!",§.§3"1§.§,"&§();
         if(this.§^!d§)
         {
            this.§^!d§.§8#G§();
         }
         dispatchEvent(new §0!b§(§0!b§.CLOSE,this));
      }
      
      protected function §-"o§(param1:§?!T§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§-!S§.§ !^§,§## §.TOP,param1.errorMessage,param1.§8!o§,param1.errorCode.toString(),false));
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
         this.§%#h§(false);
      }
      
      private function §"!9§(param1:TimerEvent) : void
      {
         if(this.§!-§)
         {
            this.§!-§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"!9§);
            this.§!-§ = null;
         }
         this.§%#h§(false);
      }
   }
}
