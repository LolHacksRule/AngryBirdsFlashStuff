package §@!_§
{
   import § h§.ErrorPopup;
   import §+Z§.§?!T§;
   import §2E§.§=$3§;
   import §2E§.§]!P§;
   import §4#l§.§8#E§;
   import §4#l§.§>"`§;
   import §7!3§.§-!>§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §>#Y§.§!",§;
   import §>#Y§.§2$8§;
   import §]!4§.§=#c§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §>%§ extends §0D§
   {
       
      
      public function §>%§(param1:§8#E§, param2:§>"`§, param3:String = "", param4:String = "")
      {
         super(param1,param2,param3,param4);
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
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/buywithvc/" + §=#Q§.id + "/" + §[!'§.totalQuantity);
         §^#8§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§-!>§ = null;
         var e:Event = param1;
         §^#8§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §^#8§.data;
            if(rawJSONData.purchaseId)
            {
               §"§ = rawJSONData.purchaseId;
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error parsing JSON: " + §^#8§.data + "\nError code: " + §=$3§.§!$5§));
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §`h§ = rawJSONData.errorCode;
            §,#x§ = rawJSONData.errorMessage;
            dispatchEvent(new §?!T§(§?!T§.§'?§));
         }
         else
         {
            if(pricePoint && §"^§)
            {
               ao = new §-!>§();
               ao.amount = pricePoint.totalQuantity;
               ao.itemType = §=#Q§.id;
               ao.§7$&§ = pricePoint.price;
               ao.currency = §2$8§.§,"p§;
               ao.§;"u§ = §"§;
               ao.screen = §[U§;
               ao.level = §@;§;
               ao.§'#w§ = §]!P§.§`_§;
               aoArray = [ao];
               §]!P§.§1!7§().§[!t§(§2$8§.§,"p§,pricePoint.campaignPrice > 0 ? int(pricePoint.campaignPrice) : int(pricePoint.price),"Purchase",ao.itemType,pricePoint.totalQuantity,aoArray[0].screen,aoArray[0].level);
               §=#c§.§<!t§("trackFBPixelEvent","vc_use");
            }
            changedItems = §!",§.§3"1§.§"#t§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §?!T§(§?!T§.§@!9§,false,false,changedItems));
         }
      }
   }
}
