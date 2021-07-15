package §,z§
{
   import §@L§.§?!'§;
   
   public class §@q§
   {
      
      public static const §+",§:int = 0;
      
      public static const §5!]§:int = 1;
      
      public static const §]!Q§:int = 2;
      
      public static const §-Q§:int = 3;
      
      public static const §@" §:int = 4;
      
      public static const §2!q§:int = 5;
      
      public static const §8Y§:int = 10;
      
      private static var DEFAULT:§@q§ = new §@q§(0,0,10,500,7.5,600,§+",§);
      
      private static var §7m§:§@q§ = new §@q§(0,0,10,500,7.5,600,§5!]§);
      
      private static var §^!=§:§@q§ = new §@q§(0,0,15,2000,5,300,§-Q§);
      
      private static var §?e§:§@q§ = new §@q§(0,0,8,1500,0,0,§2!q§);
      
      private static var TNT:§@q§ = new §@q§(0,0,10,1500,5,150,§]!Q§);
      
      private static var §?f§:§@q§ = new §@q§(0,0,5,10,7,275,§@" §);
       
      
      private var §%!3§:Number;
      
      private var §?!e§:Number;
      
      private var §8J§:Number;
      
      private var §"z§:Number;
      
      private var §=!5§:Number;
      
      private var §2!g§:Number;
      
      private var §^"'§:int;
      
      private var §8V§:int = -1;
      
      public function §@q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§%!3§ = param1;
         this.§?!e§ = param2;
         this.§8J§ = param3;
         this.§"z§ = param4;
         this.§=!5§ = param5;
         this.§2!g§ = param6;
         this.§^"'§ = param7;
         this.§8V§ = param8;
      }
      
      public static function §0!@§(param1:int, param2:Number, param3:Number) : §@q§
      {
         var _loc4_:§@q§ = null;
         switch(param1)
         {
            case §5!]§:
               _loc4_ = §7m§;
               break;
            case §]!Q§:
               _loc4_ = TNT;
               break;
            case §-Q§:
               _loc4_ = §^!=§;
               break;
            case §@" §:
               _loc4_ = §?f§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §@q§(param2,param3,_loc4_.§'i§,_loc4_.push,_loc4_.§,p§,_loc4_.damage,param1);
      }
      
      public static function §9D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §@q§
      {
         return new §@q§(param1,param2,param3,param4 * §?!'§.§'!i§,param5,param6,§8Y§);
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function get §'i§() : Number
      {
         return this.§8J§;
      }
      
      public function get push() : Number
      {
         return this.§"z§;
      }
      
      public function get §,p§() : Number
      {
         return this.§=!5§;
      }
      
      public function get damage() : Number
      {
         return this.§2!g§;
      }
      
      public function get type() : int
      {
         return this.§^"'§;
      }
      
      public function get §]S§() : int
      {
         return this.§8V§;
      }
   }
}
