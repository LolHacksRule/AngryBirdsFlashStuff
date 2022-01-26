package §_-hn§
{
   public class §_-u9§ extends §_-DZ§
   {
       
      
      protected var §_-eH§:§_-pg§;
      
      public function §_-u9§(param1:§_-pg§, param2:Number)
      {
         super(param1.§_-BG§,param2);
         this.§_-eH§ = param1;
         §_-tU§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§_-tX§)
         {
            super.stop();
            this.§_-eH§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-eH§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§_-eH§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§_-tX§)
         {
            this.§_-eH§.firePlay();
            super.play();
         }
      }
      
      public function get §_-hC§() : §_-pg§
      {
         return this.§_-eH§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§_-eH§.fireStop();
      }
   }
}
