package §;!,§
{
   import §4!7§.§%!m§;
   
   public class §#D§ extends AbstractTween implements §3?§
   {
       
      
      private var _lastTime:Number;
      
      public function §#D§(param1:§%!m§)
      {
         super(param1,0);
         §1J§ = 0.01;
         this._lastTime = -1;
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(this._lastTime < 0.01 && param1 >= 0.01)
         {
            this.action();
         }
         else if(this._lastTime > 0 && param1 <= 0)
         {
            this.rollback();
         }
         this._lastTime = param1;
      }
   }
}
