package §^#]§
{
   import flash.utils.getTimer;
   
   public class §^!<§
   {
       
      
      private var §5"`§:Number;
      
      private var §3#k§:Number;
      
      public function §^!<§(param1:Number)
      {
         super();
         this.§5!X§ = param1;
      }
      
      private function set §5!X§(param1:Number) : void
      {
         this.§3#k§ = getTimer();
         this.§5"`§ = param1;
      }
      
      public function get synchronizedTimeStamp() : Number
      {
         var _loc1_:Number = getTimer() - this.§3#k§;
         return this.§5"`§ + _loc1_;
      }
   }
}
