package §4"m§
{
   import §!b§.§]!s§;
   import §+"Y§.SyncPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §5"Q§.§5"s§;
   import §9"U§.§7"1§;
   import §98§.§'"M§;
   import §?!u§.§9"D§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[!D§
   {
      
      protected static var §5%§:String;
      
      protected static var §+!'§:int;
      
      protected static var §,#$§:int;
      
      protected static var §`i§:Boolean = false;
      
      protected static var §,z§:Boolean = false;
      
      private static var §1"p§:Timer;
       
      
      public function §[!D§()
      {
         super();
      }
      
      public static function §[""§(param1:§'"M§) : void
      {
         §?[§(param1);
         §]!s§.§[!A§(param1.itemID,param1.quantity,param1.price);
         §,z§ = true;
      }
      
      public static function §=##§(param1:§'"M§) : void
      {
         §?[§(param1);
         §]!s§.§3"!§(param1.itemID,param1.quantity,param1.price);
         §,z§ = false;
      }
      
      protected static function §?[§(param1:§'"M§) : void
      {
         if(!§`i§)
         {
            §5"s§.addCallback("purchaseComplete",§5!e§);
            §`i§ = true;
         }
         §5"s§.§<!8§("placeOrder",param1.itemID + "_" + param1.quantity);
         §5%§ = param1.itemID;
         §+!'§ = param1.quantity;
         §,#$§ = param1.price;
      }
      
      protected static function §5!e§() : void
      {
         var _loc1_:§3!§ = new SyncPopup(§^!S§.ERROR,§2!s§.DEFAULT);
         §4"#§.singleton.popupManager.openPopup(_loc1_);
         §1"p§ = new Timer(2000);
         §1"p§.addEventListener(TimerEvent.TIMER,§%!t§);
         §1"p§.start();
      }
      
      private static function §%!t§(param1:TimerEvent) : void
      {
         §1"p§.removeEventListener(TimerEvent.TIMER,§%!t§);
         §1"p§.stop();
         §1"p§ = null;
         §7"1§(§4"#§.singleton.dataModel).§,!6§.§extends§();
         if(§,z§)
         {
            §7"1§(§4"#§.singleton.dataModel).§1z§.reset();
            §]!s§.§<"?§(§5%§,§+!'§,§,#$§);
         }
         else
         {
            §]!s§.§ "e§(§5%§,§+!'§,§,#$§);
         }
         §7"1§(§4"#§.singleton.dataModel).§,!6§.addEventListener(§9"D§.§#"7§,§<!X§);
      }
      
      private static function §<!X§(param1:Event) : void
      {
         if(§7"1§(§4"#§.singleton.dataModel).§,!6§.§3"c§)
         {
            §4"#§.singleton.popupManager.§6!u§(SyncPopup.§-"§);
            §7"1§(§4"#§.singleton.dataModel).§,!6§.removeEventListener(§9"D§.§#"7§,§<!X§);
         }
         else
         {
            §1"p§ = new Timer(10000);
            §1"p§.addEventListener(TimerEvent.TIMER,§%!t§);
            §1"p§.start();
         }
      }
   }
}
