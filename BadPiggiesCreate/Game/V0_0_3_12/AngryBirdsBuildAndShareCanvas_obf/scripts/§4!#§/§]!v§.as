package §4!#§
{
   public class §]!v§
   {
      
      public static const §%!X§:int = 0;
      
      public static const §>,§:int = 1;
      
      public static const §`!_§:int = 2;
      
      public static const §"w§:int = 3;
      
      public static const §+n§:int = 4;
      
      public static const §^w§:int = 5;
      
      private static var §=I§:§]!v§ = new §]!v§(0,0,10,500,7.5,600,§%!X§);
      
      private static var §4!&§:§]!v§ = new §]!v§(0,0,10,500,7.5,600,§>,§);
      
      private static var §0!u§:§]!v§ = new §]!v§(0,0,15,1750,5,300,§"w§);
      
      private static var §6!T§:§]!v§ = new §]!v§(0,0,8,1500,0,0,§^w§);
      
      private static var §;!U§:§]!v§ = new §]!v§(0,0,10,1500,5,150,§`!_§);
      
      private static var §4"3§:§]!v§ = new §]!v§(0,0,5,10,7,275,§+n§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §[!j§:Number;
      
      private var §]!x§:Number;
      
      private var §"^§:Number;
      
      private var §^!_§:Number;
      
      private var §`"=§:int;
      
      private var §7!4§:Vector.<§60§>;
      
      public function §]!v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§60§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§[!j§ = param3;
         this.§]!x§ = param4;
         this.§"^§ = param5;
         this.§^!_§ = param6;
         this.§`"=§ = param7;
         this.§7!4§ = param8;
      }
      
      public static function §8!Y§(param1:int, param2:Number, param3:Number, param4:Vector.<§60§> = null) : §]!v§
      {
         var _loc5_:§]!v§ = null;
         switch(param1)
         {
            case §>,§:
               _loc5_ = §4!&§;
               break;
            case §`!_§:
               _loc5_ = §;!U§;
               break;
            case §"w§:
               _loc5_ = §0!u§;
               break;
            case §^w§:
               _loc5_ = §6!T§;
               break;
            case §+n§:
               _loc5_ = §4"3§;
               break;
            default:
               _loc5_ = §=I§;
         }
         return new §]!v§(param2,param3,_loc5_.§4!`§,_loc5_.push,_loc5_.§&7§,_loc5_.damage,param1,param4);
      }
      
      public function get §4!`§() : Number
      {
         return this.§[!j§;
      }
      
      public function get push() : Number
      {
         return this.§]!x§;
      }
      
      public function get §&7§() : Number
      {
         return this.§"^§;
      }
      
      public function get damage() : Number
      {
         return this.§^!_§;
      }
      
      public function get type() : int
      {
         return this.§`"=§;
      }
      
      public function get §6""§() : Vector.<§60§>
      {
         return this.§7!4§;
      }
   }
}
