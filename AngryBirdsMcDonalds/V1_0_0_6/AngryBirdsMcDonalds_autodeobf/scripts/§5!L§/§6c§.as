package §5!L§
{
   public class §6c§
   {
      
      public static const §6!E§:int = 0;
      
      public static const §,!V§:int = 1;
      
      public static const §@!a§:int = 2;
      
      public static const §[I§:int = 3;
      
      public static const §,@§:int = 4;
      
      private static var §5!a§:§6c§ = new §6c§(0,0,10,500,7.5,600,§6!E§);
      
      private static var §&!§:§6c§ = new §6c§(0,0,10,500,7.5,600,§,!V§);
      
      private static var §"!O§:§6c§ = new §6c§(0,0,15,1750,5,300,§[I§);
      
      private static var §^S§:§6c§ = new §6c§(0,0,10,1500,5,150,§@!a§);
      
      private static var §6!4§:§6c§ = new §6c§(0,0,5,10,7,275,§,@§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §1!;§:Number;
      
      private var §'!e§:Number;
      
      private var §2!L§:Number;
      
      private var §,!T§:Number;
      
      private var §8!`§:int;
      
      public function §6c§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§1!;§ = param3;
         this.§'!e§ = param4;
         this.§2!L§ = param5;
         this.§,!T§ = param6;
         this.§8!`§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §6c§
      {
         var _loc4_:§6c§ = null;
         switch(param1)
         {
            case §,!V§:
               _loc4_ = §&!§;
               break;
            case §@!a§:
               _loc4_ = §^S§;
               break;
            case §[I§:
               _loc4_ = §"!O§;
               break;
            case §,@§:
               _loc4_ = §6!4§;
               break;
            default:
               _loc4_ = §5!a§;
         }
         return new §6c§(param2,param3,_loc4_.§@!o§,_loc4_.push,_loc4_.§3!U§,_loc4_.damage,param1);
      }
      
      public function get §@!o§() : Number
      {
         return this.§1!;§;
      }
      
      public function get push() : Number
      {
         return this.§'!e§;
      }
      
      public function get §3!U§() : Number
      {
         return this.§2!L§;
      }
      
      public function get damage() : Number
      {
         return this.§,!T§;
      }
      
      public function get type() : int
      {
         return this.§8!`§;
      }
   }
}
