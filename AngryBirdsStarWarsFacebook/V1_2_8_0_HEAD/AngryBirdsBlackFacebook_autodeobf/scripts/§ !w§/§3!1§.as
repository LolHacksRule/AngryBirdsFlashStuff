package § !w§
{
   public class §3!1§
   {
      
      private static const §%!B§:String = ":";
       
      
      public var step:int;
      
      public var §6#I§:Number;
      
      public var §,!u§:Number;
      
      public function §3!1§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§6#I§ = param2;
         this.§,!u§ = param3;
      }
      
      public static function initialize(param1:String) : §3!1§
      {
         var _loc2_:Array = param1.split(§%!B§);
         if(_loc2_.length == 3)
         {
            return new §3!1§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §%!B§ + this.§6#I§ + §%!B§ + this.§,!u§;
      }
   }
}
