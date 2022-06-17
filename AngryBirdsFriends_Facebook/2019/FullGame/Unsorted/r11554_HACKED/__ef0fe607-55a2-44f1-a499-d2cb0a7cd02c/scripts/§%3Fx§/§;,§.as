package §?x§
{
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import §'#g§.§]!8§;
   import §+#B§.§ "f§;
   import §5"c§.§8K§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.ErrorPopup;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §;,§ extends §]!8§
   {
       
      
      public function §;,§(param1:§,!K§, param2:§<#a§)
      {
         super(null,null);
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
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §'X§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var e:Event = param1;
         §'X§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §'X§.data;
            §3@§ = rawJSONData.toString();
            if(§3@§)
            {
               changedItems = new Array();
               changedItems.push(§3@§);
               dispatchEvent(new §8K§(§8K§.§`#y§,false,false,changedItems));
            }
            else
            {
               dispatchEvent(new §8K§(§8K§.§<"&§,false,false,null));
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error parsing JSON: " + §'X§.data + "\nError code: " + § "f§.§[$3§));
         }
      }
   }
}
