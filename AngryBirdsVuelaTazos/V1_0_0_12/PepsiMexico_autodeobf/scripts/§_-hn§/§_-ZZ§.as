package §_-hn§
{
   import §_-Ou§.§_-DP§;
   
   public class §_-ZZ§ extends §_-DZ§ implements §_-HM§
   {
       
      
      private var §_-Gf§:Number;
      
      public function §_-ZZ§(param1:§_-DP§)
      {
         super(param1,0);
         §_-tU§ = 0.01;
         this.§_-Gf§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§_-Gf§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§_-Gf§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§_-Gf§ = param1;
      }
   }
}
