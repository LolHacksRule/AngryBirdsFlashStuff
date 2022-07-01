package §6!!§
{
   import §^b§.§ E§;
   
   public class §+G§ extends §?t§ implements §"'§
   {
       
      
      private var §%d§:Number;
      
      public function §+G§(param1:§ E§)
      {
         super(param1,0);
         §4!1§ = 0.01;
         this.§%d§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§%d§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§%d§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§%d§ = param1;
      }
   }
}
