package §;n§
{
   public class §`r§
   {
      
      private static const §^!f§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §'-§:Number;
      
      public var angle:Number;
      
      public function §`r§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§'-§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §`r§
      {
         var _loc2_:Array = param1.split(§^!f§);
         if(_loc2_.length == 5)
         {
            return new §`r§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §^!f§ + this.x + §^!f§ + this.y + §^!f§ + this.§'-§ + §^!f§ + this.angle;
      }
   }
}
