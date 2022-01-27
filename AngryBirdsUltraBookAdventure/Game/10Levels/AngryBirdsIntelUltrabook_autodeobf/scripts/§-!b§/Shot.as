package §-!b§
{
   public class Shot
   {
      
      private static const §'L§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var power:Number;
      
      public var angle:Number;
      
      public function Shot(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.power = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : Shot
      {
         var _loc2_:Array = param1.split(§'L§);
         if(_loc2_.length == 5)
         {
            return new Shot(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §'L§ + this.x + §'L§ + this.y + §'L§ + this.power + §'L§ + this.angle;
      }
   }
}
