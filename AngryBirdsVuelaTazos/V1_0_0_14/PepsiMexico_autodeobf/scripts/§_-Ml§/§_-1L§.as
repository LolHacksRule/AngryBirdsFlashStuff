package §_-Ml§
{
   public class §_-1L§
   {
      
      private static const §_-nD§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §_-jN§:Number;
      
      public var angle:Number;
      
      public function §_-1L§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§_-jN§ = param4;
         this.angle = param5;
      }
      
      public static function §_-gD§(param1:String) : §_-1L§
      {
         var _loc2_:Array = param1.split(§_-nD§);
         if(_loc2_.length == 5)
         {
            return new §_-1L§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §_-nD§ + this.x + §_-nD§ + this.y + §_-nD§ + this.§_-jN§ + §_-nD§ + this.angle;
      }
   }
}
