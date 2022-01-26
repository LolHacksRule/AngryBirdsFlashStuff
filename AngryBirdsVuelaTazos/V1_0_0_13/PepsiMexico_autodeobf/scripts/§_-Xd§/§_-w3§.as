package §_-Xd§
{
   public class §_-w3§
   {
      
      public static const §_-MR§:int = 0;
      
      public static const §_-kc§:int = 1;
      
      public static const §_-OZ§:int = 2;
      
      public static const §_-7U§:int = 3;
      
      public static const §_-SV§:int = 4;
      
      private static var §_-PY§:§_-w3§ = new §_-w3§(0,0,10,500,7.5,600,§_-MR§);
      
      private static var §_-L0§:§_-w3§ = new §_-w3§(0,0,10,500,7.5,600,§_-kc§);
      
      private static var §_-qz§:§_-w3§ = new §_-w3§(0,0,15,1750,5,300,§_-7U§);
      
      private static var TNT:§_-w3§ = new §_-w3§(0,0,10,1500,5,150,§_-OZ§);
      
      private static var §_-hy§:§_-w3§ = new §_-w3§(0,0,5,250,4,600,§_-SV§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-65§:Number;
      
      private var §_-4G§:Number;
      
      private var §_-o9§:Number;
      
      private var §_-5K§:Number;
      
      private var §_-CV§:int;
      
      public function §_-w3§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-65§ = param3;
         this.§_-4G§ = param4;
         this.§_-o9§ = param5;
         this.§_-5K§ = param6;
         this.§_-CV§ = param7;
      }
      
      public static function §_-0V§(param1:int, param2:Number, param3:Number) : §_-w3§
      {
         var _loc4_:§_-w3§ = null;
         switch(param1)
         {
            case §_-kc§:
               _loc4_ = §_-L0§;
               break;
            case §_-OZ§:
               _loc4_ = TNT;
               break;
            case §_-7U§:
               _loc4_ = §_-qz§;
               break;
            case §_-SV§:
               _loc4_ = §_-hy§;
               break;
            default:
               _loc4_ = §_-PY§;
         }
         return new §_-w3§(param2,param3,_loc4_.§_-DW§,_loc4_.push,_loc4_.§_-NJ§,_loc4_.damage,param1);
      }
      
      public function get §_-DW§() : Number
      {
         return this.§_-65§;
      }
      
      public function get push() : Number
      {
         return this.§_-4G§;
      }
      
      public function get §_-NJ§() : Number
      {
         return this.§_-o9§;
      }
      
      public function get damage() : Number
      {
         return this.§_-5K§;
      }
      
      public function get type() : int
      {
         return this.§_-CV§;
      }
   }
}
