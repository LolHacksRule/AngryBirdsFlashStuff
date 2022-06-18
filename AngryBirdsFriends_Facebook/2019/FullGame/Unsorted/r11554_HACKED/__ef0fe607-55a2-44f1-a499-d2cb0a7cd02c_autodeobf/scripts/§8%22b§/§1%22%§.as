package §8"b§
{
   import flash.utils.getTimer;
   
   public class §1"%§
   {
       
      
      private var §8#b§:Number;
      
      private var §3!&§:Number;
      
      public function §1"%§(param1:Number)
      {
         super();
         this.§9!-§ = param1;
      }
      
      private function set §9!-§(param1:Number) : void
      {
         this.§3!&§ = getTimer();
         this.§8#b§ = param1;
      }
      
      public function get synchronizedTimeStamp() : Number
      {
         var _loc1_:Number = getTimer() - this.§3!&§;
         return this.§8#b§ + _loc1_;
      }
   }
}
