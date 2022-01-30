package §8!J§
{
   import §2n§.§8"7§;
   
   public class §8!c§ extends §5f§ implements §-F§
   {
       
      
      private var §<!y§:Number;
      
      public function §8!c§(param1:§8"7§)
      {
         super(param1,0);
         §,!O§ = 0.01;
         this.§<!y§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§<!y§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§<!y§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§<!y§ = param1;
      }
   }
}
