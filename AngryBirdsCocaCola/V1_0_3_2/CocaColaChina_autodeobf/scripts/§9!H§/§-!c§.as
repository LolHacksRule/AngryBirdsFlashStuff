package §9!H§
{
   public class §-!c§
   {
      
      private static const §["§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §]R§:Number;
      
      public var angle:Number;
      
      public function §-!c§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§]R§ = param4;
         this.angle = param5;
      }
      
      public static function §4"§(param1:String) : §-!c§
      {
         var _loc2_:Array = param1.split(§["§);
         if(_loc2_.length == 5)
         {
            return new §-!c§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §["§ + this.x + §["§ + this.y + §["§ + this.§]R§ + §["§ + this.angle;
      }
   }
}
