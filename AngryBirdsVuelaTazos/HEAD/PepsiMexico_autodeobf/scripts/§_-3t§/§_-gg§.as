package §_-3t§
{
   public class §_-gg§
   {
      
      private static const §_-un§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §_-w-§:Number;
      
      public var angle:Number;
      
      public function §_-gg§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§_-w-§ = param4;
         this.angle = param5;
      }
      
      public static function §_-xS§(param1:String) : §_-gg§
      {
         var _loc2_:Array = param1.split(§_-un§);
         if(_loc2_.length == 5)
         {
            return new §_-gg§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §_-un§ + this.x + §_-un§ + this.y + §_-un§ + this.§_-w-§ + §_-un§ + this.angle;
      }
   }
}
