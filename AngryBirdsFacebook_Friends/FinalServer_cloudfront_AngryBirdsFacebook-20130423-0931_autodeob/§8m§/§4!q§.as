package §8m§
{
   import §2"'§.§'v§;
   import §2"'§.§0W§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §4!q§ extends EventDispatcher
   {
       
      
      private var §6s§:§7!>§;
      
      private var § !5§:§'v§;
      
      private var §&N§:String;
      
      public function §4!q§(param1:String, param2:§7!>§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.§&N§ = param1;
         this.§6s§ = param2;
         this.§ !5§ = §0W§.§&"5§.§]!r§(this.§6s§,{"volume":param3},{"volume":this.§6s§.volume},param4,param6);
         this.§ !5§.delay = param5;
         this.§ !5§.§="6§ = false;
         this.§ !5§.onComplete = this.§8!8§;
      }
      
      public function get id() : String
      {
         return this.§&N§;
      }
      
      public function get §?!h§() : §7!>§
      {
         return this.§6s§;
      }
      
      public function play() : void
      {
         if(this.§ !5§)
         {
            this.§ !5§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§ !5§)
         {
            this.§ !5§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§ !5§)
         {
            this.§ !5§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§ !5§)
         {
            this.§ !5§.stop();
            this.§ !5§.dispose();
            this.§ !5§ = null;
         }
      }
      
      private function §8!8§() : void
      {
         this.§ !5§.dispose();
         this.§ !5§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
