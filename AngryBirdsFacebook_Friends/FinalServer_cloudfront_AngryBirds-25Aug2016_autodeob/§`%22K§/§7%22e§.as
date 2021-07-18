package §`"K§
{
   public class §7"e§
   {
      
      private static const §6$%§:String = ":";
       
      
      public var step:int;
      
      public var §-!z§:Number;
      
      public var §0$&§:Number;
      
      public function §7"e§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§-!z§ = param2;
         this.§0$&§ = param3;
      }
      
      public static function initialize(param1:String) : §7"e§
      {
         var _loc2_:Array = param1.split(§6$%§);
         if(_loc2_.length == 3)
         {
            return new §7"e§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §6$%§ + this.§-!z§ + §6$%§ + this.§0$&§;
      }
   }
}
