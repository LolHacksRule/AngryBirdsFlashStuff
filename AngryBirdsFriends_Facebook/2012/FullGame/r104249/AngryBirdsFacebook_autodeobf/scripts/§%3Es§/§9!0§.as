package §>s§
{
   import §2E§.§&p§;
   import §2E§.§2l§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §9!0§ extends EventDispatcher
   {
       
      
      private var §#!v§:§9!u§;
      
      private var §7j§:§2l§;
      
      private var §3!9§:String;
      
      public function §9!0§(param1:String, param2:§9!u§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.§3!9§ = param1;
         this.§#!v§ = param2;
         this.§7j§ = §&p§.§1[§.§7!3§(this.§#!v§,{"volume":param3},{"volume":this.§#!v§.volume},param4,param6);
         this.§7j§.delay = param5;
         this.§7j§.§=!h§ = false;
         this.§7j§.onComplete = this.§0"L§;
      }
      
      public function get id() : String
      {
         return this.§3!9§;
      }
      
      public function get §,!@§() : §9!u§
      {
         return this.§#!v§;
      }
      
      public function play() : void
      {
         if(this.§7j§)
         {
            this.§7j§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§7j§)
         {
            this.§7j§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§7j§)
         {
            this.§7j§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§7j§)
         {
            this.§7j§.stop();
            this.§7j§.dispose();
            this.§7j§ = null;
         }
      }
      
      private function §0"L§() : void
      {
         this.§7j§.dispose();
         this.§7j§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
