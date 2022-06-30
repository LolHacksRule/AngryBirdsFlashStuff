package § !$§
{
   public class §4!<§
   {
      
      public static const §-!8§:int = 0;
      
      public static const §`J§:int = 1;
      
      public static const §,!&§:int = 2;
      
      public static const §=!D§:int = 3;
      
      public static const §;^§:int = 4;
      
      public static const §2Z§:int = 5;
      
      private static var §7-§:§4!<§ = new §4!<§(0,0,10,500,7.5,600,§-!8§);
      
      private static var §3!E§:§4!<§ = new §4!<§(0,0,10,500,7.5,600,§`J§);
      
      private static var §7d§:§4!<§ = new §4!<§(0,0,15,1750,5,300,§=!D§);
      
      private static var §6!]§:§4!<§ = new §4!<§(0,0,8,1500,0,0,§2Z§);
      
      private static var §[A§:§4!<§ = new §4!<§(0,0,10,1500,5,150,§,!&§);
      
      private static var §^c§:§4!<§ = new §4!<§(0,0,5,10,7,275,§;^§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §?!N§:Number;
      
      private var §7!>§:Number;
      
      private var §8?§:Number;
      
      private var § p§:Number;
      
      private var §1@§:int;
      
      private var §%U§:Vector.<§>C§>;
      
      public function §4!<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§>C§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§?!N§ = param3;
         this.§7!>§ = param4;
         this.§8?§ = param5;
         this.§ p§ = param6;
         this.§1@§ = param7;
         this.§%U§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§>C§> = null) : §4!<§
      {
         var _loc5_:§4!<§ = null;
         switch(param1)
         {
            case §`J§:
               _loc5_ = §3!E§;
               break;
            case §,!&§:
               _loc5_ = §[A§;
               break;
            case §=!D§:
               _loc5_ = §7d§;
               break;
            case §2Z§:
               _loc5_ = §6!]§;
               break;
            case §;^§:
               _loc5_ = §^c§;
               break;
            default:
               _loc5_ = §7-§;
         }
         return new §4!<§(param2,param3,_loc5_.§#6§,_loc5_.push,_loc5_.§'!P§,_loc5_.damage,param1,param4);
      }
      
      public function get §#6§() : Number
      {
         return this.§?!N§;
      }
      
      public function get push() : Number
      {
         return this.§7!>§;
      }
      
      public function get §'!P§() : Number
      {
         return this.§8?§;
      }
      
      public function get damage() : Number
      {
         return this.§ p§;
      }
      
      public function get type() : int
      {
         return this.§1@§;
      }
      
      public function get §8'§() : Vector.<§>C§>
      {
         return this.§%U§;
      }
   }
}
