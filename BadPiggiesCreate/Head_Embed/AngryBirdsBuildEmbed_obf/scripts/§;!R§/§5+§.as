package §;!R§
{
   public class §5+§
   {
      
      private static const §9![§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §,!c§:Number;
      
      public var angle:Number;
      
      public function §5+§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§,!c§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §5+§
      {
         var _loc2_:Array = param1.split(§9![§);
         if(_loc2_.length == 5)
         {
            return new §5+§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §9![§ + this.x + §9![§ + this.y + §9![§ + this.§,!c§ + §9![§ + this.angle;
      }
   }
}
