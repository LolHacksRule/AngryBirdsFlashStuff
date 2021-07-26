package §>#q§
{
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#"4§.§@$7§;
   import §#$?§.§7!b§;
   import §&=§.§<#V§;
   import §,#,§.§]§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §?Q§.ErrorPopup;
   import §[#V§.§1!>§;
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import §`D§.§`d§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §&!t§ extends §0!w§
   {
      
      public static const §2<§:String = "PurchaseTimerCompleted";
      
      public static const §&+§:int = 0;
      
      public static const §6g§:int = 1;
      
      public static const §4$7§:int = 2;
       
      
      private var §@"n§:Timer;
      
      private var §0!U§:Boolean = false;
      
      private var §&Z§:Boolean = false;
      
      private var §]=§:Boolean;
      
      private var §>#n§:Boolean;
      
      private var §#!n§:int = 0;
      
      public function §&!t§(param1:§2_§, param2:§'"j§, param3:int = 0, param4:String = "", param5:String = "")
      {
         this.§@"n§ = new Timer(3000,1);
         this.§#!n§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function loadBuyItems() : void
      {
         if(§^!$§)
         {
            return;
         }
         §^!$§ = new §-$C§();
         §^!$§.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         §^!$§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §^!$§.load(_loc1_);
      }
      
      private function §;P§(param1:String = "") : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(ExternalInterface.available)
         {
            if(!this.§0!U§)
            {
               if(!this.§]=§)
               {
                  §7!b§.addCallback("purchaseComplete",this.§<u§);
                  this.§]=§ = true;
               }
               if(!this.§>#n§)
               {
                  §7!b§.addCallback("purchaseFailed",this.§4##§);
                  this.§>#n§ = true;
               }
               this.§&Z§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               _loc2_ = this.§,"o§();
               if(this.§#!n§ == §6g§)
               {
                  §7!b§.§7@§(_loc2_,(§`!Q§ as §`d§).id,§`!Q§.totalQuantity,param1);
               }
               else if(this.§#!n§ == §4$7§)
               {
                  §7!b§.§7@§(_loc2_,param1);
               }
               else
               {
                  if(!§@" § || !§@" §.ogo || !§`!Q§)
                  {
                     this.§@"n§.reset();
                     dispatchEvent(new §1!>§(§1!>§.§6#!§,false,false,null,3001));
                     return;
                  }
                  §7!b§.§7@§(_loc2_,§@" §.ogo + "_" + §`!Q§.totalQuantity + "_" + param1);
               }
               this.§0!U§ = true;
               this.§@"n§.reset();
               this.§@"n§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,"?§);
               this.§@"n§.start();
               _loc3_ = this.§-#T§();
               §<"G§.§%h§(_loc3_,§`!Q§.totalQuantity);
            }
         }
      }
      
      private function §-#T§() : String
      {
         var _loc1_:* = §@" §.id;
         switch(this.§#!n§)
         {
            case §&+§:
               _loc1_ = §@" §.id;
               break;
            case §6g§:
               _loc1_ = §@" §.id + "_PayByMobile_";
               break;
            case §4$7§:
               _loc1_ = "_PayByGiftCard";
         }
         return _loc1_;
      }
      
      private function §,"o§() : String
      {
         var _loc1_:String = "placeOrder";
         switch(this.§#!n§)
         {
            case §&+§:
               _loc1_ = "placeOrder";
               break;
            case §6g§:
               _loc1_ = "placeOrderMobile";
               break;
            case §4$7§:
               _loc1_ = "placeOrderRedeemGiftCard";
         }
         return _loc1_;
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var e:Event = param1;
         §^!$§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §^!$§.data;
            §"@§ = rawJSONData.toString();
            if(§"@§)
            {
               this.§;P§(§"@§);
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error parsing JSON: " + §^!$§.data + "\nError code: " + §@$7§.§8A§));
         }
      }
      
      private function §,"?§(param1:TimerEvent) : void
      {
         if(this.§@"n§)
         {
            this.§@"n§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,"?§);
         }
         this.§0!U§ = false;
         dispatchEvent(new Event(§2<§));
      }
      
      public function get §&E§() : Boolean
      {
         return this.§0!U§;
      }
      
      public function set §&E§(param1:Boolean) : void
      {
         this.§0!U§ = param1;
      }
      
      public function get § !Y§() : Boolean
      {
         return this.§&Z§;
      }
      
      public function set § !Y§(param1:Boolean) : void
      {
         this.§&Z§ = param1;
      }
      
      public function removeEventListeners() : void
      {
         §7!b§.§&#&§("purchaseComplete",this.§<u§);
         §7!b§.§&#&§("purchaseFailed",this.§4##§);
         this.§]=§ = false;
         this.§>#n§ = false;
      }
      
      protected function §<u§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         §^!$§ = new §-$C§();
         §^!$§.addEventListener(Event.COMPLETE,this.§!"n§);
         §^!$§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/complete");
         var _loc6_:Object = {"signed_request":param3};
         _loc5_.data = JSON.stringify(_loc6_);
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.contentType = "application/json";
         §^!$§.load(_loc5_);
      }
      
      protected function §!"n§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§<#V§ = null;
         var event:Event = param1;
         if(§^!$§)
         {
            §^!$§.removeEventListener(Event.COMPLETE,this.§!"n§);
         }
         try
         {
            rawJSONData = §^!$§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error parsing JSON: " + §^!$§.data + "\nError code: " + §@$7§.§8A§));
         }
         if(rawJSONData.errorCode)
         {
            if(rawJSONData.errorCode == 3001 || rawJSONData.errorCode == 3002)
            {
               dispatchEvent(new §1!>§(§1!>§.§6#!§,false,false,null,rawJSONData.errorCode));
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error: [" + rawJSONData.errorCode + "], " + rawJSONData.errorMessage + " " + rawJSONData.additionalMessage));
            }
            return;
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §"c§ = rawJSONData.errorCode;
            §=$#§ = rawJSONData.errorMessage;
         }
         else
         {
            if(pricePoint && §@" §)
            {
               ao = new §<#V§();
               ao.itemType = §@" §.id;
               ao.§&$3§ = pricePoint.price;
               ao.currency = §@" §.currencyID;
               ao.§>$%§ = §"@§;
               ao.amount = pricePoint.totalQuantity;
               ao.screen = §5"N§;
               ao.level = §'#S§;
               ao.§]#=§ = §3";§.§;K§;
               aoArray = [ao];
               §7!b§.§7@§("trackFBPixelPurchaseEvent",§@" §.currencyID,pricePoint.price,§@" §.id,pricePoint.totalQuantity);
            }
            changedItems = §]#0§.§+!,§.§&$@§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §1!>§(§1!>§.§^#b§,false,false,changedItems));
         }
         this.§ !Y§ = false;
         this.§&E§ = false;
         if(§@" §)
         {
            dispatchEvent(new §1!>§(§1!>§.§#-§,false,false,changedItems));
         }
      }
      
      private function §4##§() : void
      {
         dispatchEvent(new §1!>§(§1!>§.§6#!§));
         this.§0!U§ = false;
         this.removeEventListeners();
      }
   }
}
