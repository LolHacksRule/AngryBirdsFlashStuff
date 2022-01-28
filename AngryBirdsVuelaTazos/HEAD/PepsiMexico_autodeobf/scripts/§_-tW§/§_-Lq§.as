package §_-tW§
{
   public class §_-Lq§
   {
      
      public static const §_-2o§:int = 0;
      
      public static const §_-jv§:int = 1;
      
      public static const §_-VL§:int = 2;
      
      public static const §_-5v§:int = 3;
      
      public static const §_-Rz§:int = 4;
      
      private static var §_-7X§:§_-Lq§ = new §_-Lq§(0,0,10,500,7.5,600,§_-2o§);
      
      private static var §_-tK§:§_-Lq§ = new §_-Lq§(0,0,10,500,7.5,600,§_-jv§);
      
      private static var §_-Qk§:§_-Lq§ = new §_-Lq§(0,0,15,1750,5,300,§_-5v§);
      
      private static var §_-OI§:§_-Lq§ = new §_-Lq§(0,0,10,1500,5,150,§_-VL§);
      
      private static var §_-tT§:§_-Lq§ = new §_-Lq§(0,0,5,10,7,275,§_-Rz§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-S0§:Number;
      
      private var §_-OQ§:Number;
      
      private var §_-5V§:Number;
      
      private var §_-oh§:Number;
      
      private var §_-mW§:int;
      
      public function §_-Lq§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-S0§ = param3;
         this.§_-OQ§ = param4;
         this.§_-5V§ = param5;
         this.§_-oh§ = param6;
         this.§_-mW§ = param7;
      }
      
      public static function §_-ES§(param1:int, param2:Number, param3:Number) : §_-Lq§
      {
         var _loc4_:§_-Lq§ = null;
         switch(param1)
         {
            case §_-jv§:
               _loc4_ = §_-tK§;
               break;
            case §_-VL§:
               _loc4_ = §_-OI§;
               break;
            case §_-5v§:
               _loc4_ = §_-Qk§;
               break;
            case §_-Rz§:
               _loc4_ = §_-tT§;
               break;
            default:
               _loc4_ = §_-7X§;
         }
         return new §_-Lq§(param2,param3,_loc4_.§_-zl§,_loc4_.push,_loc4_.§_-mU§,_loc4_.damage,param1);
      }
      
      public function get §_-zl§() : Number
      {
         return this.§_-S0§;
      }
      
      public function get push() : Number
      {
         return this.§_-OQ§;
      }
      
      public function get §_-mU§() : Number
      {
         return this.§_-5V§;
      }
      
      public function get damage() : Number
      {
         return this.§_-oh§;
      }
      
      public function get type() : int
      {
         return this.§_-mW§;
      }
   }
}
