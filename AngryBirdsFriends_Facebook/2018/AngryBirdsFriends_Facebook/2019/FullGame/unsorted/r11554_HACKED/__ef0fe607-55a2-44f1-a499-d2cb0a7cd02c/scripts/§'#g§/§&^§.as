package §'#g§
{
   import §!!?§.§!#z§;
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import §+#B§.§ "f§;
   import §+#B§.§+$A§;
   import §+#B§.§5"w§;
   import §-!"§.§7z§;
   import §5"c§.§8K§;
   import §7#j§.§@"F§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.ErrorPopup;
   import §]"'§.§#$D§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §&^§ extends §]!8§
   {
      
      public static const §2!§:String = "PurchaseTimerCompleted";
      
      public static const §?$4§:int = 0;
      
      public static const §0!E§:int = 1;
      
      public static const §,#<§:int = 2;
       
      
      private var §5d§:Timer;
      
      private var §4$$§:Boolean = false;
      
      private var §function§:Boolean = false;
      
      private var §8!m§:Boolean;
      
      private var §@!T§:Boolean;
      
      private var §'!"§:int = 0;
      
      public function §&^§(param1:§,!K§, param2:§<#a§, param3:int = 0, param4:String = "", param5:String = "")
      {
         this.§5d§ = new Timer(3000,1);
         this.§'!"§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function loadBuyItems() : void
      {
         if(§'X§)
         {
            return;
         }
         §'X§ = new §'!n§();
         §'X§.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         §'X§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §'X§.load(_loc1_);
      }
      
      private function §2-§(param1:String = "") : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(ExternalInterface.available)
         {
            if(!this.§4$$§)
            {
               if(!this.§8!m§)
               {
                  §@"F§.addCallback("purchaseComplete",this.§51§);
                  this.§8!m§ = true;
               }
               if(!this.§@!T§)
               {
                  §@"F§.addCallback("purchaseFailed",this.§>'§);
                  this.§@!T§ = true;
               }
               this.§function§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               _loc2_ = this.§+!m§();
               if(this.§'!"§ == §0!E§)
               {
                  §@"F§.§^$#§(_loc2_,(§^"v§ as §!#z§).id,§^"v§.totalQuantity,param1);
               }
               else if(this.§'!"§ == §,#<§)
               {
                  §@"F§.§^$#§(_loc2_,param1);
               }
               else
               {
                  if(!§4">§ || !§4">§.ogo || !§^"v§)
                  {
                     this.§5d§.reset();
                     dispatchEvent(new §8K§(§8K§.§<"&§,false,false,null,3001));
                     return;
                  }
                  §@"F§.§^$#§(_loc2_,§4">§.ogo + "_" + §^"v§.totalQuantity + "_" + param1);
               }
               this.§4$$§ = true;
               this.§5d§.reset();
               this.§5d§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§[#a§);
               this.§5d§.start();
               _loc3_ = this.§ $C§();
               §5"w§.§?# §(_loc3_,§^"v§.totalQuantity);
            }
         }
      }
      
      private function § $C§() : String
      {
         var _loc1_:* = §4">§.id;
         switch(this.§'!"§)
         {
            case §?$4§:
               _loc1_ = §4">§.id;
               break;
            case §0!E§:
               _loc1_ = §4">§.id + "_PayByMobile_";
               break;
            case §,#<§:
               _loc1_ = "_PayByGiftCard";
         }
         return _loc1_;
      }
      
      private function §+!m§() : String
      {
         var _loc1_:String = "placeOrder";
         switch(this.§'!"§)
         {
            case §?$4§:
               _loc1_ = "placeOrder";
               break;
            case §0!E§:
               _loc1_ = "placeOrderMobile";
               break;
            case §,#<§:
               _loc1_ = "placeOrderRedeemGiftCard";
         }
         return _loc1_;
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var e:Event = param1;
         §'X§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §'X§.data;
            §3@§ = rawJSONData.toString();
            if(§3@§)
            {
               this.§2-§(§3@§);
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error parsing JSON: " + §'X§.data + "\nError code: " + § "f§.§[$3§));
         }
      }
      
      private function §[#a§(param1:TimerEvent) : void
      {
         if(this.§5d§)
         {
            this.§5d§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§[#a§);
         }
         this.§4$$§ = false;
         dispatchEvent(new Event(§2!§));
      }
      
      public function get §@S§() : Boolean
      {
         return this.§4$$§;
      }
      
      public function set §@S§(param1:Boolean) : void
      {
         this.§4$$§ = param1;
      }
      
      public function get §]X§() : Boolean
      {
         return this.§function§;
      }
      
      public function set §]X§(param1:Boolean) : void
      {
         this.§function§ = param1;
      }
      
      public function removeEventListeners() : void
      {
         §@"F§.§=F§("purchaseComplete",this.§51§);
         §@"F§.§=F§("purchaseFailed",this.§>'§);
         this.§8!m§ = false;
         this.§@!T§ = false;
      }
      
      protected function §51§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         §'X§ = new §'!n§();
         §'X§.addEventListener(Event.COMPLETE,this.§1W§);
         §'X§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/complete");
         var _loc6_:Object = {"signed_request":param3};
         _loc5_.data = JSON.stringify(_loc6_);
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.contentType = "application/json";
         §'X§.load(_loc5_);
      }
      
      protected function §1W§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§7z§ = null;
         var event:Event = param1;
         if(§'X§)
         {
            §'X§.removeEventListener(Event.COMPLETE,this.§1W§);
         }
         try
         {
            rawJSONData = §'X§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error parsing JSON: " + §'X§.data + "\nError code: " + § "f§.§[$3§));
         }
         if(rawJSONData.errorCode)
         {
            if(rawJSONData.errorCode == 3001 || rawJSONData.errorCode == 3002)
            {
               dispatchEvent(new §8K§(§8K§.§<"&§,false,false,null,rawJSONData.errorCode));
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error: [" + rawJSONData.errorCode + "], " + rawJSONData.errorMessage + " " + rawJSONData.additionalMessage));
            }
            return;
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §<"G§ = rawJSONData.errorCode;
            §'"k§ = rawJSONData.errorMessage;
         }
         else
         {
            if(pricePoint && §4">§)
            {
               ao = new §7z§();
               ao.itemType = §4">§.id;
               ao.§#!z§ = pricePoint.price;
               ao.currency = §4">§.currencyID;
               ao.§-!G§ = §3@§;
               ao.amount = pricePoint.totalQuantity;
               ao.screen = §6"^§;
               ao.level = §&#"§;
               ao.§+#;§ = §+$A§.§?j§;
               aoArray = [ao];
               §@"F§.§^$#§("trackFBPixelPurchaseEvent",§4">§.currencyID,pricePoint.price,§4">§.id,pricePoint.totalQuantity);
            }
            changedItems = §#$D§.§?q§.§["a§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §8K§(§8K§.§`#y§,false,false,changedItems));
         }
         this.§]X§ = false;
         this.§@S§ = false;
         if(§4">§)
         {
            dispatchEvent(new §8K§(§8K§.§ ",§,false,false,changedItems));
         }
      }
      
      private function §>'§() : void
      {
         dispatchEvent(new §8K§(§8K§.§<"&§));
         this.§4$$§ = false;
         this.removeEventListeners();
      }
   }
}
