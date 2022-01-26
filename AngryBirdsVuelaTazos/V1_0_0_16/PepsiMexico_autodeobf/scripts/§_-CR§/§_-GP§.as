package §_-CR§
{
   public class §_-GP§
   {
      
      public static const §_-rI§:int = 0;
      
      public static const §_-Us§:int = 1;
      
      public static const §_-iT§:int = 2;
      
      public static const §_-Zb§:int = 3;
      
      public static const §_-oD§:int = 4;
      
      private static var §_-zP§:§_-GP§ = new §_-GP§(0,0,10,500,7.5,600,§_-rI§);
      
      private static var §_-NB§:§_-GP§ = new §_-GP§(0,0,10,500,7.5,600,§_-Us§);
      
      private static var §_-8K§:§_-GP§ = new §_-GP§(0,0,15,1750,5,300,§_-Zb§);
      
      private static var TNT:§_-GP§ = new §_-GP§(0,0,10,1500,5,150,§_-iT§);
      
      private static var §_-ew§:§_-GP§ = new §_-GP§(0,0,5,10,8,400,§_-oD§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-oC§:Number;
      
      private var §_-v3§:Number;
      
      private var §_-vB§:Number;
      
      private var §_-Vo§:Number;
      
      private var §_-gA§:int;
      
      public function §_-GP§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-oC§ = param3;
         this.§_-v3§ = param4;
         this.§_-vB§ = param5;
         this.§_-Vo§ = param6;
         this.§_-gA§ = param7;
      }
      
      public static function §_-ti§(param1:int, param2:Number, param3:Number) : §_-GP§
      {
         var _loc4_:§_-GP§ = null;
         switch(param1)
         {
            case §_-Us§:
               _loc4_ = §_-NB§;
               break;
            case §_-iT§:
               _loc4_ = TNT;
               break;
            case §_-Zb§:
               _loc4_ = §_-8K§;
               break;
            case §_-oD§:
               _loc4_ = §_-ew§;
               break;
            default:
               _loc4_ = §_-zP§;
         }
         return new §_-GP§(param2,param3,_loc4_.§_-ij§,_loc4_.push,_loc4_.§_-UQ§,_loc4_.damage,param1);
      }
      
      public function get §_-ij§() : Number
      {
         return this.§_-oC§;
      }
      
      public function get push() : Number
      {
         return this.§_-v3§;
      }
      
      public function get §_-UQ§() : Number
      {
         return this.§_-vB§;
      }
      
      public function get damage() : Number
      {
         return this.§_-Vo§;
      }
      
      public function get type() : int
      {
         return this.§_-gA§;
      }
   }
}
