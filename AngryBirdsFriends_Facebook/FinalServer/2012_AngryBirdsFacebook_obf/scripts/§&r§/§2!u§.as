package §&r§
{
   public class §2!u§
   {
      
      private static const §[!!§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §9'§:Number;
      
      public var angle:Number;
      
      public function §2!u§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§9'§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §2!u§
      {
         var _loc2_:Array = param1.split(§[!!§);
         if(_loc2_.length == 5)
         {
            return new §2!u§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §[!!§ + this.x + §[!!§ + this.y + §[!!§ + this.§9'§ + §[!!§ + this.angle;
      }
   }
}
