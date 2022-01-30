package §%Z§
{
   import § 2§.§=+§;
   
   public class §9!,§
   {
      
      public static const §,"+§:int = 0;
      
      public static const § !q§:int = 1;
      
      public static const §%c§:int = 2;
      
      public static const §#L§:int = 3;
      
      public static const §+"#§:int = 4;
      
      public static const §4L§:int = 5;
      
      public static const §1!p§:int = 10;
      
      private static var DEFAULT:§9!,§ = new §9!,§(0,0,10,500,7.5,600,§,"+§);
      
      private static var §[G§:§9!,§ = new §9!,§(0,0,10,500,7.5,600,§ !q§);
      
      private static var §@!C§:§9!,§ = new §9!,§(0,0,15,2000,5,300,§#L§);
      
      private static var §-!9§:§9!,§ = new §9!,§(0,0,8,1500,0,0,§4L§);
      
      private static var TNT:§9!,§ = new §9!,§(0,0,10,1500,5,150,§%c§);
      
      private static var §^"'§:§9!,§ = new §9!,§(0,0,5,10,7,275,§+"#§);
       
      
      private var §0O§:Number;
      
      private var §=!v§:Number;
      
      private var §]"%§:Number;
      
      private var §-P§:Number;
      
      private var §8![§:Number;
      
      private var §%!M§:Number;
      
      private var §=3§:int;
      
      private var §8"7§:int = -1;
      
      public function §9!,§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§0O§ = param1;
         this.§=!v§ = param2;
         this.§]"%§ = param3;
         this.§-P§ = param4;
         this.§8![§ = param5;
         this.§%!M§ = param6;
         this.§=3§ = param7;
         this.§8"7§ = param8;
      }
      
      public static function §3!8§(param1:int, param2:Number, param3:Number) : §9!,§
      {
         var _loc4_:§9!,§ = null;
         switch(param1)
         {
            case § !q§:
               _loc4_ = §[G§;
               break;
            case §%c§:
               _loc4_ = TNT;
               break;
            case §#L§:
               _loc4_ = §@!C§;
               break;
            case §+"#§:
               _loc4_ = §^"'§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §9!,§(param2,param3,_loc4_.§`!`§,_loc4_.push,_loc4_.§2!h§,_loc4_.damage,param1);
      }
      
      public static function §2!e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §9!,§
      {
         return new §9!,§(param1,param2,param3,param4 * §=+§.§5!w§,param5,param6,§1!p§);
      }
      
      public function get x() : Number
      {
         return this.§0O§;
      }
      
      public function get y() : Number
      {
         return this.§=!v§;
      }
      
      public function get §`!`§() : Number
      {
         return this.§]"%§;
      }
      
      public function get push() : Number
      {
         return this.§-P§;
      }
      
      public function get §2!h§() : Number
      {
         return this.§8![§;
      }
      
      public function get damage() : Number
      {
         return this.§%!M§;
      }
      
      public function get type() : int
      {
         return this.§=3§;
      }
      
      public function get §1"!§() : int
      {
         return this.§8"7§;
      }
   }
}
