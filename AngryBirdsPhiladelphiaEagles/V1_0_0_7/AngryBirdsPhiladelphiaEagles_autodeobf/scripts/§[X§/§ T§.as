package §[X§
{
   public class § T§
   {
      
      private static const §4%§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §6!A§:Number;
      
      public var angle:Number;
      
      public function § T§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§6!A§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : § T§
      {
         var _loc2_:Array = param1.split(§4%§);
         if(_loc2_.length == 5)
         {
            return new § T§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §4%§ + this.x + §4%§ + this.y + §4%§ + this.§6!A§ + §4%§ + this.angle;
      }
   }
}
