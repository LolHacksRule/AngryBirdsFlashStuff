package §9w§
{
   public class §5!A§
   {
      
      private static const §4H§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §-!-§:Number;
      
      public var angle:Number;
      
      public function §5!A§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§-!-§ = param4;
         this.angle = param5;
      }
      
      public static function §1!b§(param1:String) : §5!A§
      {
         var _loc2_:Array = param1.split(§4H§);
         if(_loc2_.length == 5)
         {
            return new §5!A§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §4H§ + this.x + §4H§ + this.y + §4H§ + this.§-!-§ + §4H§ + this.angle;
      }
   }
}
