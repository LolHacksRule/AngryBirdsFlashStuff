package §-n§
{
   public class §,0§
   {
      
      private static const §4!@§:String = ":";
       
      
      public var step:int;
      
      public var §%H§:Number;
      
      public var §,!2§:Number;
      
      public function §,0§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§%H§ = param2;
         this.§,!2§ = param3;
      }
      
      public static function initialize(param1:String) : §,0§
      {
         var _loc2_:Array = param1.split(§4!@§);
         if(_loc2_.length == 3)
         {
            return new §,0§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §4!@§ + this.§%H§ + §4!@§ + this.§,!2§;
      }
   }
}
