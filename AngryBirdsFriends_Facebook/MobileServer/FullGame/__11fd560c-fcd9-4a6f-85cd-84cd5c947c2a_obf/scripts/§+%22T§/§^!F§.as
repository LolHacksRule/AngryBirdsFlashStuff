package §+"T§
{
   public class §^!F§
   {
      
      private static const § "M§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §4#`§:Number;
      
      public var angle:Number;
      
      public function §^!F§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§4#`§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §^!F§
      {
         var _loc2_:Array = param1.split(§ "M§);
         if(_loc2_.length == 5)
         {
            return new §^!F§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + § "M§ + this.x + § "M§ + this.y + § "M§ + this.§4#`§ + § "M§ + this.angle;
      }
   }
}
