package §^"U§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §!@§.§["Q§;
   import §+"E§.§9"z§;
   import §6V§.§4!v§;
   import §7",§.§!#q§;
   import §7",§.§2#i§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §&#c§ extends §["Q§
   {
       
      
      public function §&#c§(param1:§2#i§, param2:§!#q§)
      {
         super(null,null);
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
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §%$+§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var e:Event = param1;
         §%$+§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §%$+§.data;
            §]$2§ = rawJSONData.toString();
            if(§]$2§)
            {
               changedItems = new Array();
               changedItems.push(§]$2§);
               dispatchEvent(new §9"z§(§9"z§.§9$>§,false,false,changedItems));
            }
            else
            {
               dispatchEvent(new §9"z§(§9"z§.§@H§,false,false,null));
            }
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §%$+§.data,§4!v§.§&"a§);
         }
      }
   }
}
