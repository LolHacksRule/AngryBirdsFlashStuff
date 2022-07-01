package §>!E§
{
   public class §+G§
   {
      
      private static const §8N§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var § i§:Number;
      
      public var angle:Number;
      
      public function §+G§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§ i§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §+G§
      {
         var _loc2_:Array = param1.split(§8N§);
         if(_loc2_.length == 5)
         {
            return new §+G§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §8N§ + this.x + §8N§ + this.y + §8N§ + this.§ i§ + §8N§ + this.angle;
      }
   }
}
