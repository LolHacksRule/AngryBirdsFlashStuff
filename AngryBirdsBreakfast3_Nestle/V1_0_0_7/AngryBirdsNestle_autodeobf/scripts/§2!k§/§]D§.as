package §2!k§
{
   import §]A§.§[d§;
   
   public class §]D§
   {
      
      public static const §2Z§:int = 0;
      
      public static const §5;§:int = 1;
      
      public static const §#!'§:int = 2;
      
      public static const §&!d§:int = 3;
      
      public static const §8!s§:int = 4;
      
      public static const §;!8§:int = 5;
      
      public static const §`!1§:int = 10;
      
      private static var DEFAULT:§]D§ = new §]D§(0,0,10,500,7.5,600,§2Z§);
      
      private static var §>F§:§]D§ = new §]D§(0,0,10,500,7.5,600,§5;§);
      
      private static var §<![§:§]D§ = new §]D§(0,0,15,2000,5,300,§&!d§);
      
      private static var §"T§:§]D§ = new §]D§(0,0,8,1500,0,0,§;!8§);
      
      private static var TNT:§]D§ = new §]D§(0,0,10,1500,5,150,§#!'§);
      
      private static var §-G§:§]D§ = new §]D§(0,0,5,10,7,275,§8!s§);
       
      
      private var §'!a§:Number;
      
      private var §[6§:Number;
      
      private var §=!'§:Number;
      
      private var §,=§:Number;
      
      private var §`"&§:Number;
      
      private var §9!B§:Number;
      
      private var §3d§:int;
      
      private var §0!M§:int = -1;
      
      public function §]D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§'!a§ = param1;
         this.§[6§ = param2;
         this.§=!'§ = param3;
         this.§,=§ = param4;
         this.§`"&§ = param5;
         this.§9!B§ = param6;
         this.§3d§ = param7;
         this.§0!M§ = param8;
      }
      
      public static function §<!I§(param1:int, param2:Number, param3:Number) : §]D§
      {
         var _loc4_:§]D§ = null;
         switch(param1)
         {
            case §5;§:
               _loc4_ = §>F§;
               break;
            case §#!'§:
               _loc4_ = TNT;
               break;
            case §&!d§:
               _loc4_ = §<![§;
               break;
            case §8!s§:
               _loc4_ = §-G§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §]D§(param2,param3,_loc4_.§+!>§,_loc4_.push,_loc4_.§8!b§,_loc4_.damage,param1);
      }
      
      public static function §4"+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §]D§
      {
         return new §]D§(param1,param2,param3,param4 * §[d§.§]!U§,param5,param6,§`!1§);
      }
      
      public function get x() : Number
      {
         return this.§'!a§;
      }
      
      public function get y() : Number
      {
         return this.§[6§;
      }
      
      public function get §+!>§() : Number
      {
         return this.§=!'§;
      }
      
      public function get push() : Number
      {
         return this.§,=§;
      }
      
      public function get §8!b§() : Number
      {
         return this.§`"&§;
      }
      
      public function get damage() : Number
      {
         return this.§9!B§;
      }
      
      public function get type() : int
      {
         return this.§3d§;
      }
      
      public function get §<!2§() : int
      {
         return this.§0!M§;
      }
   }
}
