package §'!D§
{
   import §["6§.§@D§;
   
   public class §&z§ extends §9!W§ implements §>x§
   {
       
      
      private var §4S§:Number;
      
      public function §&z§(param1:§@D§)
      {
         super(param1,0);
         §4!V§ = 0.01;
         this.§4S§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§4S§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§4S§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§4S§ = param1;
      }
   }
}
