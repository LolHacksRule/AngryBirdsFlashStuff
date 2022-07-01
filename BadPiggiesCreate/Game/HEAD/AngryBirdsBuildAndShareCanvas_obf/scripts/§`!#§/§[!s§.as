package §`!#§
{
   import §%!n§.§;!'§;
   
   public class §[!s§ extends §[!O§ implements §7M§
   {
       
      
      private var §@!2§:Number;
      
      public function §[!s§(param1:§;!'§)
      {
         super(param1,0);
         §!"-§ = 0.01;
         this.§@!2§ = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this.§@!2§ < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this.§@!2§ > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this.§@!2§ = param1;
      }
   }
}
