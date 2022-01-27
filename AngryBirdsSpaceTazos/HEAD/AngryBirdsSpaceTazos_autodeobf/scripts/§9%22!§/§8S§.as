package §9"!§
{
   import §3"#§.§`"8§;
   
   public class §8S§
   {
      
      public static const §3!;§:int = 0;
      
      public static const §<!S§:int = 1;
      
      public static const §?&§:int = 2;
      
      public static const § t§:int = 3;
      
      public static const §,5§:int = 4;
      
      public static const §2"9§:int = 10;
      
      private static var §3"4§:§8S§ = new §8S§(0,0,10,500,7.5,600,§3!;§);
      
      private static var §+n§:§8S§ = new §8S§(0,0,10,500,7.5,600,§<!S§);
      
      private static var §-!b§:§8S§ = new §8S§(0,0,15,1750,5,300,§ t§);
      
      private static var TNT:§8S§ = new §8S§(0,0,10,1500,5,150,§?&§);
      
      private static var §3Z§:§8S§ = new §8S§(0,0,5,10,7,275,§,5§);
       
      
      private var §''§:Number;
      
      private var §3"<§:Number;
      
      private var §>X§:Number;
      
      private var §0!7§:Number;
      
      private var §5Q§:Number;
      
      private var §9N§:Number;
      
      private var §'!$§:int;
      
      public function §8S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.§''§ = param1;
         this.§3"<§ = param2;
         this.§>X§ = param3;
         this.§0!7§ = param4;
         this.§5Q§ = param5;
         this.§9N§ = param6;
         this.§'!$§ = param7;
      }
      
      public static function §4q§(param1:int, param2:Number, param3:Number) : §8S§
      {
         var _loc4_:§8S§ = null;
         switch(param1)
         {
            case §<!S§:
               _loc4_ = §+n§;
               break;
            case §?&§:
               _loc4_ = TNT;
               break;
            case § t§:
               _loc4_ = §-!b§;
               break;
            case §,5§:
               _loc4_ = §3Z§;
               break;
            default:
               _loc4_ = §3"4§;
         }
         return new §8S§(param2,param3,_loc4_.§`!J§,_loc4_.push,_loc4_.§;5§,_loc4_.damage,param1);
      }
      
      public static function §,<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §8S§
      {
         return new §8S§(param1,param2,param3,param4 * §`"8§.§3!=§,param5,param6,§2"9§);
      }
      
      public function get x() : Number
      {
         return this.§''§;
      }
      
      public function get y() : Number
      {
         return this.§3"<§;
      }
      
      public function get §`!J§() : Number
      {
         return this.§>X§;
      }
      
      public function get push() : Number
      {
         return this.§0!7§;
      }
      
      public function get §;5§() : Number
      {
         return this.§5Q§;
      }
      
      public function get damage() : Number
      {
         return this.§9N§;
      }
      
      public function get type() : int
      {
         return this.§'!$§;
      }
   }
}
