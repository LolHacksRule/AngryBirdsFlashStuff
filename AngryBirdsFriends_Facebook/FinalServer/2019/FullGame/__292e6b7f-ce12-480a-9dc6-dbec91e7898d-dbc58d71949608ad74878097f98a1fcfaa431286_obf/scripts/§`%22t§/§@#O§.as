package §`"t§
{
   import flash.utils.getTimer;
   
   public class §@#O§
   {
       
      
      private var § I§:Number;
      
      private var §9"t§:Number;
      
      public function §@#O§(param1:Number)
      {
         super();
         this.§'!p§ = param1;
      }
      
      private function set §'!p§(param1:Number) : void
      {
         this.§9"t§ = getTimer();
         this.§ I§ = param1;
      }
      
      public function get synchronizedTimeStamp() : Number
      {
         var _loc1_:Number = getTimer() - this.§9"t§;
         return this.§ I§ + _loc1_;
      }
   }
}
