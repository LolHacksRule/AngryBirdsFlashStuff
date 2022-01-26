package §_-0e§
{
   import §_-Aa§.§_-Y4§;
   
   public class §_-SO§ extends §_-3D§ implements §_-nj§
   {
       
      
      private var §_-Yr§:Number;
      
      public function §_-SO§(param1:§_-Y4§)
      {
         super(param1,0);
         §_-hZ§ = 0.01;
         this.§_-Yr§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§_-Yr§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§_-Yr§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§_-Yr§ = param1;
      }
   }
}
