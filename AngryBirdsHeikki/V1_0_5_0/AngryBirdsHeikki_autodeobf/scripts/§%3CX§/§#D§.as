package §<X§
{
   public class §#D§
   {
      
      private static const DELIM:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §+N§:Number;
      
      public var angle:Number;
      
      public function §#D§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§+N§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §#D§
      {
         var _loc2_:Array = param1.split(DELIM);
         if(_loc2_.length == 5)
         {
            return new §#D§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + DELIM + this.x + DELIM + this.y + DELIM + this.§+N§ + DELIM + this.angle;
      }
   }
}
