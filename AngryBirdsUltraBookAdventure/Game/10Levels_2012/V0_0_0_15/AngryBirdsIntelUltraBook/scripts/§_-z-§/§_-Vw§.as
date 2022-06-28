package §_-z-§
{
   public class §_-Vw§
   {
      
      private static const §_-58§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §_-02a§:Number;
      
      public var angle:Number;
      
      public function §_-Vw§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§_-02a§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §_-Vw§
      {
         var _loc2_:Array = param1.split(§_-58§);
         if(_loc2_.length == 5)
         {
            return new §_-Vw§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §_-58§ + this.x + §_-58§ + this.y + §_-58§ + this.§_-02a§ + §_-58§ + this.angle;
      }
   }
}
