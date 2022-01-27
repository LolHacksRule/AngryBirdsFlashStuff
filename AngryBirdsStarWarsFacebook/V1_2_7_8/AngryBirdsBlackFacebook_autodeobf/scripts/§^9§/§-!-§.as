package §^9§
{
   import § 0§.§@Y§;
   import §0R§.§0!8§;
   import §1!o§.§<"]§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §;q§.§ true§;
   import §<"s§.§0u§;
   import §<"s§.SyncPopup;
   import §`"8§.§-!w§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-!-§
   {
      
      protected static var §[!Q§:String;
      
      protected static var §3##§:int;
      
      protected static var §7!o§:int;
      
      protected static var §,"V§:Boolean = false;
      
      protected static var §!"p§:Boolean = false;
      
      private static var §use§:Timer;
       
      
      public function §-!-§()
      {
         super();
      }
      
      public static function §#">§(param1:§ true§) : void
      {
         §4!V§(param1);
         §0!8§.§-!k§(param1.itemID,param1.quantity,param1.price);
         §!"p§ = true;
      }
      
      public static function §6!<§(param1:§ true§) : void
      {
         §4!V§(param1);
         §0!8§.§[X§(param1.itemID,param1.quantity,param1.price);
         §!"p§ = false;
      }
      
      protected static function §4!V§(param1:§ true§) : void
      {
         if(!§,"V§)
         {
            §@Y§.addCallback("purchaseComplete",§!"t§);
            §,"V§ = true;
         }
         §@Y§.§7"H§("placeOrder",param1.itemID + "_" + param1.quantity);
         §[!Q§ = param1.itemID;
         §3##§ = param1.quantity;
         §7!o§ = param1.price;
      }
      
      protected static function §!"t§() : void
      {
         var _loc1_:§5!R§ = new SyncPopup(§0u§.ERROR,§^T§.DEFAULT);
         §;"@§.singleton.popupManager.openPopup(_loc1_);
         §use§ = new Timer(2000);
         §use§.addEventListener(TimerEvent.TIMER,§^"_§);
         §use§.start();
      }
      
      private static function §^"_§(param1:TimerEvent) : void
      {
         §use§.removeEventListener(TimerEvent.TIMER,§^"_§);
         §use§.stop();
         §use§ = null;
         §-!w§(§;"@§.singleton.dataModel).§9"1§.§'"4§();
         if(§!"p§)
         {
            §-!w§(§;"@§.singleton.dataModel).§2!J§.reset();
            §0!8§.§-"B§(§[!Q§,§3##§,§7!o§);
         }
         else
         {
            §0!8§.§=D§(§[!Q§,§3##§,§7!o§);
         }
         §-!w§(§;"@§.singleton.dataModel).§9"1§.addEventListener(§<"]§.§"A§,§7!v§);
      }
      
      private static function §7!v§(param1:Event) : void
      {
         if(§-!w§(§;"@§.singleton.dataModel).§9"1§.§ "f§)
         {
            §;"@§.singleton.popupManager.§7M§(SyncPopup.§^"3§);
            §-!w§(§;"@§.singleton.dataModel).§9"1§.removeEventListener(§<"]§.§"A§,§7!v§);
         }
         else
         {
            §use§ = new Timer(10000);
            §use§.addEventListener(TimerEvent.TIMER,§^"_§);
            §use§.start();
         }
      }
   }
}
