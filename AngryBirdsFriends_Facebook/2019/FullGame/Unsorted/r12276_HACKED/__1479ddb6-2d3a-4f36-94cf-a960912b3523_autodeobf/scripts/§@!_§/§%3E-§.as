package §@!_§
{
   import § h§.ErrorPopup;
   import §+Z§.§?!T§;
   import §2E§.§'@§;
   import §2E§.§=$3§;
   import §2E§.§]!P§;
   import §4#l§.§0"[§;
   import §4#l§.§8#E§;
   import §4#l§.§>"`§;
   import §7!3§.§-!>§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §>#Y§.§!",§;
   import §]!4§.§=#c§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §>-§ extends §0D§
   {
      
      public static const §2Z§:String = "PurchaseTimerCompleted";
      
      public static const §,! §:int = 0;
      
      public static const §%#s§:int = 1;
      
      public static const §!!s§:int = 2;
       
      
      private var §&6§:Timer;
      
      private var §<5§:Boolean = false;
      
      private var §?#W§:Boolean = false;
      
      private var §#G§:Boolean;
      
      private var §!f§:Boolean;
      
      private var §;#&§:int = 0;
      
      public function §>-§(param1:§8#E§, param2:§>"`§, param3:int = 0, param4:String = "", param5:String = "")
      {
         this.§&6§ = new Timer(3000,1);
         this.§;#&§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function loadBuyItems() : void
      {
         if(§^#8§)
         {
            return;
         }
         §^#8§ = new §5"f§();
         §^#8§.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         §^#8§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §^#8§.load(_loc1_);
      }
      
      private function §3b§(param1:String = "") : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(ExternalInterface.available)
         {
            if(!this.§<5§)
            {
               if(!this.§#G§)
               {
                  §=#c§.addCallback("purchaseComplete",this.§>#§);
                  this.§#G§ = true;
               }
               if(!this.§!f§)
               {
                  §=#c§.addCallback("purchaseFailed",this.§0!h§);
                  this.§!f§ = true;
               }
               this.§?#W§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               _loc2_ = this.§[$#§();
               if(this.§;#&§ == §%#s§)
               {
                  §=#c§.§<!t§(_loc2_,(§[!'§ as §0"[§).id,§[!'§.totalQuantity,param1);
               }
               else if(this.§;#&§ == §!!s§)
               {
                  §=#c§.§<!t§(_loc2_,param1);
               }
               else
               {
                  if(!§"^§ || !§"^§.ogo || !§[!'§)
                  {
                     this.§&6§.reset();
                     dispatchEvent(new §?!T§(§?!T§.§'?§,false,false,null,3001));
                     return;
                  }
                  §=#c§.§<!t§(_loc2_,§"^§.ogo + "_" + §[!'§.totalQuantity + "_" + param1);
               }
               this.§<5§ = true;
               this.§&6§.reset();
               this.§&6§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§"!9§);
               this.§&6§.start();
               _loc3_ = this.§8"=§();
               §'@§.§]!l§(_loc3_,§[!'§.totalQuantity);
            }
         }
      }
      
      private function §8"=§() : String
      {
         var _loc1_:* = §"^§.id;
         switch(this.§;#&§)
         {
            case §,! §:
               _loc1_ = §"^§.id;
               break;
            case §%#s§:
               _loc1_ = §"^§.id + "_PayByMobile_";
               break;
            case §!!s§:
               _loc1_ = "_PayByGiftCard";
         }
         return _loc1_;
      }
      
      private function §[$#§() : String
      {
         var _loc1_:String = "placeOrder";
         switch(this.§;#&§)
         {
            case §,! §:
               _loc1_ = "placeOrder";
               break;
            case §%#s§:
               _loc1_ = "placeOrderMobile";
               break;
            case §!!s§:
               _loc1_ = "placeOrderRedeemGiftCard";
         }
         return _loc1_;
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var e:Event = param1;
         §^#8§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §^#8§.data;
            §"§ = rawJSONData.toString();
            if(§"§)
            {
               this.§3b§(§"§);
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error parsing JSON: " + §^#8§.data + "\nError code: " + §=$3§.§!$5§));
         }
      }
      
      private function §"!9§(param1:TimerEvent) : void
      {
         if(this.§&6§)
         {
            this.§&6§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"!9§);
         }
         this.§<5§ = false;
         dispatchEvent(new Event(§2Z§));
      }
      
      public function get §]"g§() : Boolean
      {
         return this.§<5§;
      }
      
      public function set §]"g§(param1:Boolean) : void
      {
         this.§<5§ = param1;
      }
      
      public function get §^2§() : Boolean
      {
         return this.§?#W§;
      }
      
      public function set §^2§(param1:Boolean) : void
      {
         this.§?#W§ = param1;
      }
      
      public function removeEventListeners() : void
      {
         §=#c§.§`$ §("purchaseComplete",this.§>#§);
         §=#c§.§`$ §("purchaseFailed",this.§0!h§);
         this.§#G§ = false;
         this.§!f§ = false;
      }
      
      protected function §>#§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         §^#8§ = new §5"f§();
         §^#8§.addEventListener(Event.COMPLETE,this.§>!%§);
         §^#8§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/complete");
         var _loc6_:Object = {"signed_request":param3};
         _loc5_.data = JSON.stringify(_loc6_);
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.contentType = "application/json";
         §^#8§.load(_loc5_);
      }
      
      protected function §>!%§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§-!>§ = null;
         var event:Event = param1;
         if(§^#8§)
         {
            §^#8§.removeEventListener(Event.COMPLETE,this.§>!%§);
         }
         try
         {
            rawJSONData = §^#8§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error parsing JSON: " + §^#8§.data + "\nError code: " + §=$3§.§!$5§));
         }
         if(rawJSONData.errorCode)
         {
            if(rawJSONData.errorCode == 3001 || rawJSONData.errorCode == 3002)
            {
               dispatchEvent(new §?!T§(§?!T§.§'?§,false,false,null,rawJSONData.errorCode));
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error: [" + rawJSONData.errorCode + "], " + rawJSONData.errorMessage + " " + rawJSONData.additionalMessage));
            }
            return;
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §`h§ = rawJSONData.errorCode;
            §,#x§ = rawJSONData.errorMessage;
         }
         else
         {
            if(pricePoint && §"^§)
            {
               ao = new §-!>§();
               ao.itemType = §"^§.id;
               ao.§7$&§ = pricePoint.price;
               ao.currency = §"^§.currencyID;
               ao.§;"u§ = §"§;
               ao.amount = pricePoint.totalQuantity;
               ao.screen = §[U§;
               ao.level = §@;§;
               ao.§'#w§ = §]!P§.§`_§;
               aoArray = [ao];
               §=#c§.§<!t§("trackFBPixelPurchaseEvent",§"^§.currencyID,pricePoint.price,§"^§.id,pricePoint.totalQuantity);
            }
            changedItems = §!",§.§3"1§.§"#t§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §?!T§(§?!T§.§@!9§,false,false,changedItems));
         }
         this.§^2§ = false;
         this.§]"g§ = false;
         if(§"^§)
         {
            dispatchEvent(new §?!T§(§?!T§.§0"Z§,false,false,changedItems));
         }
      }
      
      private function §0!h§() : void
      {
         dispatchEvent(new §?!T§(§?!T§.§'?§));
         this.§<5§ = false;
         this.removeEventListeners();
      }
   }
}
