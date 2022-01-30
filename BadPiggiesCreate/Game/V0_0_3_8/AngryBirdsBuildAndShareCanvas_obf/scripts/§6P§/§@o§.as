package §6P§
{
   public class §@o§ extends §>Z§
   {
       
      
      protected var §-!$§:§!b§;
      
      public function §@o§(param1:§!b§, param2:Number)
      {
         super(param1.§&! §,param2);
         this.§-!$§ = param1;
         §"!,§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§74§)
         {
            super.stop();
            this.§-!$§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§-!$§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§-!$§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§74§)
         {
            this.§-!$§.firePlay();
            super.play();
         }
      }
      
      public function get §@!-§() : §!b§
      {
         return this.§-!$§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§-!$§.fireStop();
      }
   }
}
