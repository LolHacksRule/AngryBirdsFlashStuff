package §<o§
{
   import §7K§.§,T§;
   import flash.events.Event;
   
   public class §^i§ extends Event
   {
      
      public static const §-#>§:String = "tab_select";
      
      public static const §+]§:String = "buy_powerup";
      
      public static const §@!6§:String = "buy_upgrade";
      
      public static const §?!A§:String = "buy_energy";
      
      public static const §5!B§:String = "get_subscription";
      
      public static const §?!$§:String = "cancel_subscription";
      
      public static const §@"v§:String = "request_energy";
       
      
      public var prices:§,T§;
      
      public function §^i§(param1:String, param2:§,T§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.prices = param2;
      }
   }
}
