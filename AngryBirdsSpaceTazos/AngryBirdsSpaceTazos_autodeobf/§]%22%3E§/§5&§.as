package §]">§
{
   import §'4§.§^g§;
   
   public class §5&§
   {
      
      public static const §0!_§:int = 0;
      
      public static const §=R§:int = 1;
      
      public static const §"N§:int = 2;
      
      public static const §=z§:int = 3;
      
      public static const §@y§:int = 4;
      
      public static const §-!Y§:int = 10;
      
      private static var § K§:§5&§ = new §5&§(0,0,10,500,7.5,600,§0!_§);
      
      private static var §=!?§:§5&§ = new §5&§(0,0,10,500,7.5,600,§=R§);
      
      private static var §]!_§:§5&§ = new §5&§(0,0,15,1750,5,300,§=z§);
      
      private static var TNT:§5&§ = new §5&§(0,0,10,1500,5,150,§"N§);
      
      private static var §1"7§:§5&§ = new §5&§(0,0,5,10,7,275,§@y§);
       
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var §9!Y§:Number;
      
      private var §1d§:Number;
      
      private var §^!$§:Number;
      
      private var §5"&§:Number;
      
      private var §!k§:int;
      
      public function §5&§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.§""4§ = param1;
         this.§%W§ = param2;
         this.§9!Y§ = param3;
         this.§1d§ = param4;
         this.§^!$§ = param5;
         this.§5"&§ = param6;
         this.§!k§ = param7;
      }
      
      public static function §6w§(param1:int, param2:Number, param3:Number) : §5&§
      {
         var _loc4_:§5&§ = null;
         switch(param1)
         {
            case §=R§:
               _loc4_ = §=!?§;
               break;
            case §"N§:
               _loc4_ = TNT;
               break;
            case §=z§:
               _loc4_ = §]!_§;
               break;
            case §@y§:
               _loc4_ = §1"7§;
               break;
            default:
               _loc4_ = § K§;
         }
         return new §5&§(param2,param3,_loc4_.§2L§,_loc4_.push,_loc4_.§@P§,_loc4_.damage,param1);
      }
      
      public static function §2!"§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §5&§
      {
         return new §5&§(param1,param2,param3,param4 * §^g§.§5!-§,param5,param6,§-!Y§);
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get §2L§() : Number
      {
         return this.§9!Y§;
      }
      
      public function get push() : Number
      {
         return this.§1d§;
      }
      
      public function get §@P§() : Number
      {
         return this.§^!$§;
      }
      
      public function get damage() : Number
      {
         return this.§5"&§;
      }
      
      public function get type() : int
      {
         return this.§!k§;
      }
   }
}
