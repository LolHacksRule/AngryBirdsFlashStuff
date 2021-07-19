package §%U§
{
   public class § C§
   {
      
      private static const §`!e§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §""§:Number;
      
      public var angle:Number;
      
      public function § C§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§""§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : § C§
      {
         var _loc2_:Array = param1.split(§`!e§);
         if(_loc2_.length == 5)
         {
            return new § C§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §`!e§ + this.x + §`!e§ + this.y + §`!e§ + this.§""§ + §`!e§ + this.angle;
      }
   }
}
