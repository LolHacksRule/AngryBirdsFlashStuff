package §1&§
{
   public class §!;§ extends §?!i§
   {
       
      
      protected var §5q§:§!!W§;
      
      public function §!;§(param1:§!!W§, param2:Number)
      {
         super(param1.§!H§,param2);
         this.§5q§ = param1;
         §['§ = param1.duration;
      }
      
      override public function stop() : void
      {
         if(§=!A§)
         {
            super.stop();
            this.§5q§.fireStop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§5q§.update(param1);
      }
      
      override public function firePlay() : void
      {
         super.firePlay();
         this.§5q§.firePlay();
      }
      
      override public function play() : void
      {
         if(!§=!A§)
         {
            this.§5q§.firePlay();
            super.play();
         }
      }
      
      public function get §`"§() : §!!W§
      {
         return this.§5q§;
      }
      
      override public function fireStop() : void
      {
         super.fireStop();
         this.§5q§.fireStop();
      }
   }
}
