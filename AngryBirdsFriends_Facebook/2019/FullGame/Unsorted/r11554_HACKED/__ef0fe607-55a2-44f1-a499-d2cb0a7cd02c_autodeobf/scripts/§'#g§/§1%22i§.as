package §'#g§
{
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import §+#B§.§ "f§;
   import §+#B§.§+$A§;
   import §-!"§.§7z§;
   import §5"c§.§8K§;
   import §7#j§.§@"F§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.ErrorPopup;
   import §]"'§.§#$D§;
   import §]"'§.§>I§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §1"i§ extends §]!8§
   {
       
      
      public function §1"i§(param1:§,!K§, param2:§<#a§, param3:String = "", param4:String = "")
      {
         super(param1,param2,param3,param4);
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
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/buywithvc/" + §'$$§.id + "/" + §^"v§.totalQuantity);
         §'X§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§7z§ = null;
         var e:Event = param1;
         §'X§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §'X§.data;
            if(rawJSONData.purchaseId)
            {
               §3@§ = rawJSONData.purchaseId;
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error parsing JSON: " + §'X§.data + "\nError code: " + § "f§.§[$3§));
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §<"G§ = rawJSONData.errorCode;
            §'"k§ = rawJSONData.errorMessage;
            dispatchEvent(new §8K§(§8K§.§<"&§));
         }
         else
         {
            if(pricePoint && §4">§)
            {
               ao = new §7z§();
               ao.amount = pricePoint.totalQuantity;
               ao.itemType = §'$$§.id;
               ao.§#!z§ = pricePoint.price;
               ao.currency = §>I§.§ !C§;
               ao.§-!G§ = §3@§;
               ao.screen = §6"^§;
               ao.level = §&#"§;
               ao.§+#;§ = §+$A§.§?j§;
               aoArray = [ao];
               §+$A§.§@"i§().§9!?§(§>I§.§ !C§,pricePoint.campaignPrice > 0 ? int(pricePoint.campaignPrice) : int(pricePoint.price),"Purchase",ao.itemType,pricePoint.totalQuantity,aoArray[0].screen,aoArray[0].level);
               §@"F§.§^$#§("trackFBPixelEvent","vc_use");
            }
            changedItems = §#$D§.§?q§.§["a§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §8K§(§8K§.§`#y§,false,false,changedItems));
         }
      }
   }
}
