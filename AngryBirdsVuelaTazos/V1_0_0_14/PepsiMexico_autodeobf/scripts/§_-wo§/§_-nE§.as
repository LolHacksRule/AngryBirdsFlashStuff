package §_-wo§
{
   import §_-8p§.§_-dW§;
   
   public class §_-nE§ extends §_-g0§ implements §_-gb§
   {
       
      
      private var §_-pv§:Number;
      
      public function §_-nE§(param1:§_-dW§)
      {
         super(param1,0);
         §_-jI§ = 0.01;
         this.§_-pv§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§_-pv§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§_-pv§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§_-pv§ = param1;
      }
   }
}
