package §`!%§
{
   import §7r§.§5e§;
   import §7r§.Items;
   import §89§.§7A§;
   
   public class §6!_§
   {
      
      public static var §][§:String = "Tue 04/26";
      
      private static var §<c§:§7A§ = null;
      
      private static var §4!v§:Items = null;
      
      private static var §=,§:§5e§ = null;
       
      
      public function §6!_§()
      {
         super();
      }
      
      public static function get §+!e§() : §7A§
      {
         return §<c§;
      }
      
      public static function set §+!e§(param1:§7A§) : void
      {
         §<c§ = param1;
      }
      
      public static function §1w§() : Items
      {
         if(§4!v§ == null)
         {
            §4!v§ = new Items();
         }
         return §4!v§;
      }
      
      public static function §`;§() : §5e§
      {
         if(§=,§ == null)
         {
            §=,§ = new §5e§();
         }
         return §=,§;
      }
   }
}
