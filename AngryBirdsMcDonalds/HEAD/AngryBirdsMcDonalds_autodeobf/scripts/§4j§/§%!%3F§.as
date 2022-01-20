package §4j§
{
   public class §%!?§
   {
      
      public static const §>!J§:int = 0;
      
      public static const §]Z§:int = 1;
      
      public static const §'!p§:int = 2;
      
      public static const §9T§:int = 3;
      
      public static const §^;§:int = 4;
      
      public static const §4!V§:int = 5;
      
      private static var §-!b§:§%!?§ = new §%!?§(0,0,10,500,7.5,600,§>!J§);
      
      private static var §2Q§:§%!?§ = new §%!?§(0,0,10,500,7.5,600,§]Z§);
      
      private static var §]?§:§%!?§ = new §%!?§(0,0,15,1750,5,300,§9T§);
      
      private static var §&2§:§%!?§ = new §%!?§(0,0,8,1500,0,0,§4!V§);
      
      private static var §7!d§:§%!?§ = new §%!?§(0,0,10,1500,5,150,§'!p§);
      
      private static var §?!i§:§%!?§ = new §%!?§(0,0,5,10,7,275,§^;§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §13§:Number;
      
      private var §]!`§:Number;
      
      private var §[!O§:Number;
      
      private var §!d§:Number;
      
      private var §8!4§:int;
      
      private var §7!`§:Vector.<§9M§>;
      
      public function §%!?§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§9M§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§13§ = param3;
         this.§]!`§ = param4;
         this.§[!O§ = param5;
         this.§!d§ = param6;
         this.§8!4§ = param7;
         this.§7!`§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§9M§> = null) : §%!?§
      {
         var _loc5_:§%!?§ = null;
         switch(param1)
         {
            case §]Z§:
               _loc5_ = §2Q§;
               break;
            case §'!p§:
               _loc5_ = §7!d§;
               break;
            case §9T§:
               _loc5_ = §]?§;
               break;
            case §4!V§:
               _loc5_ = §&2§;
               break;
            case §^;§:
               _loc5_ = §?!i§;
               break;
            default:
               _loc5_ = §-!b§;
         }
         return new §%!?§(param2,param3,_loc5_.§8q§,_loc5_.push,_loc5_.§0g§,_loc5_.damage,param1,param4);
      }
      
      public function get §8q§() : Number
      {
         return this.§13§;
      }
      
      public function get push() : Number
      {
         return this.§]!`§;
      }
      
      public function get §0g§() : Number
      {
         return this.§[!O§;
      }
      
      public function get damage() : Number
      {
         return this.§!d§;
      }
      
      public function get type() : int
      {
         return this.§8!4§;
      }
      
      public function get §^k§() : Vector.<§9M§>
      {
         return this.§7!`§;
      }
   }
}
