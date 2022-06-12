package §8!J§
{
   public class §3!_§ extends §5f§
   {
       
      
      protected var §0v§:§3j§;
      
      public function §3!_§(param1:§3j§, param2:Number)
      {
         super(param1.§?J§,param2);
         this.§0v§ = param1;
         §,!O§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§1!1§)
         {
            super.stop();
            this.§0v§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§0v§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§0v§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§1!1§)
         {
            this.§0v§.firePlay();
            super.play();
         }
      }
      
      public function get §"!D§() : §3j§
      {
         return this.§0v§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§0v§.fireStop();
      }
   }
}
