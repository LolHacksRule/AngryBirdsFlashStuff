package §?!§
{
   public class §5!$§
   {
      
      public static const §=j§:int = 0;
      
      public static const §4_§:int = 1;
      
      public static const §1!7§:int = 2;
      
      public static const §<%§:int = 3;
      
      public static const §]!R§:int = 4;
      
      private static var §6C§:§5!$§ = new §5!$§(0,0,10,500,7.5,600,§=j§);
      
      private static var §!!U§:§5!$§ = new §5!$§(0,0,10,500,7.5,600,§4_§);
      
      private static var §=!%§:§5!$§ = new §5!$§(0,0,15,1750,5,300,§<%§);
      
      private static var §5!'§:§5!$§ = new §5!$§(0,0,10,1500,5,150,§1!7§);
      
      private static var §0!B§:§5!$§ = new §5!$§(0,0,5,10,7,275,§]!R§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §3!#§:Number;
      
      private var §!!"§:Number;
      
      private var §&!M§:Number;
      
      private var §4!"§:Number;
      
      private var §,?§:int;
      
      public function §5!$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§3!#§ = param3;
         this.§!!"§ = param4;
         this.§&!M§ = param5;
         this.§4!"§ = param6;
         this.§,?§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5!$§
      {
         var _loc4_:§5!$§ = null;
         switch(param1)
         {
            case §4_§:
               _loc4_ = §!!U§;
               break;
            case §1!7§:
               _loc4_ = §5!'§;
               break;
            case §<%§:
               _loc4_ = §=!%§;
               break;
            case §]!R§:
               _loc4_ = §0!B§;
               break;
            default:
               _loc4_ = §6C§;
         }
         return new §5!$§(param2,param3,_loc4_.§?!,§,_loc4_.push,_loc4_.§55§,_loc4_.damage,param1);
      }
      
      public function get §?!,§() : Number
      {
         return this.§3!#§;
      }
      
      public function get push() : Number
      {
         return this.§!!"§;
      }
      
      public function get §55§() : Number
      {
         return this.§&!M§;
      }
      
      public function get damage() : Number
      {
         return this.§4!"§;
      }
      
      public function get type() : int
      {
         return this.§,?§;
      }
   }
}
