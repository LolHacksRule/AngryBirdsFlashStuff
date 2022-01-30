package §-!X§
{
   public class §0J§
   {
      
      private static const §@P§:String = ":";
       
      
      public var step:int;
      
      public var §+!p§:Number;
      
      public var §2"2§:Number;
      
      public function §0J§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§+!p§ = param2;
         this.§2"2§ = param3;
      }
      
      public static function initialize(param1:String) : §0J§
      {
         var _loc2_:Array = param1.split(§@P§);
         if(_loc2_.length == 3)
         {
            return new §0J§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §@P§ + this.§+!p§ + §@P§ + this.§2"2§;
      }
   }
}
