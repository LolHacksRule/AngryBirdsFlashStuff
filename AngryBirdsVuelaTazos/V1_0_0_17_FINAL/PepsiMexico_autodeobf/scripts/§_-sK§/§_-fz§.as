package §_-sK§
{
   public class §_-fz§
   {
      
      private static const §_-am§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §_-OS§:Number;
      
      public var angle:Number;
      
      public function §_-fz§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§_-OS§ = param4;
         this.angle = param5;
      }
      
      public static function §_-oA§(param1:String) : §_-fz§
      {
         var _loc2_:Array = param1.split(§_-am§);
         if(_loc2_.length == 5)
         {
            return new §_-fz§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §_-am§ + this.x + §_-am§ + this.y + §_-am§ + this.§_-OS§ + §_-am§ + this.angle;
      }
   }
}
