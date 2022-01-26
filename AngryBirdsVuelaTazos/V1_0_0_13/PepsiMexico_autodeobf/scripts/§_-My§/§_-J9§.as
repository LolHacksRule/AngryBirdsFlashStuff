package §_-My§
{
   public class §_-J9§ extends §_-Ry§
   {
       
      
      protected var §_-gi§:§_-hK§;
      
      public function §_-J9§(param1:§_-hK§, param2:Number)
      {
         super(param1.§_-AY§,param2);
         this.§_-gi§ = param1;
         §_-Hr§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§_-Kq§)
         {
            super.stop();
            this.§_-gi§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-gi§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§_-gi§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§_-Kq§)
         {
            this.§_-gi§.firePlay();
            super.play();
         }
      }
      
      public function get §_-fP§() : §_-hK§
      {
         return this.§_-gi§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§_-gi§.fireStop();
      }
   }
}
