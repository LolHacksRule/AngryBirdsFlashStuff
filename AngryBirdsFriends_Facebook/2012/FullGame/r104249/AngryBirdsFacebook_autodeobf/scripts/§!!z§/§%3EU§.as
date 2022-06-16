package §!!z§
{
   import flash.utils.getTimer;
   
   public class §>U§
   {
       
      
      private var §];§:Number;
      
      private var §,Y§:Number;
      
      public function §>U§(param1:Number)
      {
         super();
         this.§#t§ = param1;
      }
      
      public function set §#t§(param1:Number) : void
      {
         this.§,Y§ = getTimer();
         this.§];§ = param1;
      }
      
      public function get §?9§() : Number
      {
         var _loc1_:Number = getTimer() - this.§,Y§;
         return this.§];§ + _loc1_;
      }
   }
}
