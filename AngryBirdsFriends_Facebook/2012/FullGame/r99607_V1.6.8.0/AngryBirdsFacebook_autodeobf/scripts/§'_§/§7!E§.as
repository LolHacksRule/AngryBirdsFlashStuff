package §'_§
{
   public class §7!E§
   {
      
      public static const §0!^§:int = 0;
      
      public static const §"!"§:int = 1;
      
      public static const §8d§:int = 2;
      
      public static const §4"&§:int = 3;
      
      public static const §=!q§:int = 4;
      
      private static var §#!0§:§7!E§ = new §7!E§(0,0,10,500,7.5,600,§0!^§);
      
      private static var §8"3§:§7!E§ = new §7!E§(0,0,10,500,7.5,600,§"!"§);
      
      private static var §`"4§:§7!E§ = new §7!E§(0,0,15,1750,5,300,§4"&§);
      
      private static var §7!A§:§7!E§ = new §7!E§(0,0,10,1500,5,150,§8d§);
      
      private static var § B§:§7!E§ = new §7!E§(0,0,5,10,7,275,§=!q§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §9!g§:Number;
      
      private var §8<§:Number;
      
      private var §'!`§:Number;
      
      private var §`!n§:Number;
      
      private var §+q§:int;
      
      public function §7!E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§9!g§ = param3;
         this.§8<§ = param4;
         this.§'!`§ = param5;
         this.§`!n§ = param6;
         this.§+q§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7!E§
      {
         var _loc4_:§7!E§ = null;
         switch(param1)
         {
            case §"!"§:
               _loc4_ = §8"3§;
               break;
            case §8d§:
               _loc4_ = §7!A§;
               break;
            case §4"&§:
               _loc4_ = §`"4§;
               break;
            case §=!q§:
               _loc4_ = § B§;
               break;
            default:
               _loc4_ = §#!0§;
         }
         return new §7!E§(param2,param3,_loc4_.§&!E§,_loc4_.push,_loc4_.§2"3§,_loc4_.damage,param1);
      }
      
      public function get §&!E§() : Number
      {
         return this.§9!g§;
      }
      
      public function get push() : Number
      {
         return this.§8<§;
      }
      
      public function get §2"3§() : Number
      {
         return this.§'!`§;
      }
      
      public function get damage() : Number
      {
         return this.§`!n§;
      }
      
      public function get type() : int
      {
         return this.§+q§;
      }
   }
}
