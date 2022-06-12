package §1!@§
{
   import flash.utils.getTimer;
   
   public class §@#w§
   {
       
      
      private var §3!k§:Number;
      
      private var §2#$§:Number;
      
      public function §@#w§(param1:Number)
      {
         super();
         this.§1!=§ = param1;
      }
      
      private function set §1!=§(param1:Number) : void
      {
         this.§2#$§ = getTimer();
         this.§3!k§ = param1;
      }
      
      public function get synchronizedTimeStamp() : Number
      {
         var _loc1_:Number = getTimer() - this.§2#$§;
         return this.§3!k§ + _loc1_;
      }
   }
}
