package §3Y§
{
   public class §^!6§
   {
      
      public static const §[U§:int = 0;
      
      public static const §3!U§:int = 1;
      
      public static const §9!Y§:int = 2;
      
      public static const §7#§:int = 3;
      
      public static const §1n§:int = 4;
      
      private static var DEFAULT:§^!6§ = new §^!6§(0,0,10,500,7.5,600,§[U§);
      
      private static var §^X§:§^!6§ = new §^!6§(0,0,10,500,7.5,600,§3!U§);
      
      private static var §=!K§:§^!6§ = new §^!6§(0,0,15,1750,5,300,§7#§);
      
      private static var §5j§:§^!6§ = new §^!6§(0,0,10,1500,5,150,§9!Y§);
      
      private static var §8h§:§^!6§ = new §^!6§(0,0,5,10,7,275,§1n§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §=!#§:Number;
      
      private var §;!k§:Number;
      
      private var §"0§:Number;
      
      private var §]!#§:Number;
      
      private var §9!Q§:int;
      
      public function §^!6§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§=!#§ = param3;
         this.§;!k§ = param4;
         this.§"0§ = param5;
         this.§]!#§ = param6;
         this.§9!Q§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §^!6§
      {
         var _loc4_:§^!6§ = null;
         switch(param1)
         {
            case §3!U§:
               _loc4_ = §^X§;
               break;
            case §9!Y§:
               _loc4_ = §5j§;
               break;
            case §7#§:
               _loc4_ = §=!K§;
               break;
            case §1n§:
               _loc4_ = §8h§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §^!6§(param2,param3,_loc4_.pushRadius,_loc4_.push,_loc4_.damageRadius,_loc4_.damage,param1);
      }
      
      public function get pushRadius() : Number
      {
         return this.§=!#§;
      }
      
      public function get push() : Number
      {
         return this.§;!k§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§"0§;
      }
      
      public function get damage() : Number
      {
         return this.§]!#§;
      }
      
      public function get type() : int
      {
         return this.§9!Q§;
      }
   }
}
