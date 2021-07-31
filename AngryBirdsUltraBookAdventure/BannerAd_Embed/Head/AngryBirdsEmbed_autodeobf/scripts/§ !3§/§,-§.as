package § !3§
{
   public class §,-§
   {
      
      public static const §+@§:int = 0;
      
      public static const §]b§:int = 1;
      
      public static const §^!4§:int = 2;
      
      public static const §?7§:int = 3;
      
      public static const §<m§:int = 4;
      
      private static var §3I§:§,-§ = new §,-§(0,0,10,500,7.5,600,§+@§);
      
      private static var §?`§:§,-§ = new §,-§(0,0,10,500,7.5,600,§]b§);
      
      private static var §9j§:§,-§ = new §,-§(0,0,15,1750,5,300,§?7§);
      
      private static var §<Z§:§,-§ = new §,-§(0,0,10,1500,5,150,§^!4§);
      
      private static var §[!#§:§,-§ = new §,-§(0,0,5,10,7,275,§<m§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §5V§:Number;
      
      private var §2!A§:Number;
      
      private var §;H§:Number;
      
      private var §3_§:Number;
      
      private var §,!5§:int;
      
      public function §,-§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§5V§ = param3;
         this.§2!A§ = param4;
         this.§;H§ = param5;
         this.§3_§ = param6;
         this.§,!5§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §,-§
      {
         var _loc4_:§,-§ = null;
         switch(param1)
         {
            case §]b§:
               _loc4_ = §?`§;
               break;
            case §^!4§:
               _loc4_ = §<Z§;
               break;
            case §?7§:
               _loc4_ = §9j§;
               break;
            case §<m§:
               _loc4_ = §[!#§;
               break;
            default:
               _loc4_ = §3I§;
         }
         return new §,-§(param2,param3,_loc4_.§4w§,_loc4_.push,_loc4_.§+r§,_loc4_.damage,param1);
      }
      
      public function get §4w§() : Number
      {
         return this.§5V§;
      }
      
      public function get push() : Number
      {
         return this.§2!A§;
      }
      
      public function get §+r§() : Number
      {
         return this.§;H§;
      }
      
      public function get damage() : Number
      {
         return this.§3_§;
      }
      
      public function get type() : int
      {
         return this.§,!5§;
      }
   }
}
