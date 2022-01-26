package §_-sN§
{
   public class §_-qR§ extends §_-b8§
   {
       
      
      protected var §_-0w§:§_-x5§;
      
      public function §_-qR§(param1:§_-x5§, param2:Number)
      {
         super(param1.§_-ti§,param2);
         this.§_-0w§ = param1;
         §_-sA§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§_-2a§)
         {
            super.stop();
            this.§_-0w§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-0w§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§_-0w§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§_-2a§)
         {
            this.§_-0w§.firePlay();
            super.play();
         }
      }
      
      public function get §false§() : §_-x5§
      {
         return this.§_-0w§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§_-0w§.fireStop();
      }
   }
}
