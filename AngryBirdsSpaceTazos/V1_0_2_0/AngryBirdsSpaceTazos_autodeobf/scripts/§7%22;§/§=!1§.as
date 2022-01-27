package §7";§
{
   public class §=!1§
   {
      
      private static const §-!P§:String = ":";
       
      
      public var step:int;
      
      public var §-!Z§:Number;
      
      public var §,!,§:Number;
      
      public function §=!1§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§-!Z§ = param2;
         this.§,!,§ = param3;
      }
      
      public static function initialize(param1:String) : §=!1§
      {
         var _loc2_:Array = param1.split(§-!P§);
         if(_loc2_.length == 3)
         {
            return new §=!1§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §-!P§ + this.§-!Z§ + §-!P§ + this.§,!,§;
      }
   }
}
