package §_-fr§
{
   public class §_-ZO§
   {
      
      public static const §_-or§:int = 0;
      
      public static const §_-oD§:int = 1;
      
      public static const §_-Uh§:int = 2;
      
      public static const §_-Sj§:int = 3;
      
      public static const §_-Lj§:int = 4;
      
      private static var §_-ph§:§_-ZO§ = new §_-ZO§(0,0,10,500,7.5,600,§_-or§);
      
      private static var §_-lz§:§_-ZO§ = new §_-ZO§(0,0,10,500,7.5,600,§_-oD§);
      
      private static var §_-qC§:§_-ZO§ = new §_-ZO§(0,0,15,1750,5,300,§_-Sj§);
      
      private static var TNT:§_-ZO§ = new §_-ZO§(0,0,10,1500,5,150,§_-Uh§);
      
      private static var §_-FL§:§_-ZO§ = new §_-ZO§(0,0,5,10,7,275,§_-Lj§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-UI§:Number;
      
      private var §_-zK§:Number;
      
      private var §_-Pt§:Number;
      
      private var §_-p9§:Number;
      
      private var §_-XG§:int;
      
      public function §_-ZO§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-UI§ = param3;
         this.§_-zK§ = param4;
         this.§_-Pt§ = param5;
         this.§_-p9§ = param6;
         this.§_-XG§ = param7;
      }
      
      public static function §_-ig§(param1:int, param2:Number, param3:Number) : §_-ZO§
      {
         var _loc4_:§_-ZO§ = null;
         switch(param1)
         {
            case §_-oD§:
               _loc4_ = §_-lz§;
               break;
            case §_-Uh§:
               _loc4_ = TNT;
               break;
            case §_-Sj§:
               _loc4_ = §_-qC§;
               break;
            case §_-Lj§:
               _loc4_ = §_-FL§;
               break;
            default:
               _loc4_ = §_-ph§;
         }
         return new §_-ZO§(param2,param3,_loc4_.§_-Yg§,_loc4_.push,_loc4_.§_-SB§,_loc4_.damage,param1);
      }
      
      public function get §_-Yg§() : Number
      {
         return this.§_-UI§;
      }
      
      public function get push() : Number
      {
         return this.§_-zK§;
      }
      
      public function get §_-SB§() : Number
      {
         return this.§_-Pt§;
      }
      
      public function get damage() : Number
      {
         return this.§_-p9§;
      }
      
      public function get type() : int
      {
         return this.§_-XG§;
      }
   }
}
