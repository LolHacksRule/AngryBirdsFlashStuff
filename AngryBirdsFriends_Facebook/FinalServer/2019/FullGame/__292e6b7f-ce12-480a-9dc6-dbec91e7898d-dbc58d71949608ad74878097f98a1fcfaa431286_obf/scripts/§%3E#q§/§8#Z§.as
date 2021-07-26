package §>#q§
{
   import §#"4§.§3";§;
   import §#"4§.§@$7§;
   import §#$?§.§7!b§;
   import §&=§.§<#V§;
   import §,#,§.§>#g§;
   import §,#,§.§]§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §?Q§.ErrorPopup;
   import §[#V§.§1!>§;
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §8#Z§ extends §0!w§
   {
       
      
      public function §8#Z§(param1:§2_§, param2:§'"j§, param3:String = "", param4:String = "")
      {
         super(param1,param2,param3,param4);
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
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/buywithvc/" + §@l§.id + "/" + §`!Q§.totalQuantity);
         §^!$§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:§<#V§ = null;
         var e:Event = param1;
         §^!$§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §^!$§.data;
            if(rawJSONData.purchaseId)
            {
               §"@§ = rawJSONData.purchaseId;
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error parsing JSON: " + §^!$§.data + "\nError code: " + §@$7§.§8A§));
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            §"c§ = rawJSONData.errorCode;
            §=$#§ = rawJSONData.errorMessage;
            dispatchEvent(new §1!>§(§1!>§.§6#!§));
         }
         else
         {
            if(pricePoint && §@" §)
            {
               ao = new §<#V§();
               ao.amount = pricePoint.totalQuantity;
               ao.itemType = §@l§.id;
               ao.§&$3§ = pricePoint.price;
               ao.currency = §>#g§.§=-§;
               ao.§>$%§ = §"@§;
               ao.screen = §5"N§;
               ao.level = §'#S§;
               ao.§]#=§ = §3";§.§;K§;
               aoArray = [ao];
               §3";§.§#"'§().§?T§(§>#g§.§=-§,pricePoint.campaignPrice > 0 ? int(pricePoint.campaignPrice) : int(pricePoint.price),"Purchase",ao.itemType,pricePoint.totalQuantity,aoArray[0].screen,aoArray[0].level);
               §7!b§.§7@§("trackFBPixelEvent","vc_use");
            }
            changedItems = §]#0§.§+!,§.§&$@§(rawJSONData.items,false,aoArray);
            dispatchEvent(new §1!>§(§1!>§.§^#b§,false,false,changedItems));
         }
      }
   }
}
