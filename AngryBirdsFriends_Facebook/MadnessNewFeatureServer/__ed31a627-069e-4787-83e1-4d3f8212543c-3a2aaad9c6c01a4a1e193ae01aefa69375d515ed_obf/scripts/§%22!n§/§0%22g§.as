package §"!n§
{
   import flash.utils.getTimer;
   
   public class §0"g§
   {
       
      
      private var §"!T§:Number;
      
      private var §<"v§:Number;
      
      public function §0"g§(param1:Number)
      {
         super();
         this.§#L§ = param1;
      }
      
      private function set §#L§(param1:Number) : void
      {
         this.§<"v§ = getTimer();
         this.§"!T§ = param1;
      }
      
      public function get synchronizedTimeStamp() : Number
      {
         var _loc1_:Number = getTimer() - this.§<"v§;
         return this.§"!T§ + _loc1_;
      }
   }
}
