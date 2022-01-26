package §%Q§
{
   public class §;V§
   {
      
      private static const §[Q§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §;_§:Number;
      
      public var angle:Number;
      
      public function §;V§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§;_§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §;V§
      {
         var _loc2_:Array = param1.split(§[Q§);
         if(_loc2_.length == 5)
         {
            return new §;V§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §[Q§ + this.x + §[Q§ + this.y + §[Q§ + this.§;_§ + §[Q§ + this.angle;
      }
   }
}
