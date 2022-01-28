package §;!,§
{
   public class §3!u§ extends AbstractTween
   {
       
      
      protected var §]d§:§#>§;
      
      public function §3!u§(param1:§#>§, param2:Number)
      {
         super(param1.§-!4§,param2);
         this.§]d§ = param1;
         §1J§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§5N§)
         {
            super.stop();
            this.§]d§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§]d§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§]d§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§5N§)
         {
            this.§]d§.firePlay();
            super.play();
         }
      }
      
      public function get §-C§() : §#>§
      {
         return this.§]d§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§]d§.fireStop();
      }
   }
}
