package §_-lt§
{
   public class §_-wS§
   {
      
      public static const §_-oA§:int = 0;
      
      public static const §_-zO§:int = 1;
      
      public static const §_-e8§:int = 2;
      
      public static const §_-09r§:int = 3;
      
      public static const §_-Lh§:int = 4;
      
      private static var §_-C2§:§_-wS§ = new §_-wS§(0,0,10,500,7.5,600,§_-oA§);
      
      private static var §_-i9§:§_-wS§ = new §_-wS§(0,0,10,500,7.5,600,§_-zO§);
      
      private static var §_-x2§:§_-wS§ = new §_-wS§(0,0,15,1750,5,300,§_-09r§);
      
      private static var §_-px§:§_-wS§ = new §_-wS§(0,0,10,1500,5,150,§_-e8§);
      
      private static var §_-3n§:§_-wS§ = new §_-wS§(0,0,5,10,7,275,§_-Lh§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-05s§:Number;
      
      private var §_-r0§:Number;
      
      private var §_-jT§:Number;
      
      private var §_-oN§:Number;
      
      private var §_-kV§:int;
      
      public function §_-wS§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-05s§ = param3;
         this.§_-r0§ = param4;
         this.§_-jT§ = param5;
         this.§_-oN§ = param6;
         this.§_-kV§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §_-wS§
      {
         var _loc4_:§_-wS§ = null;
         switch(param1)
         {
            case §_-zO§:
               _loc4_ = §_-i9§;
               break;
            case §_-e8§:
               _loc4_ = §_-px§;
               break;
            case §_-09r§:
               _loc4_ = §_-x2§;
               break;
            case §_-Lh§:
               _loc4_ = §_-3n§;
               break;
            default:
               _loc4_ = §_-C2§;
         }
         return new §_-wS§(param2,param3,_loc4_.§_-0EY§,_loc4_.push,_loc4_.§_-Lf§,_loc4_.damage,param1);
      }
      
      public function get §_-0EY§() : Number
      {
         return this.§_-05s§;
      }
      
      public function get push() : Number
      {
         return this.§_-r0§;
      }
      
      public function get §_-Lf§() : Number
      {
         return this.§_-jT§;
      }
      
      public function get damage() : Number
      {
         return this.§_-oN§;
      }
      
      public function get type() : int
      {
         return this.§_-kV§;
      }
   }
}
