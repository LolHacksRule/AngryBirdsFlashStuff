package §_-sK§
{
   public class §_-fz§
   {
      
      private static const §_-am§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-am§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §_-OS§:Number;
      
      public var angle:Number;
      
      public function §_-fz§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            this.step = param1;
            this.x = param2;
            this.y = param3;
            this.§_-OS§ = param4;
            this.angle = param5;
         }
      }
      
      public static function §_-oA§(param1:String) : §_-fz§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§_-am§);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_.length == 5)
            {
               if(_loc3_)
               {
                  return new §_-fz§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr38:
               }
            }
            return null;
         }
         §§goto(addr38);
      }
      
      public function toString() : String
      {
         return this.step + §_-am§ + this.x + §_-am§ + this.y + §_-am§ + this.§_-OS§ + §_-am§ + this.angle;
      }
   }
}
