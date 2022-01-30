package §'!D§
{
   public class §1!J§ extends §9!W§
   {
       
      
      protected var §%!§:§&s§;
      
      public function §1!J§(param1:§&s§, param2:Number)
      {
         super(param1.§%!H§,param2);
         this.§%!§ = param1;
         §4!V§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§[i§)
         {
            super.stop();
            this.§%!§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§%!§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§%!§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§[i§)
         {
            this.§%!§.firePlay();
            super.play();
         }
      }
      
      public function get §4f§() : §&s§
      {
         return this.§%!§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§%!§.fireStop();
      }
   }
}
