package §9!T§
{
   public class §7!a§
   {
      
      public static const §?f§:int = 0;
      
      public static const §%?§:int = 1;
      
      public static const §>W§:int = 2;
      
      public static const §1!D§:int = 3;
      
      public static const §;!?§:int = 4;
      
      private static var §0V§:§7!a§ = new §7!a§(0,0,10,500,7.5,600,§?f§);
      
      private static var §;!S§:§7!a§ = new §7!a§(0,0,10,500,7.5,600,§%?§);
      
      private static var §13§:§7!a§ = new §7!a§(0,0,15,1750,5,300,§1!D§);
      
      private static var §&7§:§7!a§ = new §7!a§(0,0,10,1500,5,150,§>W§);
      
      private static var §]5§:§7!a§ = new §7!a§(0,0,5,10,7,275,§;!?§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §+!F§:Number;
      
      private var §]I§:Number;
      
      private var §7_§:Number;
      
      private var §&!L§:Number;
      
      private var §'a§:int;
      
      public function §7!a§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§+!F§ = param3;
         this.§]I§ = param4;
         this.§7_§ = param5;
         this.§&!L§ = param6;
         this.§'a§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7!a§
      {
         var _loc4_:§7!a§ = null;
         switch(param1)
         {
            case §%?§:
               _loc4_ = §;!S§;
               break;
            case §>W§:
               _loc4_ = §&7§;
               break;
            case §1!D§:
               _loc4_ = §13§;
               break;
            case §;!?§:
               _loc4_ = §]5§;
               break;
            default:
               _loc4_ = §0V§;
         }
         return new §7!a§(param2,param3,_loc4_.§4!b§,_loc4_.push,_loc4_.§0!0§,_loc4_.damage,param1);
      }
      
      public function get §4!b§() : Number
      {
         return this.§+!F§;
      }
      
      public function get push() : Number
      {
         return this.§]I§;
      }
      
      public function get §0!0§() : Number
      {
         return this.§7_§;
      }
      
      public function get damage() : Number
      {
         return this.§&!L§;
      }
      
      public function get type() : int
      {
         return this.§'a§;
      }
   }
}
