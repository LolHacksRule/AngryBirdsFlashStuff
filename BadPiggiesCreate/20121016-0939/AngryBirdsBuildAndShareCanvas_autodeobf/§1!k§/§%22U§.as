package §1!k§
{
   public class §"U§ extends §^!B§
   {
       
      
      protected var §>d§:§?H§;
      
      public function §"U§(param1:§?H§, param2:Number)
      {
         super(param1.§3!-§,param2);
         this.§>d§ = param1;
         §[m§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§#e§)
         {
            super.stop();
            this.§>d§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§>d§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§>d§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§#e§)
         {
            this.§>d§.firePlay();
            super.play();
         }
      }
      
      public function get §2O§() : §?H§
      {
         return this.§>d§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§>d§.fireStop();
      }
   }
}
