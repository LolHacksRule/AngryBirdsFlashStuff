package §"P§
{
   import §9G§.§2F§;
   
   public class §7"$§
   {
      
      public static const §@!l§:int = 0;
      
      public static const §-%§:int = 1;
      
      public static const §!"1§:int = 2;
      
      public static const §""5§:int = 3;
      
      public static const §,!Y§:int = 4;
      
      public static const §22§:int = 5;
      
      public static const §-!@§:int = 10;
      
      private static var DEFAULT:§7"$§ = new §7"$§(0,0,10,500,7.5,600,§@!l§);
      
      private static var §^&§:§7"$§ = new §7"$§(0,0,10,500,7.5,600,§-%§);
      
      private static var §-!u§:§7"$§ = new §7"$§(0,0,15,2000,5,300,§""5§);
      
      private static var §3!y§:§7"$§ = new §7"$§(0,0,8,1500,0,0,§22§);
      
      private static var TNT:§7"$§ = new §7"$§(0,0,10,1500,5,150,§!"1§);
      
      private static var §[y§:§7"$§ = new §7"$§(0,0,5,10,7,275,§,!Y§);
       
      
      private var §@!-§:Number;
      
      private var §'!0§:Number;
      
      private var §6!D§:Number;
      
      private var §2!W§:Number;
      
      private var §!_§:Number;
      
      private var §,!K§:Number;
      
      private var §2E§:int;
      
      private var §!E§:int = -1;
      
      public function §7"$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§@!-§ = param1;
         this.§'!0§ = param2;
         this.§6!D§ = param3;
         this.§2!W§ = param4;
         this.§!_§ = param5;
         this.§,!K§ = param6;
         this.§2E§ = param7;
         this.§!E§ = param8;
      }
      
      public static function §0",§(param1:int, param2:Number, param3:Number) : §7"$§
      {
         var _loc4_:§7"$§ = null;
         switch(param1)
         {
            case §-%§:
               _loc4_ = §^&§;
               break;
            case §!"1§:
               _loc4_ = TNT;
               break;
            case §""5§:
               _loc4_ = §-!u§;
               break;
            case §,!Y§:
               _loc4_ = §[y§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §7"$§(param2,param3,_loc4_.§=!T§,_loc4_.push,_loc4_.§?_§,_loc4_.damage,param1);
      }
      
      public static function § !x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §7"$§
      {
         return new §7"$§(param1,param2,param3,param4 * §2F§.§6+§,param5,param6,§-!@§);
      }
      
      public function get x() : Number
      {
         return this.§@!-§;
      }
      
      public function get y() : Number
      {
         return this.§'!0§;
      }
      
      public function get §=!T§() : Number
      {
         return this.§6!D§;
      }
      
      public function get push() : Number
      {
         return this.§2!W§;
      }
      
      public function get §?_§() : Number
      {
         return this.§!_§;
      }
      
      public function get damage() : Number
      {
         return this.§,!K§;
      }
      
      public function get type() : int
      {
         return this.§2E§;
      }
      
      public function get §<!=§() : int
      {
         return this.§!E§;
      }
   }
}
