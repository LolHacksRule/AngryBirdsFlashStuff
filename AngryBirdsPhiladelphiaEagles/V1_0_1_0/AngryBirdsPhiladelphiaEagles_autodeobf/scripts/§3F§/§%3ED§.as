package §3F§
{
   public class §>D§
   {
      
      public static const §8!;§:int = 0;
      
      public static const §!U§:int = 1;
      
      public static const §0!4§:int = 2;
      
      public static const §8w§:int = 3;
      
      public static const §]§:int = 4;
      
      private static var §^r§:§>D§ = new §>D§(0,0,10,500,7.5,600,§8!;§);
      
      private static var §[r§:§>D§ = new §>D§(0,0,10,500,7.5,600,§!U§);
      
      private static var §=!>§:§>D§ = new §>D§(0,0,15,1750,5,300,§8w§);
      
      private static var §[!,§:§>D§ = new §>D§(0,0,10,1500,5,150,§0!4§);
      
      private static var §6+§:§>D§ = new §>D§(0,0,5,10,7,275,§]§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §-!;§:Number;
      
      private var §0R§:Number;
      
      private var §>!0§:Number;
      
      private var §`!<§:Number;
      
      private var §0J§:int;
      
      public function §>D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§-!;§ = param3;
         this.§0R§ = param4;
         this.§>!0§ = param5;
         this.§`!<§ = param6;
         this.§0J§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §>D§
      {
         var _loc4_:§>D§ = null;
         switch(param1)
         {
            case §!U§:
               _loc4_ = §[r§;
               break;
            case §0!4§:
               _loc4_ = §[!,§;
               break;
            case §8w§:
               _loc4_ = §=!>§;
               break;
            case §]§:
               _loc4_ = §6+§;
               break;
            default:
               _loc4_ = §^r§;
         }
         return new §>D§(param2,param3,_loc4_.§-!-§,_loc4_.push,_loc4_.§3W§,_loc4_.damage,param1);
      }
      
      public function get §-!-§() : Number
      {
         return this.§-!;§;
      }
      
      public function get push() : Number
      {
         return this.§0R§;
      }
      
      public function get §3W§() : Number
      {
         return this.§>!0§;
      }
      
      public function get damage() : Number
      {
         return this.§`!<§;
      }
      
      public function get type() : int
      {
         return this.§0J§;
      }
   }
}
