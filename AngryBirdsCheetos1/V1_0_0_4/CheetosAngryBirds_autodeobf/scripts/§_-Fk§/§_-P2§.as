package §_-Fk§
{
   public class §_-P2§
   {
      
      public static const §_-I4§:int = 0;
      
      public static const §_-PF§:int = 1;
      
      public static const §_-5z§:int = 2;
      
      public static const §_-vh§:int = 3;
      
      public static const §_-di§:int = 4;
      
      private static var §_-9B§:§_-P2§ = new §_-P2§(0,0,10,500,7.5,600,§_-I4§);
      
      private static var §_-Xx§:§_-P2§ = new §_-P2§(0,0,10,500,7.5,600,§_-PF§);
      
      private static var §_-iY§:§_-P2§ = new §_-P2§(0,0,15,1750,5,300,§_-vh§);
      
      private static var TNT:§_-P2§ = new §_-P2§(0,0,10,1500,5,150,§_-5z§);
      
      private static var §_-yC§:§_-P2§ = new §_-P2§(0,0,5,10,7,275,§_-di§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-jd§:Number;
      
      private var §_-rP§:Number;
      
      private var §_-sd§:Number;
      
      private var §_-DM§:Number;
      
      private var §_-IE§:int;
      
      public function §_-P2§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-jd§ = param3;
         this.§_-rP§ = param4;
         this.§_-sd§ = param5;
         this.§_-DM§ = param6;
         this.§_-IE§ = param7;
      }
      
      public static function §_-5X§(param1:int, param2:Number, param3:Number) : §_-P2§
      {
         var _loc4_:§_-P2§ = null;
         switch(param1)
         {
            case §_-PF§:
               _loc4_ = §_-Xx§;
               break;
            case §_-5z§:
               _loc4_ = TNT;
               break;
            case §_-vh§:
               _loc4_ = §_-iY§;
               break;
            case §_-di§:
               _loc4_ = §_-yC§;
               break;
            default:
               _loc4_ = §_-9B§;
         }
         return new §_-P2§(param2,param3,_loc4_.§_-tY§,_loc4_.push,_loc4_.§_-LP§,_loc4_.damage,param1);
      }
      
      public function get §_-tY§() : Number
      {
         return this.§_-jd§;
      }
      
      public function get push() : Number
      {
         return this.§_-rP§;
      }
      
      public function get §_-LP§() : Number
      {
         return this.§_-sd§;
      }
      
      public function get damage() : Number
      {
         return this.§_-DM§;
      }
      
      public function get type() : int
      {
         return this.§_-IE§;
      }
   }
}
