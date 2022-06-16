package §[#[§
{
   import flash.utils.getTimer;
   
   public class §=#e§
   {
       
      
      private var §6";§:Number;
      
      private var §5!&§:Number;
      
      public function §=#e§(param1:Number)
      {
         super();
         this.§0P§ = param1;
      }
      
      private function set §0P§(param1:Number) : void
      {
         this.§5!&§ = getTimer();
         this.§6";§ = param1;
      }
      
      public function get synchronizedTimeStamp() : Number
      {
         var _loc1_:Number = getTimer() - this.§5!&§;
         return this.§6";§ + _loc1_;
      }
   }
}
