package §+!o§
{
   public class §]!i§
   {
      
      public static const §-"4§:int = 0;
      
      public static const §5!2§:int = 1;
      
      public static const §1]§:int = 2;
      
      public static const §"!y§:int = 3;
      
      public static const §5!D§:int = 4;
      
      public static const §2";§:int = 5;
      
      private static var §3!J§:§]!i§ = new §]!i§(0,0,10,500,7.5,600,§-"4§);
      
      private static var §]4§:§]!i§ = new §]!i§(0,0,10,500,7.5,600,§5!2§);
      
      private static var §7!9§:§]!i§ = new §]!i§(0,0,15,1750,5,300,§"!y§);
      
      private static var §9!t§:§]!i§ = new §]!i§(0,0,8,1500,0,0,§2";§);
      
      private static var §?!t§:§]!i§ = new §]!i§(0,0,10,1500,5,150,§1]§);
      
      private static var §6$§:§]!i§ = new §]!i§(0,0,5,10,7,275,§5!D§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §,""§:Number;
      
      private var §[!t§:Number;
      
      private var §0!S§:Number;
      
      private var §5!6§:Number;
      
      private var §#!W§:int;
      
      private var §!!e§:Vector.<§]"5§>;
      
      public function §]!i§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§]"5§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§,""§ = param3;
         this.§[!t§ = param4;
         this.§0!S§ = param5;
         this.§5!6§ = param6;
         this.§#!W§ = param7;
         this.§!!e§ = param8;
      }
      
      public static function §@%§(param1:int, param2:Number, param3:Number, param4:Vector.<§]"5§> = null) : §]!i§
      {
         var _loc5_:§]!i§ = null;
         switch(param1)
         {
            case §5!2§:
               _loc5_ = §]4§;
               break;
            case §1]§:
               _loc5_ = §?!t§;
               break;
            case §"!y§:
               _loc5_ = §7!9§;
               break;
            case §2";§:
               _loc5_ = §9!t§;
               break;
            case §5!D§:
               _loc5_ = §6$§;
               break;
            default:
               _loc5_ = §3!J§;
         }
         return new §]!i§(param2,param3,_loc5_.§"!l§,_loc5_.push,_loc5_.§[!'§,_loc5_.damage,param1,param4);
      }
      
      public function get §"!l§() : Number
      {
         return this.§,""§;
      }
      
      public function get push() : Number
      {
         return this.§[!t§;
      }
      
      public function get §[!'§() : Number
      {
         return this.§0!S§;
      }
      
      public function get damage() : Number
      {
         return this.§5!6§;
      }
      
      public function get type() : int
      {
         return this.§#!W§;
      }
      
      public function get §,!H§() : Vector.<§]"5§>
      {
         return this.§!!e§;
      }
   }
}
