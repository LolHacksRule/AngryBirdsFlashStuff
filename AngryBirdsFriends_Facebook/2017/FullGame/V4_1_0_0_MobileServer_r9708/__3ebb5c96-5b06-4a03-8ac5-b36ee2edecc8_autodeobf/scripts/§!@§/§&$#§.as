package §!@§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §+"E§.§9"z§;
   import §6V§.§4!v§;
   import §6V§.§?!=§;
   import §7",§.§!#q§;
   import §7",§.§2#i§;
   import §;#r§.§"g§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §&$#§ extends §["Q§
   {
       
      
      public function §&$#§(param1:§2#i§, param2:§!#q§, param3:String = "", param4:String = "")
      {
         super(param1,param2,param3,param4);
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
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/buywithvc/" + §]#+§.id + "/" + §9#A§.totalQuantity);
         §%$+§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§"g§ = null;
         var e:Event = param1;
         §%$+§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §%$+§.data;
            if(rawJSONData.purchaseId)
            {
               §]$2§ = rawJSONData.purchaseId;
            }
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §%$+§.data,§4!v§.§&"a§);
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §]"u§ = rawJSONData.errorCode;
            § "W§ = rawJSONData.errorMessage;
            dispatchEvent(new §9"z§(§9"z§.§@H§));
         }
         else
         {
            if(pricePoint && §in§)
            {
               ao = new §"g§();
               ao.amount = pricePoint.totalQuantity;
               ao.itemType = §]#+§.id;
               ao.§^$9§ = pricePoint.price;
               ao.currency = §6$0§.§3#j§;
               ao.§]$9§ = §]$2§;
               ao.screen = §"1§;
               ao.level = §?!P§;
               ao.§>"j§ = §?!=§.§5!e§;
               aoArray = [ao];
               §?!=§.§3!q§().§,#§(§6$0§.§3#j§,pricePoint.campaignPrice > 0 ? int(pricePoint.campaignPrice) : int(pricePoint.price),"Purchase",ao.itemType,pricePoint.totalQuantity,aoArray[0].screen,aoArray[0].level);
            }
            changedItems = §4"W§.§ "D§.§+#<§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §9"z§(§9"z§.§9$>§,false,false,changedItems));
         }
      }
   }
}
