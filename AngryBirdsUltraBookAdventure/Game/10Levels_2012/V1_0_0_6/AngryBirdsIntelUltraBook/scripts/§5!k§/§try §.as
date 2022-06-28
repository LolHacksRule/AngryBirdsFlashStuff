package §5!k§
{
   public class §try §
   {
      
      private static const §`-§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §@!e§:Number;
      
      public var angle:Number;
      
      public function §try §(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§@!e§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §try §
      {
         var _loc2_:Array = param1.split(§`-§);
         if(_loc2_.length == 5)
         {
            return new §try §(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §`-§ + this.x + §`-§ + this.y + §`-§ + this.§@!e§ + §`-§ + this.angle;
      }
   }
}
