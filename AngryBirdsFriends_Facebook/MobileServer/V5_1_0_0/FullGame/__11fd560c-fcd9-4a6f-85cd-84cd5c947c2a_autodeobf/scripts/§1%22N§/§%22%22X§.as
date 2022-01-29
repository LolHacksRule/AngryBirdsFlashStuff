package §1"N§
{
   import §%!x§.§^!K§;
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §2"5§.§1"?§;
   import §2G§.§"G§;
   import §2G§.§-#+§;
   import §5"7§.§+$"§;
   import §?P§.ErrorPopup;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §`7§.§ try§;
   import §`7§.§[$-§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §""X§ extends §^5§
   {
       
      
      public function §""X§(param1:§"#x§, param2:§##P§, param3:String = "", param4:String = "")
      {
         super(param1,param2,param3,param4);
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
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/buywithvc/" + §!!b§.id + "/" + §+$'§.totalQuantity);
         §9#s§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§+$"§ = null;
         var e:Event = param1;
         §9#s§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §9#s§.data;
            if(rawJSONData.purchaseId)
            {
               §@!W§ = rawJSONData.purchaseId;
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error parsing JSON: " + §9#s§.data + "\nError code: " + §[$-§.§&!X§));
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            § "6§ = rawJSONData.errorCode;
            §!"B§ = rawJSONData.errorMessage;
            dispatchEvent(new §1"?§(§1"?§.§^#M§));
         }
         else
         {
            if(pricePoint && §2"X§)
            {
               ao = new §+$"§();
               ao.amount = pricePoint.totalQuantity;
               ao.itemType = §!!b§.id;
               ao.§7#?§ = pricePoint.price;
               ao.currency = §"G§.§6!@§;
               ao.§0"q§ = §@!W§;
               ao.screen = §8"$§;
               ao.level = §["x§;
               ao.§2>§ = § try§.§`1§;
               aoArray = [ao];
               § try§.§!!t§().§2$$§(§"G§.§6!@§,pricePoint.campaignPrice > 0 ? int(pricePoint.campaignPrice) : int(pricePoint.price),"Purchase",ao.itemType,pricePoint.totalQuantity,aoArray[0].screen,aoArray[0].level);
               §^!K§.§+"D§("trackFBPixelEvent","vc_use");
            }
            changedItems = §-#+§.§6!§.§,"0§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §1"?§(§1"?§.§=#j§,false,false,changedItems));
         }
      }
   }
}
