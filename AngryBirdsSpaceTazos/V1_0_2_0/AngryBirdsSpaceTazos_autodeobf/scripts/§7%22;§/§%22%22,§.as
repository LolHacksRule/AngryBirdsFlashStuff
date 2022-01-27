package §7";§
{
   public class §"",§
   {
      
      private static const §-!P§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §^1§:Number;
      
      public var angle:Number;
      
      public function §"",§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§^1§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §"",§
      {
         var _loc2_:Array = param1.split(§-!P§);
         if(_loc2_.length == 5)
         {
            return new §"",§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §-!P§ + this.x + §-!P§ + this.y + §-!P§ + this.§^1§ + §-!P§ + this.angle;
      }
   }
}
