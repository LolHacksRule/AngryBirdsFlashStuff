package §;! §
{
   import §!"W§.§="g§;
   import §!"e§.SyncPopup;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §,"N§.§@#B§;
   import §7K§.§,T§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §2!P§
   {
      
      protected static var §>!9§:String;
      
      protected static var §5"s§:int;
      
      protected static var §;!'§:int;
      
      protected static var §[!B§:Boolean = false;
      
      protected static var §@!t§:Boolean = false;
      
      private static var §1J§:Timer;
       
      
      public function §2!P§()
      {
         super();
      }
      
      public static function §;%§(param1:§,T§) : void
      {
         §[x§(param1);
         §6"]§.§ "§(param1.itemID,param1.quantity,param1.price);
         §@!t§ = true;
      }
      
      public static function §2"G§(param1:§,T§) : void
      {
         §[x§(param1);
         §6"]§.§1"=§(param1.itemID,param1.quantity,param1.price);
         §@!t§ = false;
      }
      
      protected static function §[x§(param1:§,T§) : void
      {
         if(!§[!B§)
         {
            §""v§.addCallback("purchaseComplete",§#!I§);
            §[!B§ = true;
         }
         §""v§.§&R§("placeOrder",param1.itemID + "_" + param1.quantity);
         §>!9§ = param1.itemID;
         §5"s§ = param1.quantity;
         §;!'§ = param1.price;
      }
      
      protected static function §#!I§() : void
      {
         var _loc1_:§[!j§ = new SyncPopup(§`"W§.ERROR,§+5§.DEFAULT);
         §4#;§.singleton.popupManager.openPopup(_loc1_);
         §1J§ = new Timer(2000);
         §1J§.addEventListener(TimerEvent.TIMER,§-K§);
         §1J§.start();
      }
      
      private static function §-K§(param1:TimerEvent) : void
      {
         §1J§.removeEventListener(TimerEvent.TIMER,§-K§);
         §1J§.stop();
         §1J§ = null;
         §@#B§(§4#;§.singleton.dataModel).§1!f§.§""i§();
         if(§@!t§)
         {
            §@#B§(§4#;§.singleton.dataModel).§!!C§.reset();
            §6"]§.§#"c§(§>!9§,§5"s§,§;!'§);
         }
         else
         {
            §6"]§.§%"B§(§>!9§,§5"s§,§;!'§);
         }
         §@#B§(§4#;§.singleton.dataModel).§1!f§.addEventListener(§="g§.§>#9§,§&B§);
      }
      
      private static function §&B§(param1:Event) : void
      {
         if(§@#B§(§4#;§.singleton.dataModel).§1!f§.§#[§)
         {
            §4#;§.singleton.popupManager.§,"o§(SyncPopup.§%!h§);
            §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§>#9§,§&B§);
         }
         else
         {
            §1J§ = new Timer(10000);
            §1J§.addEventListener(TimerEvent.TIMER,§-K§);
            §1J§.start();
         }
      }
   }
}
