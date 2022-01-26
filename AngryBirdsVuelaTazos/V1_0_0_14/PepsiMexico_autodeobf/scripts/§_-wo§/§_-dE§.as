package §_-wo§
{
   public class §_-dE§ extends §_-g0§
   {
       
      
      protected var §_-cR§:§_-Ff§;
      
      public function §_-dE§(param1:§_-Ff§, param2:Number)
      {
         super(param1.§_-mw§,param2);
         this.§_-cR§ = param1;
         §_-jI§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§_-6Q§)
         {
            super.stop();
            this.§_-cR§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-cR§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§_-cR§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§_-6Q§)
         {
            this.§_-cR§.firePlay();
            super.play();
         }
      }
      
      public function get §_-qt§() : §_-Ff§
      {
         return this.§_-cR§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§_-cR§.fireStop();
      }
   }
}
