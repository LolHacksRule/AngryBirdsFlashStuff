package §3>§
{
   public class §0!J§
   {
      
      private static const §=!>§:String = ":";
       
      
      public var step:int;
      
      public var §-g§:Number;
      
      public var §&!R§:Number;
      
      public function §0!J§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§-g§ = param2;
         this.§&!R§ = param3;
      }
      
      public static function initialize(param1:String) : §0!J§
      {
         var _loc2_:Array = param1.split(§=!>§);
         if(_loc2_.length == 3)
         {
            return new §0!J§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §=!>§ + this.§-g§ + §=!>§ + this.§&!R§;
      }
   }
}
