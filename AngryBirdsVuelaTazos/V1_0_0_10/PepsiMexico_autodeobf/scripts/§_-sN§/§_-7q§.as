package §_-sN§
{
   import §_-SJ§.§_-Q5§;
   
   public class §_-7q§ extends §_-b8§ implements §_-FK§
   {
       
      
      private var §_-m0§:Number;
      
      public function §_-7q§(param1:§_-Q5§)
      {
         super(param1,0);
         §_-sA§ = 0.01;
         this.§_-m0§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§_-m0§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§_-m0§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§_-m0§ = param1;
      }
   }
}
