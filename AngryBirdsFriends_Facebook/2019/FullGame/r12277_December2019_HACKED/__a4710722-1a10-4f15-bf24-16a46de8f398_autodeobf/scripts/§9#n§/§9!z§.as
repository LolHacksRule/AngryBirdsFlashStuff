package §9#n§
{
   import § h§.ErrorPopup;
   import §+Z§.§?!T§;
   import §2E§.§=$3§;
   import §4#l§.§8#E§;
   import §4#l§.§>"`§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §@!_§.§0D§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §9!z§ extends §0D§
   {
       
      
      public function §9!z§(param1:§8#E§, param2:§>"`§)
      {
         super(null,null);
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
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §^#8§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var e:Event = param1;
         §^#8§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §^#8§.data;
            §"§ = rawJSONData.toString();
            if(§"§)
            {
               changedItems = new Array();
               changedItems.push(§"§);
               dispatchEvent(new §?!T§(§?!T§.§@!9§,false,false,changedItems));
            }
            else
            {
               dispatchEvent(new §?!T§(§?!T§.§'?§,false,false,null));
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error parsing JSON: " + §^#8§.data + "\nError code: " + §=$3§.§!$5§));
         }
      }
   }
}
