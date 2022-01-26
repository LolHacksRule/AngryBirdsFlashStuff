package §_-u§
{
   public class §_-0I§
   {
      
      public static const §_-tI§:int = 0;
      
      public static const §_-u2§:int = 1;
      
      public static const §_-Fh§:int = 2;
      
      public static const §_-Bd§:int = 3;
      
      public static const §_-cr§:int = 4;
      
      private static var §_-6g§:§_-0I§ = new §_-0I§(0,0,10,500,7.5,600);
      
      private static var §_-qs§:§_-0I§ = new §_-0I§(0,0,10,500,7.5,600);
      
      private static var §_-Ey§:§_-0I§ = new §_-0I§(0,0,15,1750,5,300);
      
      private static var TNT:§_-0I§ = new §_-0I§(0,0,10,1500,5,150);
      
      private static var §_-OF§:§_-0I§ = new §_-0I§(0,0,7,250,4,150);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-Zk§:Number;
      
      private var §_-bK§:Number;
      
      private var §_-su§:Number;
      
      private var §_-T6§:Number;
      
      public function §_-0I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-Zk§ = param3;
         this.§_-bK§ = param4;
         this.§_-su§ = param5;
         this.§_-T6§ = param6;
      }
      
      public static function §_-cP§(param1:int, param2:Number, param3:Number) : §_-0I§
      {
         var _loc4_:§_-0I§ = null;
         switch(param1)
         {
            case §_-u2§:
               _loc4_ = §_-qs§;
               break;
            case §_-Fh§:
               _loc4_ = TNT;
               break;
            case §_-Bd§:
               _loc4_ = §_-Ey§;
               break;
            case §_-cr§:
               _loc4_ = §_-OF§;
               break;
            default:
               _loc4_ = §_-6g§;
         }
         return new §_-0I§(param2,param3,_loc4_.§_-VW§,_loc4_.push,_loc4_.§_-s2§,_loc4_.§_-i9§);
      }
      
      public function get §_-VW§() : Number
      {
         return this.§_-Zk§;
      }
      
      public function get push() : Number
      {
         return this.§_-bK§;
      }
      
      public function get §_-s2§() : Number
      {
         return this.§_-su§;
      }
      
      public function get §_-i9§() : Number
      {
         return this.§_-T6§;
      }
   }
}
