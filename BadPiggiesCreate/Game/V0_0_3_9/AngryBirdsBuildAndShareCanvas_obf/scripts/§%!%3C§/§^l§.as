package §%!<§
{
   public class §^l§
   {
      
      private static const §0q§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §"U§:Number;
      
      public var angle:Number;
      
      public function §^l§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§"U§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §^l§
      {
         var _loc2_:Array = param1.split(§0q§);
         if(_loc2_.length == 5)
         {
            return new §^l§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §0q§ + this.x + §0q§ + this.y + §0q§ + this.§"U§ + §0q§ + this.angle;
      }
   }
}
