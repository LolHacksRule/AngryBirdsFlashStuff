package §!!H§
{
   import flash.utils.getTimer;
   
   public class §?w§
   {
       
      
      private var §<9§:Number;
      
      private var §]k§:Number;
      
      public function §?w§(param1:Number)
      {
         super();
         this.§6"9§ = param1;
      }
      
      private function set §6"9§(param1:Number) : void
      {
         this.§]k§ = getTimer();
         this.§<9§ = param1;
      }
      
      public function get synchronizedTimeStamp() : Number
      {
         var _loc1_:Number = getTimer() - this.§]k§;
         return this.§<9§ + _loc1_;
      }
   }
}
