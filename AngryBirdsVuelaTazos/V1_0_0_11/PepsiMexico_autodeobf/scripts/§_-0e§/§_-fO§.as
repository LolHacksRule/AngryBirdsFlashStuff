package §_-0e§
{
   public class §_-fO§ extends §_-3D§
   {
       
      
      protected var §_-rL§:§_-i8§;
      
      public function §_-fO§(param1:§_-i8§, param2:Number)
      {
         super(param1.§_-wD§,param2);
         this.§_-rL§ = param1;
         §_-hZ§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§_-JI§)
         {
            super.stop();
            this.§_-rL§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-rL§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§_-rL§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§_-JI§)
         {
            this.§_-rL§.firePlay();
            super.play();
         }
      }
      
      public function get §_-kA§() : §_-i8§
      {
         return this.§_-rL§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§_-rL§.fireStop();
      }
   }
}
