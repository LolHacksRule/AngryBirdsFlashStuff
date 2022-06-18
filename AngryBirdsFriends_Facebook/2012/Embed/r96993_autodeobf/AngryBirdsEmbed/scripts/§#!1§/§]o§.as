package §#!1§
{
   public class §]o§
   {
      
      public static const §2?§:int = 0;
      
      public static const §[!3§:int = 1;
      
      public static const §<x§:int = 2;
      
      public static const §&!!§:int = 3;
      
      public static const §8&§:int = 4;
      
      private static var §!>§:§]o§ = new §]o§(0,0,10,500,7.5,600,§2?§);
      
      private static var §%1§:§]o§ = new §]o§(0,0,10,500,7.5,600,§[!3§);
      
      private static var §,L§:§]o§ = new §]o§(0,0,15,1750,5,300,§&!!§);
      
      private static var §<C§:§]o§ = new §]o§(0,0,10,1500,5,150,§<x§);
      
      private static var §%!4§:§]o§ = new §]o§(0,0,5,10,7,275,§8&§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §2h§:Number;
      
      private var § !B§:Number;
      
      private var §<]§:Number;
      
      private var §->§:Number;
      
      private var §3]§:int;
      
      public function §]o§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§2h§ = param3;
         this.§ !B§ = param4;
         this.§<]§ = param5;
         this.§->§ = param6;
         this.§3]§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §]o§
      {
         var _loc4_:§]o§ = null;
         switch(param1)
         {
            case §[!3§:
               _loc4_ = §%1§;
               break;
            case §<x§:
               _loc4_ = §<C§;
               break;
            case §&!!§:
               _loc4_ = §,L§;
               break;
            case §8&§:
               _loc4_ = §%!4§;
               break;
            default:
               _loc4_ = §!>§;
         }
         return new §]o§(param2,param3,_loc4_.§6!%§,_loc4_.push,_loc4_.§7?§,_loc4_.damage,param1);
      }
      
      public function get §6!%§() : Number
      {
         return this.§2h§;
      }
      
      public function get push() : Number
      {
         return this.§ !B§;
      }
      
      public function get §7?§() : Number
      {
         return this.§<]§;
      }
      
      public function get damage() : Number
      {
         return this.§->§;
      }
      
      public function get type() : int
      {
         return this.§3]§;
      }
   }
}
