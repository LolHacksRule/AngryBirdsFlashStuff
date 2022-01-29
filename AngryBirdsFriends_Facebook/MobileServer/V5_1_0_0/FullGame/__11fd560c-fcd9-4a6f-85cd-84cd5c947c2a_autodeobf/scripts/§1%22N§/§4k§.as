package §1"N§
{
   import §%!x§.§^!K§;
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §&"`§.§2#N§;
   import §2"5§.§1"?§;
   import §2G§.§-#+§;
   import §5"7§.§+$"§;
   import §?P§.ErrorPopup;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §`7§.§ try§;
   import §`7§.§[$-§;
   import §`7§.§`"x§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §4k§ extends §^5§
   {
      
      public static const §-s§:String = "PurchaseTimerCompleted";
      
      public static const §4!c§:int = 0;
      
      public static const §?k§:int = 1;
      
      public static const §;#V§:int = 2;
       
      
      private var §,#4§:Timer;
      
      private var § "Q§:Boolean = false;
      
      private var §"#n§:Boolean = false;
      
      private var §>8§:Boolean;
      
      private var §@$0§:Boolean;
      
      private var §?#i§:int = 0;
      
      public function §4k§(param1:§"#x§, param2:§##P§, param3:int = 0, param4:String = "", param5:String = "")
      {
         this.§,#4§ = new Timer(3000,1);
         this.§?#i§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function loadBuyItems() : void
      {
         if(§9#s§)
         {
            return;
         }
         §9#s§ = new §1"V§();
         §9#s§.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         §9#s§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §9#s§.load(_loc1_);
      }
      
      private function §##+§(param1:String = "") : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(ExternalInterface.available)
         {
            if(!this.§ "Q§)
            {
               if(!this.§>8§)
               {
                  §^!K§.addCallback("purchaseComplete",this.§8#d§);
                  this.§>8§ = true;
               }
               if(!this.§@$0§)
               {
                  §^!K§.addCallback("purchaseFailed",this.§[1§);
                  this.§@$0§ = true;
               }
               this.§"#n§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               _loc2_ = this.§>!'§();
               if(this.§?#i§ == §?k§)
               {
                  §^!K§.§+"D§(_loc2_,(§+$'§ as §2#N§).id,§+$'§.totalQuantity,param1);
               }
               else if(this.§?#i§ == §;#V§)
               {
                  §^!K§.§+"D§(_loc2_,param1);
               }
               else
               {
                  if(!§2"X§ || !§2"X§.ogo || !§+$'§)
                  {
                     this.§,#4§.reset();
                     dispatchEvent(new §1"?§(§1"?§.§^#M§,false,false,null,3001));
                     return;
                  }
                  §^!K§.§+"D§(_loc2_,§2"X§.ogo + "_" + §+$'§.totalQuantity + "_" + param1);
               }
               this.§ "Q§ = true;
               this.§,#4§.reset();
               this.§,#4§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§24§);
               this.§,#4§.start();
               _loc3_ = this.§9"B§();
               §`"x§.§?"8§(_loc3_,§+$'§.totalQuantity);
            }
         }
      }
      
      private function §9"B§() : String
      {
         var _loc1_:* = §2"X§.id;
         switch(this.§?#i§)
         {
            case §4!c§:
               _loc1_ = §2"X§.id;
               break;
            case §?k§:
               _loc1_ = §2"X§.id + "_PayByMobile_";
               break;
            case §;#V§:
               _loc1_ = "_PayByGiftCard";
         }
         return _loc1_;
      }
      
      private function §>!'§() : String
      {
         var _loc1_:String = "placeOrder";
         switch(this.§?#i§)
         {
            case §4!c§:
               _loc1_ = "placeOrder";
               break;
            case §?k§:
               _loc1_ = "placeOrderMobile";
               break;
            case §;#V§:
               _loc1_ = "placeOrderRedeemGiftCard";
         }
         return _loc1_;
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var e:Event = param1;
         §9#s§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §9#s§.data;
            §@!W§ = rawJSONData.toString();
            if(§@!W§)
            {
               this.§##+§(§@!W§);
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error parsing JSON: " + §9#s§.data + "\nError code: " + §[$-§.§&!X§));
         }
      }
      
      private function §24§(param1:TimerEvent) : void
      {
         if(this.§,#4§)
         {
            this.§,#4§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§24§);
         }
         this.§ "Q§ = false;
         dispatchEvent(new Event(§-s§));
      }
      
      public function get §2$1§() : Boolean
      {
         return this.§ "Q§;
      }
      
      public function set §2$1§(param1:Boolean) : void
      {
         this.§ "Q§ = param1;
      }
      
      public function get §7!I§() : Boolean
      {
         return this.§"#n§;
      }
      
      public function set §7!I§(param1:Boolean) : void
      {
         this.§"#n§ = param1;
      }
      
      public function removeEventListeners() : void
      {
         §^!K§.§,"i§("purchaseComplete",this.§8#d§);
         §^!K§.§,"i§("purchaseFailed",this.§[1§);
         this.§>8§ = false;
         this.§@$0§ = false;
      }
      
      protected function §8#d§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         §9#s§ = new §1"V§();
         §9#s§.addEventListener(Event.COMPLETE,this.§0$%§);
         §9#s§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/complete");
         var _loc6_:Object = {"signed_request":param3};
         _loc5_.data = JSON.stringify(_loc6_);
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.contentType = "application/json";
         §9#s§.load(_loc5_);
      }
      
      protected function §0$%§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§+$"§ = null;
         var event:Event = param1;
         if(§9#s§)
         {
            §9#s§.removeEventListener(Event.COMPLETE,this.§0$%§);
         }
         try
         {
            rawJSONData = §9#s§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error parsing JSON: " + §9#s§.data + "\nError code: " + §[$-§.§&!X§));
         }
         if(rawJSONData.errorCode)
         {
            if(rawJSONData.errorCode == 3001 || rawJSONData.errorCode == 3002)
            {
               dispatchEvent(new §1"?§(§1"?§.§^#M§,false,false,null,rawJSONData.errorCode));
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error: [" + rawJSONData.errorCode + "], " + rawJSONData.errorMessage + " " + rawJSONData.additionalMessage));
            }
            return;
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            § "6§ = rawJSONData.errorCode;
            §!"B§ = rawJSONData.errorMessage;
         }
         else
         {
            if(pricePoint && §2"X§)
            {
               ao = new §+$"§();
               ao.itemType = §2"X§.id;
               ao.§7#?§ = pricePoint.price;
               ao.currency = §2"X§.currencyID;
               ao.§0"q§ = §@!W§;
               ao.amount = pricePoint.totalQuantity;
               ao.screen = §8"$§;
               ao.level = §["x§;
               ao.§2>§ = § try§.§`1§;
               aoArray = [ao];
            }
            changedItems = §-#+§.§6!§.§,"0§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §1"?§(§1"?§.§=#j§,false,false,changedItems));
         }
         this.§7!I§ = false;
         this.§2$1§ = false;
         if(§2"X§)
         {
            dispatchEvent(new §1"?§(§1"?§.§7"^§,false,false,changedItems));
         }
      }
      
      private function §[1§() : void
      {
         dispatchEvent(new §1"?§(§1"?§.§^#M§));
         this.§ "Q§ = false;
         this.removeEventListeners();
      }
   }
}
