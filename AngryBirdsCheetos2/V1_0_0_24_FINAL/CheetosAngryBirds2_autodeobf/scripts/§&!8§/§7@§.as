package §&!8§
{
   public class §7@§
   {
      
      public static const §]K§:int = 0;
      
      public static const §6U§:int = 1;
      
      public static const §`!a§:int = 2;
      
      public static const §8!Z§:int = 3;
      
      public static const §!![§:int = 4;
      
      public static const §^S§:int = 5;
      
      private static var §0t§:§7@§ = new §7@§(0,0,10,500,7.5,600,§]K§);
      
      private static var §%4§:§7@§ = new §7@§(0,0,10,500,7.5,600,§6U§);
      
      private static var §#b§:§7@§ = new §7@§(0,0,15,1750,5,300,§8!Z§);
      
      private static var §6k§:§7@§ = new §7@§(0,0,8,1500,0,0,§^S§);
      
      private static var TNT:§7@§ = new §7@§(0,0,10,1500,5,150,§`!a§);
      
      private static var §>!I§:§7@§ = new §7@§(0,0,5,10,7,275,§!![§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §>W§:Number;
      
      private var §?O§:Number;
      
      private var §<!i§:Number;
      
      private var §&!]§:Number;
      
      private var § !H§:int;
      
      private var §#0§:Vector.<§[g§>;
      
      public function §7@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§[g§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§>W§ = param3;
         this.§?O§ = param4;
         this.§<!i§ = param5;
         this.§&!]§ = param6;
         this.§ !H§ = param7;
         this.§#0§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§[g§> = null) : §7@§
      {
         var _loc5_:§7@§ = null;
         switch(param1)
         {
            case §6U§:
               _loc5_ = §%4§;
               break;
            case §`!a§:
               _loc5_ = TNT;
               break;
            case §8!Z§:
               _loc5_ = §#b§;
               break;
            case §^S§:
               _loc5_ = §6k§;
               break;
            case §!![§:
               _loc5_ = §>!I§;
               break;
            default:
               _loc5_ = §0t§;
         }
         return new §7@§(param2,param3,_loc5_.§0!2§,_loc5_.push,_loc5_.§%e§,_loc5_.damage,param1,param4);
      }
      
      public function get §0!2§() : Number
      {
         return this.§>W§;
      }
      
      public function get push() : Number
      {
         return this.§?O§;
      }
      
      public function get §%e§() : Number
      {
         return this.§<!i§;
      }
      
      public function get damage() : Number
      {
         return this.§&!]§;
      }
      
      public function get type() : int
      {
         return this.§ !H§;
      }
      
      public function get §-%§() : Vector.<§[g§>
      {
         return this.§#0§;
      }
   }
}
