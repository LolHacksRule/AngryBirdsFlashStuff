package §1!k§
{
   import §=b§.§%"2§;
   
   public class §4!J§ extends §^!B§ implements §9d§
   {
       
      
      private var §0!l§:Number;
      
      public function §4!J§(param1:§%"2§)
      {
         super(param1,0);
         §[m§ = 0.01;
         this.§0!l§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§0!l§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§0!l§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§0!l§ = param1;
      }
   }
}
