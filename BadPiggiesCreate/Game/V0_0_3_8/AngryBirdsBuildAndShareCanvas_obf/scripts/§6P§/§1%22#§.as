package §6P§
{
   import §]+§.§"G§;
   
   public class §1"#§ extends §>Z§ implements §4B§
   {
       
      
      private var §?!3§:Number;
      
      public function §1"#§(param1:§"G§)
      {
         super(param1,0);
         §"!,§ = 0.01;
         this.§?!3§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§?!3§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§?!3§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§?!3§ = param1;
      }
   }
}
