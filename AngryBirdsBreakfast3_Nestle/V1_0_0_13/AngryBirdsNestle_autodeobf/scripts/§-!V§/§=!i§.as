package §-!V§
{
   public class §=!i§
   {
      
      private static const §1#§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §-"2§:Number;
      
      public var angle:Number;
      
      public function §=!i§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§-"2§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §=!i§
      {
         var _loc2_:Array = param1.split(§1#§);
         if(_loc2_.length == 5)
         {
            return new §=!i§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §1#§ + this.x + §1#§ + this.y + §1#§ + this.§-"2§ + §1#§ + this.angle;
      }
   }
}
