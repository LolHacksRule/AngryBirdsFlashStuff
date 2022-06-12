package §96§
{
   public class §1r§
   {
      
      private static const § !m§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §7!b§:Number;
      
      public var angle:Number;
      
      public function §1r§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§7!b§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §1r§
      {
         var _loc2_:Array = param1.split(§ !m§);
         if(_loc2_.length == 5)
         {
            return new §1r§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + § !m§ + this.x + § !m§ + this.y + § !m§ + this.§7!b§ + § !m§ + this.angle;
      }
   }
}
