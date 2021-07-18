package §_-xo§
{
   public class §_-Ar§ extends §_-E-§
   {
       
      
      protected var §_-Zc§:§_-Lk§;
      
      public function §_-Ar§(param1:§_-Lk§, param2:Number)
      {
         super(param1.§_-Pj§,param2);
         this.§_-Zc§ = param1;
         §_-7A§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§_-k7§)
         {
            super.stop();
            this.§_-Zc§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-Zc§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§_-Zc§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§_-k7§)
         {
            this.§_-Zc§.firePlay();
            super.play();
         }
      }
      
      public function get §_-Y1§() : §_-Lk§
      {
         return this.§_-Zc§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§_-Zc§.fireStop();
      }
   }
}
