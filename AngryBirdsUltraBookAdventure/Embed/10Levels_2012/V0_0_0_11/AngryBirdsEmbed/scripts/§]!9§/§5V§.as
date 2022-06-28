package §]!9§
{
   public class §5V§
   {
      
      public static const §]b§:int = 0;
      
      public static const §^!4§:int = 1;
      
      public static const §?7§:int = 2;
      
      public static const §<m§:int = 3;
      
      public static const §3I§:int = 4;
      
      private static var §?`§:§5V§ = new §5V§(0,0,10,500,7.5,600,§]b§);
      
      private static var §9j§:§5V§ = new §5V§(0,0,10,500,7.5,600,§^!4§);
      
      private static var §<Z§:§5V§ = new §5V§(0,0,15,1750,5,300,§<m§);
      
      private static var §[!#§:§5V§ = new §5V§(0,0,10,1500,5,150,§?7§);
      
      private static var §!Z§:§5V§ = new §5V§(0,0,5,10,7,275,§3I§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §2!A§:Number;
      
      private var §;H§:Number;
      
      private var §3_§:Number;
      
      private var §4w§:Number;
      
      private var §,!5§:int;
      
      public function §5V§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§2!A§ = param3;
         this.§;H§ = param4;
         this.§3_§ = param5;
         this.§4w§ = param6;
         this.§,!5§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5V§
      {
         var _loc4_:§5V§ = null;
         switch(param1)
         {
            case §^!4§:
               _loc4_ = §9j§;
               break;
            case §?7§:
               _loc4_ = §[!#§;
               break;
            case §<m§:
               _loc4_ = §<Z§;
               break;
            case §3I§:
               _loc4_ = §!Z§;
               break;
            default:
               _loc4_ = §?`§;
         }
         return new §5V§(param2,param3,_loc4_.§+r§,_loc4_.push,_loc4_.§+@§,_loc4_.damage,param1);
      }
      
      public function get §+r§() : Number
      {
         return this.§2!A§;
      }
      
      public function get push() : Number
      {
         return this.§;H§;
      }
      
      public function get §+@§() : Number
      {
         return this.§3_§;
      }
      
      public function get damage() : Number
      {
         return this.§4w§;
      }
      
      public function get type() : int
      {
         return this.§,!5§;
      }
   }
}
