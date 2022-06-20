package §%!f§
{
   public class §="E§
   {
      
      private static const §5!+§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var § Z§:Number;
      
      public var angle:Number;
      
      public function §="E§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§ Z§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §="E§
      {
         var _loc2_:Array = param1.split(§5!+§);
         if(_loc2_.length == 5)
         {
            return new §="E§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §5!+§ + this.x + §5!+§ + this.y + §5!+§ + this.§ Z§ + §5!+§ + this.angle;
      }
   }
}
