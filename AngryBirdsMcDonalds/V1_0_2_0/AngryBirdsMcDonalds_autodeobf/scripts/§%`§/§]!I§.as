package §%`§
{
   public class §]!I§
   {
      
      public static const §"!l§:int = 0;
      
      public static const §&@§:int = 1;
      
      public static const §&X§:int = 2;
      
      public static const §!>§:int = 3;
      
      public static const §#x§:int = 4;
      
      private static var §`0§:§]!I§ = new §]!I§(0,0,10,500,7.5,600,§"!l§);
      
      private static var §&i§:§]!I§ = new §]!I§(0,0,10,500,7.5,600,§&@§);
      
      private static var §8!e§:§]!I§ = new §]!I§(0,0,15,1750,5,300,§!>§);
      
      private static var §>!l§:§]!I§ = new §]!I§(0,0,10,1500,5,150,§&X§);
      
      private static var §0!P§:§]!I§ = new §]!I§(0,0,5,10,7,275,§#x§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §?X§:Number;
      
      private var §#M§:Number;
      
      private var §[!V§:Number;
      
      private var §7!-§:Number;
      
      private var §91§:int;
      
      public function §]!I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§?X§ = param3;
         this.§#M§ = param4;
         this.§[!V§ = param5;
         this.§7!-§ = param6;
         this.§91§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §]!I§
      {
         var _loc4_:§]!I§ = null;
         switch(param1)
         {
            case §&@§:
               _loc4_ = §&i§;
               break;
            case §&X§:
               _loc4_ = §>!l§;
               break;
            case §!>§:
               _loc4_ = §8!e§;
               break;
            case §#x§:
               _loc4_ = §0!P§;
               break;
            default:
               _loc4_ = §`0§;
         }
         return new §]!I§(param2,param3,_loc4_.§+f§,_loc4_.push,_loc4_.§#i§,_loc4_.damage,param1);
      }
      
      public function get §+f§() : Number
      {
         return this.§?X§;
      }
      
      public function get push() : Number
      {
         return this.§#M§;
      }
      
      public function get §#i§() : Number
      {
         return this.§[!V§;
      }
      
      public function get damage() : Number
      {
         return this.§7!-§;
      }
      
      public function get type() : int
      {
         return this.§91§;
      }
   }
}
