package §_-mu§
{
   public class §_-wW§
   {
      
      private static const §_-Iw§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §_-ZK§:Number;
      
      public var angle:Number;
      
      public function §_-wW§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§_-ZK§ = param4;
         this.angle = param5;
      }
      
      public static function §_-UD§(param1:String) : §_-wW§
      {
         var _loc2_:Array = param1.split(§_-Iw§);
         if(_loc2_.length == 5)
         {
            return new §_-wW§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §_-Iw§ + this.x + §_-Iw§ + this.y + §_-Iw§ + this.§_-ZK§ + §_-Iw§ + this.angle;
      }
   }
}
