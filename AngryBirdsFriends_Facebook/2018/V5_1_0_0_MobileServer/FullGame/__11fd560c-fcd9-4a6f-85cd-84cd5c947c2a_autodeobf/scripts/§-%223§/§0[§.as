package §-"3§
{
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §1"N§.§^5§;
   import §2"5§.§1"?§;
   import §?P§.ErrorPopup;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §`7§.§[$-§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §0[§ extends §^5§
   {
       
      
      public function §0[§(param1:§"#x§, param2:§##P§)
      {
         super(null,null);
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
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §9#s§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var e:Event = param1;
         §9#s§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §9#s§.data;
            §@!W§ = rawJSONData.toString();
            if(§@!W§)
            {
               changedItems = new Array();
               changedItems.push(§@!W§);
               dispatchEvent(new §1"?§(§1"?§.§=#j§,false,false,changedItems));
            }
            else
            {
               dispatchEvent(new §1"?§(§1"?§.§^#M§,false,false,null));
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error parsing JSON: " + §9#s§.data + "\nError code: " + §[$-§.§&!X§));
         }
      }
   }
}
