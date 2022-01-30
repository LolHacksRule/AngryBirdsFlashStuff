package §6!!§
{
   public class §9o§ extends §?t§
   {
       
      
      protected var §,!]§:§,!B§;
      
      public function §9o§(param1:§,!B§, param2:Number)
      {
         super(param1.§>8§,param2);
         this.§,!]§ = param1;
         §4!1§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§9§)
         {
            super.stop();
            this.§,!]§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§,!]§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§,!]§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§9§)
         {
            this.§,!]§.firePlay();
            super.play();
         }
      }
      
      public function get §@[§() : §,!B§
      {
         return this.§,!]§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§,!]§.fireStop();
      }
   }
}
