package §;!L§
{
   import §#"4§.§@$7§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §>#q§.§0!w§;
   import §?Q§.ErrorPopup;
   import §[#V§.§1!>§;
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §%"j§ extends §0!w§
   {
       
      
      public function §%"j§(param1:§2_§, param2:§'"j§)
      {
         super(null,null);
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
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         §^!$§.load(_loc1_);
      }
      
      override protected function onBuyItemComplete(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var e:Event = param1;
         §^!$§.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = §^!$§.data;
            §"@§ = rawJSONData.toString();
            if(§"@§)
            {
               changedItems = new Array();
               changedItems.push(§"@§);
               dispatchEvent(new §1!>§(§1!>§.§^#b§,false,false,changedItems));
            }
            else
            {
               dispatchEvent(new §1!>§(§1!>§.§6#!§,false,false,null));
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error parsing JSON: " + §^!$§.data + "\nError code: " + §@$7§.§8A§));
         }
      }
   }
}
