package §`!#§
{
   public class §9!0§ extends §[!O§
   {
       
      
      protected var §7"?§:§?f§;
      
      public function §9!0§(param1:§?f§, param2:Number)
      {
         super(param1.§!"$§,param2);
         this.§7"?§ = param1;
         §!"-§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§ y§)
         {
            super.stop();
            this.§7"?§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§7"?§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§7"?§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§ y§)
         {
            this.§7"?§.firePlay();
            super.play();
         }
      }
      
      public function get §]!2§() : §?f§
      {
         return this.§7"?§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§7"?§.fireStop();
      }
   }
}
