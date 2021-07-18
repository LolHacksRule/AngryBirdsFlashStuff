package §@"D§
{
   import §"!U§.§6!J§;
   import §"!U§.§=#V§;
   import §;!H§.§3#u§;
   import §>!#§.§@"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^$4§.§>"T§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §[o§ extends §3#u§
   {
       
      
      public function §[o§(param1:§=#V§, param2:§6!J§)
      {
         super(null,null);
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
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §5!L§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var e:Event = param1;
         §5!L§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §5!L§.data;
            §=!;§ = rawJSONData.toString();
            if(§=!;§)
            {
               changedItems = new Array();
               changedItems.push(§=!;§);
               dispatchEvent(new §>"T§(§>"T§.§>"d§,false,false,changedItems));
            }
            else
            {
               addr56:
               dispatchEvent(new §>"T§(§>"T§.§-b§,false,false,null));
            }
            return;
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §5!L§.data,§@"$§.§3"t§);
         }
         §§goto(addr56);
      }
   }
}
