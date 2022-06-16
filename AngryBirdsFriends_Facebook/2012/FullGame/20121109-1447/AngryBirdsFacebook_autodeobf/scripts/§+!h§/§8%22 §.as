package §+!h§
{
   public class §8" §
   {
      
      private static const §[!D§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §@!T§:Number;
      
      public var angle:Number;
      
      public function §8" §(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§@!T§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §8" §
      {
         var _loc2_:Array = param1.split(§[!D§);
         if(_loc2_.length == 5)
         {
            return new §8" §(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §[!D§ + this.x + §[!D§ + this.y + §[!D§ + this.§@!T§ + §[!D§ + this.angle;
      }
   }
}
