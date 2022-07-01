package §1R§
{
   public class §67§ extends §]!"§
   {
       
      
      protected var §9!=§:§4!T§;
      
      public function §67§(param1:§4!T§, param2:Number)
      {
         super(param1.§5F§,param2);
         this.§9!=§ = param1;
         §+6§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§@k§)
         {
            super.stop();
            this.§9!=§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§9!=§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§9!=§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§@k§)
         {
            this.§9!=§.firePlay();
            super.play();
         }
      }
      
      public function get §[!q§() : §4!T§
      {
         return this.§9!=§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§9!=§.fireStop();
      }
   }
}
