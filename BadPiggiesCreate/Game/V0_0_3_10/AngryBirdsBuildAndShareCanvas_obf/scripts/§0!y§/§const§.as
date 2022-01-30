package §0!y§
{
   public class §const§
   {
      
      private static const §3n§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §5!u§:Number;
      
      public var angle:Number;
      
      public function §const§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§5!u§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §const§
      {
         var _loc2_:Array = param1.split(§3n§);
         if(_loc2_.length == 5)
         {
            return new §const§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §3n§ + this.x + §3n§ + this.y + §3n§ + this.§5!u§ + §3n§ + this.angle;
      }
   }
}
