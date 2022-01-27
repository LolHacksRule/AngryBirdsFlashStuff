package §+!#§
{
   public class §8&§
   {
      
      public static const §=y§:int = 0;
      
      public static const §`! §:int = 1;
      
      public static const §"!E§:int = 2;
      
      public static const §]Q§:int = 3;
      
      public static const §0!0§:int = 4;
      
      private static var §!!U§:§8&§ = new §8&§(0,0,10,500,7.5,600,§=y§);
      
      private static var § w§:§8&§ = new §8&§(0,0,10,500,7.5,600,§`! §);
      
      private static var §[![§:§8&§ = new §8&§(0,0,15,1750,5,300,§]Q§);
      
      private static var §00§:§8&§ = new §8&§(0,0,10,1500,5,150,§"!E§);
      
      private static var §"!5§:§8&§ = new §8&§(0,0,5,10,7,275,§0!0§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §^h§:Number;
      
      private var §%@§:Number;
      
      private var §^p§:Number;
      
      private var §0!$§:Number;
      
      private var §<!#§:int;
      
      public function §8&§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§^h§ = param3;
         this.§%@§ = param4;
         this.§^p§ = param5;
         this.§0!$§ = param6;
         this.§<!#§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §8&§
      {
         var _loc4_:§8&§ = null;
         switch(param1)
         {
            case §`! §:
               _loc4_ = § w§;
               break;
            case §"!E§:
               _loc4_ = §00§;
               break;
            case §]Q§:
               _loc4_ = §[![§;
               break;
            case §0!0§:
               _loc4_ = §"!5§;
               break;
            default:
               _loc4_ = §!!U§;
         }
         return new §8&§(param2,param3,_loc4_.§"!<§,_loc4_.push,_loc4_.§@w§,_loc4_.damage,param1);
      }
      
      public function get §"!<§() : Number
      {
         return this.§^h§;
      }
      
      public function get push() : Number
      {
         return this.§%@§;
      }
      
      public function get §@w§() : Number
      {
         return this.§^p§;
      }
      
      public function get damage() : Number
      {
         return this.§0!$§;
      }
      
      public function get type() : int
      {
         return this.§<!#§;
      }
   }
}
