package §-!E§
{
   public class §+I§
   {
      
      private static const §#!O§:String = ":";
       
      
      public var step:int;
      
      public var §6%§:Number;
      
      public var §!!z§:Number;
      
      public function §+I§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§6%§ = param2;
         this.§!!z§ = param3;
      }
      
      public static function initialize(param1:String) : §+I§
      {
         var _loc2_:Array = param1.split(§#!O§);
         if(_loc2_.length == 3)
         {
            return new §+I§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §#!O§ + this.§6%§ + §#!O§ + this.§!!z§;
      }
   }
}
