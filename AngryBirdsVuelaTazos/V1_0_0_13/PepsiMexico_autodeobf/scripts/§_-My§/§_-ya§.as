package §_-My§
{
   import §_-h2§.§_-CC§;
   
   public class §_-ya§ extends §_-Ry§ implements §_-93§
   {
       
      
      private var §_-A5§:Number;
      
      public function §_-ya§(param1:§_-CC§)
      {
         super(param1,0);
         §_-Hr§ = 0.01;
         this.§_-A5§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§_-A5§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§_-A5§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§_-A5§ = param1;
      }
   }
}
