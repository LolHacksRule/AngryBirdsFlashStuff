package §;!H§
{
   import §"!U§.§6!J§;
   import §"!U§.§=#V§;
   import §%$!§.§%h§;
   import §%$!§.§=]§;
   import §3!B§.§9##§;
   import §>!#§.§-#A§;
   import §>!#§.§@"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^$4§.§>"T§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §%"K§ extends §3#u§
   {
       
      
      public function §%"K§(param1:§=#V§, param2:§6!J§, param3:String = "", param4:String = "")
      {
         super(param1,param2,param3,param4);
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
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/buywithvc/" + §""Q§.id + "/" + §3!@§.totalQuantity);
         §5!L§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§9##§ = null;
         var e:Event = param1;
         §5!L§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §5!L§.data;
            if(rawJSONData.purchaseId)
            {
               §=!;§ = rawJSONData.purchaseId;
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
            dispatchEvent(new §>"T§(§>"T§.§-b§));
         }
         else
         {
            if(pricePoint && §^$2§)
            {
               ao = new §9##§();
               ao.itemType = §""Q§.id;
               ao.§#!v§ = pricePoint.price;
               ao.currency = §=]§.§;Q§;
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
      }
   }
}
