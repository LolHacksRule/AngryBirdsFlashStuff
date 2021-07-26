package §0P§
{
   import § §.§5!$§;
   import §&!_§.§+#`§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §5" §.§5u§;
   import §5" §.§=n§;
   import §6t§.§4?§;
   import §>z§.ErrorPopup;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §,O§ extends §5!$§
   {
       
      
      public function §,O§(param1:§=n§, param2:§5u§)
      {
         super(null,null);
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
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var e:Event = param1;
         §"">§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §"">§.data;
            §>!e§ = rawJSONData.toString();
            if(§>!e§)
            {
               changedItems = new Array();
               changedItems.push(§>!e§);
               dispatchEvent(new §4?§(§4?§.§?w§,false,false,changedItems));
            }
            else
            {
               dispatchEvent(new §4?§(§4?§.§3$2§,false,false,null));
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error parsing JSON: " + §"">§.data + "\nError code: " + §+#`§.§ !R§));
         }
      }
   }
}
