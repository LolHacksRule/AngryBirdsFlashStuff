package §;L§
{
   public class §9-§
   {
      
      private static const §@!;§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §!!S§:Number;
      
      public var angle:Number;
      
      public function §9-§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§!!S§ = param4;
         this.angle = param5;
      }
      
      public static function §=D§(param1:String) : §9-§
      {
         var _loc2_:Array = param1.split(§@!;§);
         if(_loc2_.length == 5)
         {
            return new §9-§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §@!;§ + this.x + §@!;§ + this.y + §@!;§ + this.§!!S§ + §@!;§ + this.angle;
      }
   }
}
