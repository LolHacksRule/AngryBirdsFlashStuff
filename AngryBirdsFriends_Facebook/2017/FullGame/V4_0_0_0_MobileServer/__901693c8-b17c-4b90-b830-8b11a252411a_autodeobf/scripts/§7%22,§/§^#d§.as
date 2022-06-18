package §7",§
{
   import § o§.§%"!§;
   import § o§.WarningPopup;
   import §!@§.§<"U§;
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+"E§.§9"z§;
   import §4$<§.§?§;
   import §6V§.§7#M§;
   import §6V§.§`"5§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §[!E§.§>#`§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §^#d§ extends AbstractPopup implements §7#M§
   {
      
      public static const ID:String = "PERSONALIZED_OFFER";
      
      private static var §3#K§:Boolean = true;
       
      
      private var §&"t§:§>#`§;
      
      private var §7!h§:TextField;
      
      private var §?!V§:§<"U§;
      
      private var §+"a§:Timer;
      
      public function §^#d§(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_NonSpenderAutoSale[0],ID);
         this.§&"t§ = §>#`§.§ "D§;
         this.§&"t§.addEventListener(§>#`§.§,"U§,this.update);
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      public static function §6#5§() : Boolean
      {
         return §3#K§;
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§7"C§;
      }
      
      public function §>"-§() : String
      {
         return ID;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§@"C§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§7!h§ = §1"6§.mClip.Textfield_TimeLeft as TextField;
      }
      
      private function §6!&§(param1:Boolean) : void
      {
         if(!§1"6§)
         {
            return;
         }
         §1"6§.mClip.mouseEnabled = !param1;
         §1"6§.mClip.mouseChildren = !param1;
         §1"6§.getItemByName("btnBuy").visible = !param1;
         §1"6§.getItemByName("ItemsImage").visible = !param1;
         §1"6§.getItemByName("DiscountImage").visible = !param1;
         §1"6§.mClip.AngryBirdLoader.visible = param1;
      }
      
      private function §@"C§() : void
      {
         this.§6!&§(true);
         if(!dataModel.§#"r§.§9!X§)
         {
            §4"W§.§ "D§.§@!z§();
            dataModel.§#"r§.addEventListener(Event.COMPLETE,this.§&q§);
         }
         else
         {
            this.§&q§(null);
         }
      }
      
      private function §&q§(param1:Event = null) : void
      {
         if(!dataModel.§#"r§.§9!X§ || dataModel.§#"r§.§9!X§.length == 0 || !§3#K§)
         {
            §1"6§.mClip.mouseEnabled = true;
            §1"6§.mClip.mouseChildren = true;
            return;
         }
         var _loc2_:§2#i§ = dataModel.§#"r§.§9!X§[0];
         var _loc3_:§!#q§ = _loc2_.getPricePoint(0);
         this.§6!&§(false);
         var _loc4_:§,#w§;
         ((_loc4_ = §1"6§.getItemByName("btnBuy") as §,#w§).mClip.getChildByName("NormalPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.price,true,"",_loc2_.currencyID);
         (_loc4_.mClip.getChildByName("CampaignPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.campaignPrice,true,"",_loc2_.currencyID);
         var _loc5_:§'=§;
         ((_loc5_ = §1"6§.getItemByName("DiscountImage") as §'=§).mClip.getChildByName("DiscountPercentage") as TextField).text = _loc3_.campaignSalePercentage + "%";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "BUY":
               this.§6!&§(true);
               AngryBirdsBase.singleton.exitFullScreen();
               if(this.§?!V§)
               {
                  this.§?!V§.removeEventListeners();
                  this.§?!V§ = null;
               }
               this.§?!V§ = new §<"U§(dataModel.§#"r§.§9!X§[0],dataModel.§#"r§.§9!X§[0].getPricePoint(0),§<"U§.§ $4§,ID);
               this.§?!V§.addEventListener(§9"z§.§2!c§,this.§<$#§);
               this.§?!V§.addEventListener(§9"z§.§@H§,this.§=$#§);
               this.§+"a§ = new Timer(3000,1);
               this.§+"a§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
               this.§+"a§.start();
         }
      }
      
      private function update(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§&"t§)
         {
            if(!this.§&"t§.§+"]§())
            {
               dispatchEvent(new §?#7§(§?#7§.CLOSE,this));
               return;
            }
            if(this.§7!h§)
            {
               _loc2_ = this.§&"t§.§ Q§();
               if(_loc2_ != this.§7!h§.text)
               {
                  this.§7!h§.text = _loc2_;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§&"t§)
         {
            this.§&"t§.removeEventListener(§>#`§.§,"U§,this.update);
            this.§&"t§ = null;
         }
         if(this.§+"a§)
         {
            this.§+"a§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
            this.§+"a§ = null;
         }
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
      }
      
      protected function §<$#§(param1:§9"z§) : void
      {
         var _loc3_:Number = NaN;
         §3#K§ = false;
         var _loc2_:§<"U§ = param1.currentTarget as §<"U§;
         _loc2_.removeEventListener(§9"z§.§2!c§,this.§<$#§);
         _loc2_.removeEventListener(§9"z§.§@H§,this.§=$#§);
         if(this.§?!V§)
         {
            §`"5§.§0"o§(_loc2_.§in§.id,this.§?!V§.pricePoint.totalQuantity);
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
         §`"5§.trackPageView(this,§`"5§.§9>§);
         if(_loc2_.pricePoint)
         {
            _loc3_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            §`"5§.trackTransaction(_loc2_.orderId,ID,_loc2_.§in§.id,_loc2_.§in§.id,_loc3_ + " x",_loc3_,1,0);
         }
         _loc2_.removeEventListeners();
         dataModel.§#"r§.§ "O§(true);
         §4"W§.§ "D§.§@!z§();
         if(this.§&"t§)
         {
            this.§&"t§.§[!]§();
         }
         dispatchEvent(new §?#7§(§?#7§.CLOSE,this));
      }
      
      protected function §=$#§(param1:§9"z§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§%"!§.§4!P§,§^#o§.TOP,param1.errorMessage,param1.§7$+§,param1.errorCode.toString(),false));
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
         this.§6!&§(false);
      }
      
      private function §^"b§(param1:TimerEvent) : void
      {
         if(this.§+"a§)
         {
            this.§+"a§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
            this.§+"a§ = null;
         }
         this.§6!&§(false);
      }
   }
}
