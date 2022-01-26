package §_-ST§
{
   public class §_-f§
   {
      
      public static const §_-MM§:int = 0;
      
      public static const §_-YG§:int = 1;
      
      public static const §_-CC§:int = 2;
      
      public static const §_-dU§:int = 3;
      
      public static const §_-Cm§:int = 4;
      
      private static var §_-nP§:§_-f§ = new §_-f§(0,0,10,500,7.5,600);
      
      private static var §_-aU§:§_-f§ = new §_-f§(0,0,10,500,7.5,600);
      
      private static var §_-f6§:§_-f§ = new §_-f§(0,0,15,1750,5,300);
      
      private static var TNT:§_-f§ = new §_-f§(0,0,10,1500,5,150);
      
      private static var §_-jZ§:§_-f§ = new §_-f§(0,0,7,250,4,150);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-LO§:Number;
      
      private var §_-hj§:Number;
      
      private var §_-Ri§:Number;
      
      private var §_-4j§:Number;
      
      public function §_-f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-LO§ = param3;
         this.§_-hj§ = param4;
         this.§_-Ri§ = param5;
         this.§_-4j§ = param6;
      }
      
      public static function §_-QT§(param1:int, param2:Number, param3:Number) : §_-f§
      {
         var _loc4_:§_-f§ = null;
         switch(param1)
         {
            case §_-YG§:
               _loc4_ = §_-aU§;
               break;
            case §_-CC§:
               _loc4_ = TNT;
               break;
            case §_-dU§:
               _loc4_ = §_-f6§;
               break;
            case §_-Cm§:
               _loc4_ = §_-jZ§;
               break;
            default:
               _loc4_ = §_-nP§;
         }
         return new §_-f§(param2,param3,_loc4_.§_-Mz§,_loc4_.push,_loc4_.§_-KP§,_loc4_.§_-Uf§);
      }
      
      public function get §_-Mz§() : Number
      {
         return this.§_-LO§;
      }
      
      public function get push() : Number
      {
         return this.§_-hj§;
      }
      
      public function get §_-KP§() : Number
      {
         return this.§_-Ri§;
      }
      
      public function get §_-Uf§() : Number
      {
         return this.§_-4j§;
      }
   }
}
