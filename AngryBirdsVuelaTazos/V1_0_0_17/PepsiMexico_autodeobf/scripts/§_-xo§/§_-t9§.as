package §_-xo§
{
   import §_-Xz§.§_-Ps§;
   
   public class §_-t9§ extends §_-E-§ implements §_-V0§
   {
       
      
      private var §_-8x§:Number;
      
      public function §_-t9§(param1:§_-Ps§)
      {
         super(param1,0);
         §_-7A§ = 0.01;
         this.§_-8x§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§_-8x§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§_-8x§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§_-8x§ = param1;
      }
   }
}
