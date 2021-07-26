package § §#4
{
   import §!#C§.§ $?§;
   import §&!_§.§!!K§;
   import §&!_§.§+#`§;
   import §&!_§.§0I§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §5" §.§!#h§;
   import §5" §.§5u§;
   import §5" §.§=n§;
   import §6t§.§4?§;
   import §>z§.ErrorPopup;
   import §]C§.§ !+§;
   import §`"3§.§^!Z§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §%e§ extends §5!$§
   {
      
      public static const §##"§:String = "PurchaseTimerCompleted";
      
      public static const §1#S§:int = 0;
      
      public static const §2#2§:int = 1;
      
      public static const §,!>§:int = 2;
       
      
      private var §+!^§:Timer;
      
      private var §3!1§:Boolean = false;
      
      private var § !C§:Boolean = false;
      
      private var §7!P§:Boolean;
      
      private var §,!k§:Boolean;
      
      private var §<>§:int = 0;
      
      public function §%e§(param1:§=n§, param2:§5u§, param3:int = 0, param4:String = "", param5:String = "")
      {
         this.§+!^§ = new Timer(3000,1);
         this.§<>§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function loadBuyItems() : void
      {
         if(§"">§)
         {
            return;
         }
         §"">§ = new §!!o§();
         §"">§.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         §"">§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §"">§.load(_loc1_);
      }
      
      private function §8" §(param1:String = "") : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(ExternalInterface.available)
         {
            if(!this.§3!1§)
            {
               if(!this.§7!P§)
               {
                  § !+§.addCallback("purchaseComplete",this.§'a§);
                  this.§7!P§ = true;
               }
               if(!this.§,!k§)
               {
                  § !+§.addCallback("purchaseFailed",this.§4"E§);
                  this.§,!k§ = true;
               }
               this.§ !C§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               _loc2_ = this.§%7§();
               if(this.§<>§ == §2#2§)
               {
                  § !+§.§>$%§(_loc2_,(§?!M§ as §!#h§).id,§?!M§.totalQuantity,param1);
               }
               else if(this.§<>§ == §,!>§)
               {
                  § !+§.§>$%§(_loc2_,param1);
               }
               else
               {
                  if(!§6!-§ || !§6!-§.ogo || !§?!M§)
                  {
                     this.§+!^§.reset();
                     dispatchEvent(new §4?§(§4?§.§3$2§,false,false,null,3001));
                     return;
                  }
                  § !+§.§>$%§(_loc2_,§6!-§.ogo + "_" + §?!M§.totalQuantity + "_" + param1);
               }
               this.§3!1§ = true;
               this.§+!^§.reset();
               this.§+!^§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;#g§);
               this.§+!^§.start();
               _loc3_ = this.§8#h§();
               §0I§.§<#0§(_loc3_,§?!M§.totalQuantity);
            }
         }
      }
      
      private function §8#h§() : String
      {
         var _loc1_:* = §6!-§.id;
         switch(this.§<>§)
         {
            case §1#S§:
               _loc1_ = §6!-§.id;
               break;
            case §2#2§:
               _loc1_ = §6!-§.id + "_PayByMobile_";
               break;
            case §,!>§:
               _loc1_ = "_PayByGiftCard";
         }
         return _loc1_;
      }
      
      private function §%7§() : String
      {
         var _loc1_:String = "placeOrder";
         switch(this.§<>§)
         {
            case §1#S§:
               _loc1_ = "placeOrder";
               break;
            case §2#2§:
               _loc1_ = "placeOrderMobile";
               break;
            case §,!>§:
               _loc1_ = "placeOrderRedeemGiftCard";
         }
         return _loc1_;
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var e:Event = param1;
         §"">§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §"">§.data;
            §>!e§ = rawJSONData.toString();
            if(§>!e§)
            {
               this.§8" §(§>!e§);
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error parsing JSON: " + §"">§.data + "\nError code: " + §+#`§.§ !R§));
         }
      }
      
      private function §;#g§(param1:TimerEvent) : void
      {
         if(this.§+!^§)
         {
            this.§+!^§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#g§);
         }
         this.§3!1§ = false;
         dispatchEvent(new Event(§##"§));
      }
      
      public function get §=#<§() : Boolean
      {
         return this.§3!1§;
      }
      
      public function set §=#<§(param1:Boolean) : void
      {
         this.§3!1§ = param1;
      }
      
      public function get §9"F§() : Boolean
      {
         return this.§ !C§;
      }
      
      public function set §9"F§(param1:Boolean) : void
      {
         this.§ !C§ = param1;
      }
      
      public function removeEventListeners() : void
      {
         § !+§.§?!§("purchaseComplete",this.§'a§);
         § !+§.§?!§("purchaseFailed",this.§4"E§);
         this.§7!P§ = false;
         this.§,!k§ = false;
      }
      
      protected function §'a§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         §"">§ = new §!!o§();
         §"">§.addEventListener(Event.COMPLETE,this.§<g§);
         §"">§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/complete");
         var _loc6_:Object = {"signed_request":param3};
         _loc5_.data = JSON.stringify(_loc6_);
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.contentType = "application/json";
         §"">§.load(_loc5_);
      }
      
      protected function §<g§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§^!Z§ = null;
         var event:Event = param1;
         if(§"">§)
         {
            §"">§.removeEventListener(Event.COMPLETE,this.§<g§);
         }
         try
         {
            rawJSONData = §"">§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error parsing JSON: " + §"">§.data + "\nError code: " + §+#`§.§ !R§));
         }
         if(rawJSONData.errorCode)
         {
            if(rawJSONData.errorCode == 3001 || rawJSONData.errorCode == 3002)
            {
               dispatchEvent(new §4?§(§4?§.§3$2§,false,false,null,rawJSONData.errorCode));
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error: [" + rawJSONData.errorCode + "], " + rawJSONData.errorMessage + " " + rawJSONData.additionalMessage));
            }
            return;
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §8"?§ = rawJSONData.errorCode;
            §6"i§ = rawJSONData.errorMessage;
         }
         else
         {
            if(pricePoint && §6!-§)
            {
               ao = new §^!Z§();
               ao.itemType = §6!-§.id;
               ao.§%#&§ = pricePoint.price;
               ao.currency = §6!-§.currencyID;
               ao.§#Z§ = §>!e§;
               ao.amount = pricePoint.totalQuantity;
               ao.screen = §3"r§;
               ao.level = §49§;
               ao.§`"x§ = §!!K§.§9!8§;
               aoArray = [ao];
               § !+§.§>$%§("trackFBPixelPurchaseEvent",§6!-§.currencyID,pricePoint.price,§6!-§.id,pricePoint.totalQuantity);
            }
            changedItems = § $?§.§`"H§.§ !t§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §4?§(§4?§.§?w§,false,false,changedItems));
         }
         this.§9"F§ = false;
         this.§=#<§ = false;
         if(§6!-§)
         {
            dispatchEvent(new §4?§(§4?§.§3!b§,false,false,changedItems));
         }
      }
      
      private function §4"E§() : void
      {
         dispatchEvent(new §4?§(§4?§.§3$2§));
         this.§3!1§ = false;
         this.removeEventListeners();
      }
   }
}
