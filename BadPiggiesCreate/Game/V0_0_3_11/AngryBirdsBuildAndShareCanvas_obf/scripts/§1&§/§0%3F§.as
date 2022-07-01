package §1&§
{
   import §8!X§.§7'§;
   
   public class §0?§ extends §?!i§ implements §][§
   {
       
      
      private var §?!j§:Number;
      
      public function §0?§(param1:§7'§)
      {
         super(param1,0);
         §['§ = 0.01;
         this.§?!j§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§?!j§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§?!j§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§?!j§ = param1;
      }
   }
}
