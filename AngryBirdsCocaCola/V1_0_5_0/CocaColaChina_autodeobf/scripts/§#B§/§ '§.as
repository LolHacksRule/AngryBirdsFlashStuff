package §#B§
{
   public class § '§
   {
      
      public static const §[!K§:int = 0;
      
      public static const §>!W§:int = 1;
      
      public static const §4!7§:int = 2;
      
      public static const §9S§:int = 3;
      
      public static const §;x§:int = 4;
      
      private static var §2!b§:§ '§ = new § '§(0,0,10,500,7.5,600,§[!K§);
      
      private static var §8!L§:§ '§ = new § '§(0,0,10,500,7.5,600,§>!W§);
      
      private static var §^T§:§ '§ = new § '§(0,0,15,1750,5,300,§9S§);
      
      private static var §'!§:§ '§ = new § '§(0,0,10,1500,5,150,§4!7§);
      
      private static var §6!]§:§ '§ = new § '§(0,0,5,10,7,275,§;x§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §=+§:Number;
      
      private var §`6§:Number;
      
      private var §>!B§:Number;
      
      private var §-c§:Number;
      
      private var §+!I§:int;
      
      public function § '§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§=+§ = param3;
         this.§`6§ = param4;
         this.§>!B§ = param5;
         this.§-c§ = param6;
         this.§+!I§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : § '§
      {
         var _loc4_:§ '§ = null;
         switch(param1)
         {
            case §>!W§:
               _loc4_ = §8!L§;
               break;
            case §4!7§:
               _loc4_ = §'!§;
               break;
            case §9S§:
               _loc4_ = §^T§;
               break;
            case §;x§:
               _loc4_ = §6!]§;
               break;
            default:
               _loc4_ = §2!b§;
         }
         return new § '§(param2,param3,_loc4_.§7$§,_loc4_.push,_loc4_.§,u§,_loc4_.damage,param1);
      }
      
      public function get §7$§() : Number
      {
         return this.§=+§;
      }
      
      public function get push() : Number
      {
         return this.§`6§;
      }
      
      public function get §,u§() : Number
      {
         return this.§>!B§;
      }
      
      public function get damage() : Number
      {
         return this.§-c§;
      }
      
      public function get type() : int
      {
         return this.§+!I§;
      }
   }
}
