package § §#4
{
   import §!#C§.§ $?§;
   import §!#C§.§null§;
   import §&!_§.§!!K§;
   import §&!_§.§+#`§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §5" §.§5u§;
   import §5" §.§=n§;
   import §6t§.§4?§;
   import §>z§.ErrorPopup;
   import §]C§.§ !+§;
   import §`"3§.§^!Z§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §2"O§ extends §5!$§
   {
       
      
      public function §2"O§(param1:§=n§, param2:§5u§, param3:String = "", param4:String = "")
      {
         super(param1,param2,param3,param4);
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
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/buywithvc/" + §3$@§.id + "/" + §?!M§.totalQuantity);
         §"">§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§^!Z§ = null;
         var e:Event = param1;
         §"">§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §"">§.data;
            if(rawJSONData.purchaseId)
            {
               §>!e§ = rawJSONData.purchaseId;
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error parsing JSON: " + §"">§.data + "\nError code: " + §+#`§.§ !R§));
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §8"?§ = rawJSONData.errorCode;
            §6"i§ = rawJSONData.errorMessage;
            dispatchEvent(new §4?§(§4?§.§3$2§));
         }
         else
         {
            if(pricePoint && §6!-§)
            {
               ao = new §^!Z§();
               ao.amount = pricePoint.totalQuantity;
               ao.itemType = §3$@§.id;
               ao.§%#&§ = pricePoint.price;
               ao.currency = §null§.§%l§;
               ao.§#Z§ = §>!e§;
               ao.screen = §3"r§;
               ao.level = §49§;
               ao.§`"x§ = §!!K§.§9!8§;
               aoArray = [ao];
               §!!K§.§%#S§().§ "6§(§null§.§%l§,pricePoint.campaignPrice > 0 ? int(pricePoint.campaignPrice) : int(pricePoint.price),"Purchase",ao.itemType,pricePoint.totalQuantity,aoArray[0].screen,aoArray[0].level);
               § !+§.§>$%§("trackFBPixelEvent","vc_use");
            }
            changedItems = § $?§.§`"H§.§ !t§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §4?§(§4?§.§?w§,false,false,changedItems));
         }
      }
   }
}
