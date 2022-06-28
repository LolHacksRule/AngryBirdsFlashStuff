package §8u§
{
   public class §5<§
   {
      
      public static const §"!,§:int = 0;
      
      public static const §7[§:int = 1;
      
      public static const §&!'§:int = 2;
      
      public static const §#n§:int = 3;
      
      public static const §0S§:int = 4;
      
      private static var §=b§:§5<§ = new §5<§(0,0,10,500,7.5,600,§"!,§);
      
      private static var §5!4§:§5<§ = new §5<§(0,0,10,500,7.5,600,§7[§);
      
      private static var §&!4§:§5<§ = new §5<§(0,0,15,1750,5,300,§#n§);
      
      private static var §2k§:§5<§ = new §5<§(0,0,10,1500,5,150,§&!'§);
      
      private static var §%s§:§5<§ = new §5<§(0,0,5,10,7,275,§0S§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!L§:Number;
      
      private var §,,§:Number;
      
      private var §?!"§:Number;
      
      private var §5!"§:Number;
      
      private var §[!+§:int;
      
      public function §5<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§!L§ = param3;
         this.§,,§ = param4;
         this.§?!"§ = param5;
         this.§5!"§ = param6;
         this.§[!+§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5<§
      {
         var _loc4_:§5<§ = null;
         switch(param1)
         {
            case §7[§:
               _loc4_ = §5!4§;
               break;
            case §&!'§:
               _loc4_ = §2k§;
               break;
            case §#n§:
               _loc4_ = §&!4§;
               break;
            case §0S§:
               _loc4_ = §%s§;
               break;
            default:
               _loc4_ = §=b§;
         }
         return new §5<§(param2,param3,_loc4_.§`T§,_loc4_.push,_loc4_.§#!9§,_loc4_.damage,param1);
      }
      
      public function get §`T§() : Number
      {
         return this.§!L§;
      }
      
      public function get push() : Number
      {
         return this.§,,§;
      }
      
      public function get §#!9§() : Number
      {
         return this.§?!"§;
      }
      
      public function get damage() : Number
      {
         return this.§5!"§;
      }
      
      public function get type() : int
      {
         return this.§[!+§;
      }
   }
}
