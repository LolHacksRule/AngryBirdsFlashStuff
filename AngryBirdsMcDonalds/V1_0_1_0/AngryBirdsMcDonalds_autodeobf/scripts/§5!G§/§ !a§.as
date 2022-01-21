package §5!G§
{
   public class § !a§
   {
      
      public static const §+!i§:int = 0;
      
      public static const §&N§:int = 1;
      
      public static const §3!$§:int = 2;
      
      public static const §+!T§:int = 3;
      
      public static const §0Q§:int = 4;
      
      private static var §8!3§:§ !a§ = new § !a§(0,0,10,500,7.5,600,§+!i§);
      
      private static var §3t§:§ !a§ = new § !a§(0,0,10,500,7.5,600,§&N§);
      
      private static var §`R§:§ !a§ = new § !a§(0,0,15,1750,5,300,§+!T§);
      
      private static var §,!T§:§ !a§ = new § !a§(0,0,10,1500,5,150,§3!$§);
      
      private static var §3!6§:§ !a§ = new § !a§(0,0,5,10,7,275,§0Q§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var § !0§:Number;
      
      private var §;z§:Number;
      
      private var §-!G§:Number;
      
      private var §#G§:Number;
      
      private var §'&§:int;
      
      public function § !a§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§ !0§ = param3;
         this.§;z§ = param4;
         this.§-!G§ = param5;
         this.§#G§ = param6;
         this.§'&§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : § !a§
      {
         var _loc4_:§ !a§ = null;
         switch(param1)
         {
            case §&N§:
               _loc4_ = §3t§;
               break;
            case §3!$§:
               _loc4_ = §,!T§;
               break;
            case §+!T§:
               _loc4_ = §`R§;
               break;
            case §0Q§:
               _loc4_ = §3!6§;
               break;
            default:
               _loc4_ = §8!3§;
         }
         return new § !a§(param2,param3,_loc4_.§+!#§,_loc4_.push,_loc4_.§^&§,_loc4_.damage,param1);
      }
      
      public function get §+!#§() : Number
      {
         return this.§ !0§;
      }
      
      public function get push() : Number
      {
         return this.§;z§;
      }
      
      public function get §^&§() : Number
      {
         return this.§-!G§;
      }
      
      public function get damage() : Number
      {
         return this.§#G§;
      }
      
      public function get type() : int
      {
         return this.§'&§;
      }
   }
}
