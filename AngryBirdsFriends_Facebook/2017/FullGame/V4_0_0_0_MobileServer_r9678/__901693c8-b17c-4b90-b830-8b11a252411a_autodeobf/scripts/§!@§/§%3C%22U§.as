package §!@§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § o§.ErrorPopup;
   import §&"J§.§4"W§;
   import §+"E§.§9"z§;
   import §6!0§.§ "8§;
   import §6V§.§4!v§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §7",§.§!#q§;
   import §7",§.§2#i§;
   import §7",§.§<!H§;
   import §;#r§.§"g§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §<"U§ extends §["Q§
   {
      
      public static const §1">§:String = "PurchaseTimerCompleted";
      
      public static const § $4§:int = 0;
      
      public static const §9$;§:int = 1;
      
      public static const §'#y§:int = 2;
       
      
      private var §^$%§:Timer;
      
      private var §!#L§:Boolean = false;
      
      private var §+D§:Boolean = false;
      
      private var §'!K§:Boolean;
      
      private var §7#+§:Boolean;
      
      private var §]$$§:int = 0;
      
      public function §<"U§(param1:§2#i§, param2:§!#q§, param3:int = 0, param4:String = "", param5:String = "")
      {
         this.§^$%§ = new Timer(3000,1);
         this.§]$$§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function loadBuyItems() : void
      {
         if(§%$+§)
         {
            return;
         }
         §%$+§ = new §4"v§();
         §%$+§.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         §%$+§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §%$+§.load(_loc1_);
      }
      
      private function §^#^§(param1:String = "") : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(ExternalInterface.available)
         {
            if(!this.§!#L§)
            {
               if(!this.§'!K§)
               {
                  § "8§.addCallback("purchaseComplete",this.§@O§);
                  this.§'!K§ = true;
               }
               if(!this.§7#+§)
               {
                  § "8§.addCallback("purchaseFailed",this.§#!9§);
                  this.§7#+§ = true;
               }
               this.§+D§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               _loc2_ = this.§-#a§();
               if(this.§]$$§ == §9$;§)
               {
                  § "8§.§ "§(_loc2_,(§9#A§ as §<!H§).id,§9#A§.totalQuantity,param1);
               }
               else if(this.§]$$§ == §'#y§)
               {
                  § "8§.§ "§(_loc2_,param1);
               }
               else
               {
                  if(!§in§ || !§in§.ogo || !§9#A§)
                  {
                     this.§^$%§.reset();
                     dispatchEvent(new §9"z§(§9"z§.§@H§,false,false,null,3001));
                     return;
                  }
                  § "8§.§ "§(_loc2_,§in§.ogo + "_" + §9#A§.totalQuantity + "_" + param1);
               }
               this.§!#L§ = true;
               this.§^$%§.reset();
               this.§^$%§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
               this.§^$%§.start();
               _loc3_ = this.§each §();
               §`"5§.§=Q§(_loc3_,§9#A§.totalQuantity);
            }
         }
      }
      
      private function §each §() : String
      {
         var _loc1_:* = §in§.id;
         switch(this.§]$$§)
         {
            case § $4§:
               _loc1_ = §in§.id;
               break;
            case §9$;§:
               _loc1_ = §in§.id + "_PayByMobile_";
               break;
            case §'#y§:
               _loc1_ = "_PayByGiftCard";
         }
         return _loc1_;
      }
      
      private function §-#a§() : String
      {
         var _loc1_:String = "placeOrder";
         switch(this.§]$$§)
         {
            case § $4§:
               _loc1_ = "placeOrder";
               break;
            case §9$;§:
               _loc1_ = "placeOrderMobile";
               break;
            case §'#y§:
               _loc1_ = "placeOrderRedeemGiftCard";
         }
         return _loc1_;
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var e:Event = param1;
         §%$+§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §%$+§.data;
            §]$2§ = rawJSONData.toString();
            if(§]$2§)
            {
               this.§^#^§(§]$2§);
            }
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §%$+§.data,§4!v§.§&"a§);
         }
      }
      
      private function §^"b§(param1:TimerEvent) : void
      {
         if(this.§^$%§)
         {
            this.§^$%§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
         }
         this.§!#L§ = false;
         dispatchEvent(new Event(§1">§));
      }
      
      public function get §"=§() : Boolean
      {
         return this.§!#L§;
      }
      
      public function set §"=§(param1:Boolean) : void
      {
         this.§!#L§ = param1;
      }
      
      public function get §6#r§() : Boolean
      {
         return this.§+D§;
      }
      
      public function set §6#r§(param1:Boolean) : void
      {
         this.§+D§ = param1;
      }
      
      public function removeEventListeners() : void
      {
         § "8§.§+#R§("purchaseComplete",this.§@O§);
         § "8§.§+#R§("purchaseFailed",this.§#!9§);
         this.§'!K§ = false;
         this.§7#+§ = false;
      }
      
      protected function §@O§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         §%$+§ = new §4"v§();
         §%$+§.addEventListener(Event.COMPLETE,this.§-#<§);
         §%$+§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/complete");
         var _loc6_:Object = {"signed_request":param3};
         _loc5_.data = JSON.stringify(_loc6_);
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.contentType = "application/json";
         §%$+§.load(_loc5_);
      }
      
      protected function §-#<§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§"g§ = null;
         var event:Event = param1;
         if(§%$+§)
         {
            §%$+§.removeEventListener(Event.COMPLETE,this.§-#<§);
         }
         try
         {
            rawJSONData = §%$+§.data;
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §%$+§.data,§4!v§.§&"a§);
         }
         if(rawJSONData.errorCode)
         {
            if(rawJSONData.errorCode == 3001 || rawJSONData.errorCode == 3002)
            {
               dispatchEvent(new §9"z§(§9"z§.§@H§,false,false,null,rawJSONData.errorCode));
            }
            else
            {
               §[#U§(ErrorPopup.§^#c§);
            }
            return;
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §]"u§ = rawJSONData.errorCode;
            § "W§ = rawJSONData.errorMessage;
         }
         else
         {
            if(pricePoint && §in§)
            {
               ao = new §"g§();
               ao.itemType = §in§.id;
               ao.§^$9§ = pricePoint.price;
               ao.currency = §in§.currencyID;
               ao.§]$9§ = §]$2§;
               ao.amount = pricePoint.totalQuantity;
               ao.screen = §"1§;
               ao.level = §?!P§;
               ao.§>"j§ = §?!=§.§5!e§;
               aoArray = [ao];
            }
            changedItems = §4"W§.§ "D§.§+#<§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §9"z§(§9"z§.§9$>§,false,false,changedItems));
         }
         this.§6#r§ = false;
         this.§"=§ = false;
         if(§in§)
         {
            dispatchEvent(new §9"z§(§9"z§.§2!c§,false,false,changedItems));
         }
      }
      
      private function §#!9§() : void
      {
         dispatchEvent(new §9"z§(§9"z§.§@H§));
         this.§!#L§ = false;
         this.removeEventListeners();
      }
   }
}
