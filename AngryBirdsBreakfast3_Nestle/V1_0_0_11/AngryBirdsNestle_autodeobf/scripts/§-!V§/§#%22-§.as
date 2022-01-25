package §-!V§
{
   public class §#"-§
   {
      
      private static const §1#§:String = ":";
       
      
      public var step:int;
      
      public var §-!e§:Number;
      
      public var §]"'§:Number;
      
      public function §#"-§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§-!e§ = param2;
         this.§]"'§ = param3;
      }
      
      public static function initialize(param1:String) : §#"-§
      {
         var _loc2_:Array = param1.split(§1#§);
         if(_loc2_.length == 3)
         {
            return new §#"-§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §1#§ + this.§-!e§ + §1#§ + this.§]"'§;
      }
   }
}
