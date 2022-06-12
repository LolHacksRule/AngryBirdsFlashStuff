package §1R§
{
   import §6!>§.§>!#§;
   
   public class §+s§ extends §]!"§ implements §;N§
   {
       
      
      private var §=j§:Number;
      
      public function §+s§(param1:§>!#§)
      {
         super(param1,0);
         §+6§ = 0.01;
         this.§=j§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§=j§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§=j§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§=j§ = param1;
      }
   }
}
