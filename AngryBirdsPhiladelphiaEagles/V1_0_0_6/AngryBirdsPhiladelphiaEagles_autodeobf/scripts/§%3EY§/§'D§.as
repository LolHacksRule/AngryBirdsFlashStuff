package §>Y§
{
   public class §'D§
   {
      
      public static const §5!$§:int = 0;
      
      public static const §'t§:int = 1;
      
      public static const §>a§:int = 2;
      
      public static const §@!>§:int = 3;
      
      public static const §9§:int = 4;
      
      private static var §2Q§:§'D§ = new §'D§(0,0,10,500,7.5,600,§5!$§);
      
      private static var § q§:§'D§ = new §'D§(0,0,10,500,7.5,600,§'t§);
      
      private static var §`!<§:§'D§ = new §'D§(0,0,15,1750,5,300,§@!>§);
      
      private static var §&q§:§'D§ = new §'D§(0,0,10,1500,5,150,§>a§);
      
      private static var §,'§:§'D§ = new §'D§(0,0,5,10,7,275,§9§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §;x§:Number;
      
      private var §#Y§:Number;
      
      private var §+e§:Number;
      
      private var §0!;§:Number;
      
      private var §5!9§:int;
      
      public function §'D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§;x§ = param3;
         this.§#Y§ = param4;
         this.§+e§ = param5;
         this.§0!;§ = param6;
         this.§5!9§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §'D§
      {
         var _loc4_:§'D§ = null;
         switch(param1)
         {
            case §'t§:
               _loc4_ = § q§;
               break;
            case §>a§:
               _loc4_ = §&q§;
               break;
            case §@!>§:
               _loc4_ = §`!<§;
               break;
            case §9§:
               _loc4_ = §,'§;
               break;
            default:
               _loc4_ = §2Q§;
         }
         return new §'D§(param2,param3,_loc4_.§'K§,_loc4_.push,_loc4_.§]?§,_loc4_.damage,param1);
      }
      
      public function get §'K§() : Number
      {
         return this.§;x§;
      }
      
      public function get push() : Number
      {
         return this.§#Y§;
      }
      
      public function get §]?§() : Number
      {
         return this.§+e§;
      }
      
      public function get damage() : Number
      {
         return this.§0!;§;
      }
      
      public function get type() : int
      {
         return this.§5!9§;
      }
   }
}
