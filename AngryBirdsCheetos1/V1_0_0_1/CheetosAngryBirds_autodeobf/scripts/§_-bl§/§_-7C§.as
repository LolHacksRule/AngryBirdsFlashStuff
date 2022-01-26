package §_-bl§
{
   public class §_-7C§
   {
      
      public static const §_-Wf§:int = 0;
      
      public static const §_-Sh§:int = 1;
      
      public static const §_-HE§:int = 2;
      
      public static const §_-UL§:int = 3;
      
      public static const §_-SS§:int = 4;
      
      private static var §_-46§:§_-7C§ = new §_-7C§(0,0,10,500,7.5,600,§_-Wf§);
      
      private static var §_-sO§:§_-7C§ = new §_-7C§(0,0,10,500,7.5,600,§_-Sh§);
      
      private static var §_-o9§:§_-7C§ = new §_-7C§(0,0,15,1750,5,300,§_-UL§);
      
      private static var TNT:§_-7C§ = new §_-7C§(0,0,10,1500,5,150,§_-HE§);
      
      private static var §_-X9§:§_-7C§ = new §_-7C§(0,0,5,10,7,275,§_-SS§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-1B§:Number;
      
      private var §_-gQ§:Number;
      
      private var §_-gl§:Number;
      
      private var §_-g-§:Number;
      
      private var §_-cR§:int;
      
      public function §_-7C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-1B§ = param3;
         this.§_-gQ§ = param4;
         this.§_-gl§ = param5;
         this.§_-g-§ = param6;
         this.§_-cR§ = param7;
      }
      
      public static function §_-MK§(param1:int, param2:Number, param3:Number) : §_-7C§
      {
         var _loc4_:§_-7C§ = null;
         switch(param1)
         {
            case §_-Sh§:
               _loc4_ = §_-sO§;
               break;
            case §_-HE§:
               _loc4_ = TNT;
               break;
            case §_-UL§:
               _loc4_ = §_-o9§;
               break;
            case §_-SS§:
               _loc4_ = §_-X9§;
               break;
            default:
               _loc4_ = §_-46§;
         }
         return new §_-7C§(param2,param3,_loc4_.§_-6G§,_loc4_.push,_loc4_.§_-ZH§,_loc4_.damage,param1);
      }
      
      public function get §_-6G§() : Number
      {
         return this.§_-1B§;
      }
      
      public function get push() : Number
      {
         return this.§_-gQ§;
      }
      
      public function get §_-ZH§() : Number
      {
         return this.§_-gl§;
      }
      
      public function get damage() : Number
      {
         return this.§_-g-§;
      }
      
      public function get type() : int
      {
         return this.§_-cR§;
      }
   }
}
