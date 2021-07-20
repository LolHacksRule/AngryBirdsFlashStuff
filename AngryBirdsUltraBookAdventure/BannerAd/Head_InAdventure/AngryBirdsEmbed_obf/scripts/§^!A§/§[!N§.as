package §^!A§
{
   public class §[!N§
   {
      
      public static const §,W§:int = 0;
      
      public static const §1!9§:int = 1;
      
      public static const §%-§:int = 2;
      
      public static const §]!7§:int = 3;
      
      public static const §3P§:int = 4;
      
      public static const §%Q§:int = 5;
      
      private static var §3S§:§[!N§ = new §[!N§(0,0,10,500,7.5,600,§,W§);
      
      private static var § !C§:§[!N§ = new §[!N§(0,0,10,500,7.5,600,§1!9§);
      
      private static var §%,§:§[!N§ = new §[!N§(0,0,15,1750,5,300,§]!7§);
      
      private static var §[!?§:§[!N§ = new §[!N§(0,0,8,1500,0,0,§%Q§);
      
      private static var §1!0§:§[!N§ = new §[!N§(0,0,10,1500,5,150,§%-§);
      
      private static var §=§:§[!N§ = new §[!N§(0,0,5,10,7,275,§3P§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §4!4§:Number;
      
      private var §&%§:Number;
      
      private var §%!"§:Number;
      
      private var §0!M§:Number;
      
      private var §<"§:int;
      
      private var §9;§:Vector.<§;!%§>;
      
      public function §[!N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§;!%§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§4!4§ = param3;
         this.§&%§ = param4;
         this.§%!"§ = param5;
         this.§0!M§ = param6;
         this.§<"§ = param7;
         this.§9;§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§;!%§> = null) : §[!N§
      {
         var _loc5_:§[!N§ = null;
         switch(param1)
         {
            case §1!9§:
               _loc5_ = § !C§;
               break;
            case §%-§:
               _loc5_ = §1!0§;
               break;
            case §]!7§:
               _loc5_ = §%,§;
               break;
            case §%Q§:
               _loc5_ = §[!?§;
               break;
            case §3P§:
               _loc5_ = §=§;
               break;
            default:
               _loc5_ = §3S§;
         }
         return new §[!N§(param2,param3,_loc5_.§!i§,_loc5_.push,_loc5_.§[!I§,_loc5_.damage,param1,param4);
      }
      
      public function get §!i§() : Number
      {
         return this.§4!4§;
      }
      
      public function get push() : Number
      {
         return this.§&%§;
      }
      
      public function get §[!I§() : Number
      {
         return this.§%!"§;
      }
      
      public function get damage() : Number
      {
         return this.§0!M§;
      }
      
      public function get type() : int
      {
         return this.§<"§;
      }
      
      public function get §8!L§() : Vector.<§;!%§>
      {
         return this.§9;§;
      }
   }
}
