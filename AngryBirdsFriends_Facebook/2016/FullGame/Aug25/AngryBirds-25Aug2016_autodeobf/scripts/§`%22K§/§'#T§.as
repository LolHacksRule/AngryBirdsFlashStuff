package §`"K§
{
   public class §'#T§
   {
      
      private static const §6$%§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §?#i§:Number;
      
      public var angle:Number;
      
      public function §'#T§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§?#i§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §'#T§
      {
         var _loc2_:Array = param1.split(§6$%§);
         if(_loc2_.length == 5)
         {
            return new §'#T§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §6$%§ + this.x + §6$%§ + this.y + §6$%§ + this.§?#i§ + §6$%§ + this.angle;
      }
   }
}
