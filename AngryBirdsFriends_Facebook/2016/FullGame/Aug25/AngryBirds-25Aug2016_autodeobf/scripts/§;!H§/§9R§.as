package §;!H§
{
   import §"!U§.§6!J§;
   import §"!U§.§7§;
   import §"!U§.§=#V§;
   import §%$!§.§%h§;
   import §+"%§.§6X§;
   import §3!B§.§9##§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §>!#§.§@"$§;
   import §?"R§.ErrorPopup;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^$4§.§>"T§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §9R§ extends §3#u§
   {
      
      public static const §%!`§:String = "PurchaseTimerCompleted";
      
      public static const §0",§:int = 0;
      
      public static const §#2§:int = 1;
      
      public static const §-#R§:int = 2;
       
      
      private var § E§:Timer;
      
      private var §8# §:Boolean = false;
      
      private var §2!v§:Boolean = false;
      
      private var §5#>§:Boolean;
      
      private var §`!`§:Boolean;
      
      private var §>M§:int = 0;
      
      public function §9R§(param1:§=#V§, param2:§6!J§, param3:int = 0, param4:String = "", param5:String = "")
      {
         this.§ E§ = new Timer(3000,1);
         this.§>M§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function loadBuyItems() : void
      {
         if(§5!L§)
         {
            return;
         }
         §5!L§ = new §5$!§();
         §5!L§.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         §5!L§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §5!L§.load(_loc1_);
      }
      
      private function §2#Y§(param1:String = "") : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(ExternalInterface.available)
         {
            if(!this.§8# §)
            {
               if(!this.§5#>§)
               {
                  §6X§.addCallback("purchaseComplete",this.§2!i§);
                  this.§5#>§ = true;
               }
               if(!this.§`!`§)
               {
                  §6X§.addCallback("purchaseFailed",this.§@g§);
                  this.§`!`§ = true;
               }
               this.§2!v§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               _loc2_ = this.§1!w§();
               if(this.§>M§ == §#2§)
               {
                  §6X§.§3U§(_loc2_,(§3!@§ as §7#9§).id,§3!@§.totalQuantity,param1);
               }
               else if(this.§>M§ == §-#R§)
               {
                  §6X§.§3U§(_loc2_,param1);
               }
               else
               {
                  if(!§^$2§ || !§^$2§.ogo || !§3!@§)
                  {
                     this.§ E§.reset();
                     dispatchEvent(new §>"T§(§>"T§.§-b§,false,false,null,3001));
                     return;
                  }
                  §6X§.§3U§(_loc2_,§^$2§.ogo + "_" + §3!@§.totalQuantity + "_" + param1);
               }
               this.§8# § = true;
               this.§ E§.reset();
               this.§ E§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
               this.§ E§.start();
               _loc3_ = this.§[!1§();
               §,"W§.§8`§(_loc3_,§3!@§.totalQuantity);
            }
         }
      }
      
      private function §[!1§() : String
      {
         var _loc1_:* = §^$2§.id;
         switch(this.§>M§)
         {
            case §0",§:
               _loc1_ = §^$2§.id;
               break;
            case §#2§:
               _loc1_ = §^$2§.id + "_PayByMobile_";
               break;
            case §-#R§:
               _loc1_ = "_PayByGiftCard";
         }
         return _loc1_;
      }
      
      private function §1!w§() : String
      {
         var _loc1_:String = "placeOrder";
         switch(this.§>M§)
         {
            case §0",§:
               _loc1_ = "placeOrder";
               break;
            case §#2§:
               _loc1_ = "placeOrderMobile";
               break;
            case §-#R§:
               _loc1_ = "placeOrderRedeemGiftCard";
         }
         return _loc1_;
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var e:Event = param1;
         §5!L§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §5!L§.data;
            §=!;§ = rawJSONData.toString();
            if(§=!;§)
            {
               this.§2#Y§(§=!;§);
            }
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §5!L§.data,§@"$§.§3"t§);
         }
      }
      
      private function §;#z§(param1:TimerEvent) : void
      {
         if(this.§ E§)
         {
            this.§ E§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
         }
         this.§8# § = false;
         dispatchEvent(new Event(§%!`§));
      }
      
      public function get §2w§() : Boolean
      {
         return this.§8# §;
      }
      
      public function set §2w§(param1:Boolean) : void
      {
         this.§8# § = param1;
      }
      
      public function get §@"o§() : Boolean
      {
         return this.§2!v§;
      }
      
      public function set §@"o§(param1:Boolean) : void
      {
         this.§2!v§ = param1;
      }
      
      public function removeEventListeners() : void
      {
         §6X§.§5!3§("purchaseComplete",this.§2!i§);
         §6X§.§5!3§("purchaseFailed",this.§@g§);
         this.§5#>§ = false;
         this.§`!`§ = false;
      }
      
      protected function §2!i§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         §5!L§ = new §5$!§();
         §5!L§.addEventListener(Event.COMPLETE,this.§=#u§);
         §5!L§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/complete");
         var _loc6_:Object = {"signed_request":param3};
         _loc5_.data = JSON.stringify(_loc6_);
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.contentType = "application/json";
         §5!L§.load(_loc5_);
      }
      
      protected function §=#u§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§9##§ = null;
         var event:Event = param1;
         if(§5!L§)
         {
            §5!L§.removeEventListener(Event.COMPLETE,this.§=#u§);
         }
         try
         {
            rawJSONData = §5!L§.data;
            if(rawJSONData.errorCode)
            {
               if(rawJSONData.errorCode == 3001 || rawJSONData.errorCode == 3002)
               {
                  dispatchEvent(new §>"T§(§>"T§.§-b§,false,false,null,rawJSONData.errorCode));
               }
               else
               {
                  §@!w§(ErrorPopup.§^#x§);
               }
               return;
            }
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §5!L§.data,§@"$§.§3"t§);
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §!t§ = rawJSONData.errorCode;
            §-"d§ = rawJSONData.errorMessage;
         }
         else
         {
            if(pricePoint && §^$2§)
            {
               ao = new §9##§();
               ao.itemType = §^$2§.id;
               ao.§#!v§ = pricePoint.price;
               ao.currency = §^$2§.currencyID;
               ao.§'$§ = §=!;§;
               ao.amount = pricePoint.totalQuantity;
               ao.§;"O§ = §?#o§;
               ao.level = §"#L§;
               ao.gainType = §-#A§.§4H§;
               aoArray = [ao];
            }
            changedItems = §%h§.§3!]§.§1!0§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §>"T§(§>"T§.§>"d§,false,false,changedItems));
         }
         this.§@"o§ = false;
         this.§2w§ = false;
         if(§^$2§)
         {
            dispatchEvent(new §>"T§(§>"T§.§3#-§,false,false,changedItems));
         }
      }
      
      private function §@g§() : void
      {
         dispatchEvent(new §>"T§(§>"T§.§-b§));
         this.§8# § = false;
         this.removeEventListeners();
      }
   }
}
