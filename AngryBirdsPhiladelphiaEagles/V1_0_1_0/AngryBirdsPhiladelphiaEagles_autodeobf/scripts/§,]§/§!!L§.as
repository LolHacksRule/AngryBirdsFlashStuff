package §,]§
{
   public class §!!L§
   {
      
      private static const §3$§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §5$§:Number;
      
      public var angle:Number;
      
      public function §!!L§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§5$§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §!!L§
      {
         var _loc2_:Array = param1.split(§3$§);
         if(_loc2_.length == 5)
         {
            return new §!!L§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §3$§ + this.x + §3$§ + this.y + §3$§ + this.§5$§ + §3$§ + this.angle;
      }
   }
}
