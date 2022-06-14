package §6!B§
{
   import §8!v§.§+!W§;
   import §8!v§.§>!+§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §&Q§ extends EventDispatcher
   {
       
      
      private var §!q§:§,!p§;
      
      private var §]!2§:§+!W§;
      
      private var §;!Y§:String;
      
      public function §&Q§(param1:String, param2:§,!p§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.§;!Y§ = param1;
         this.§!q§ = param2;
         this.§]!2§ = §>!+§.§;"§.§^!K§(this.§!q§,{"volume":param3},{"volume":this.§!q§.volume},param4,param6);
         this.§]!2§.delay = param5;
         this.§]!2§.§'l§ = false;
         this.§]!2§.onComplete = this.§4"6§;
      }
      
      public function get id() : String
      {
         return this.§;!Y§;
      }
      
      public function get §%<§() : §,!p§
      {
         return this.§!q§;
      }
      
      public function play() : void
      {
         if(this.§]!2§)
         {
            this.§]!2§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§]!2§)
         {
            this.§]!2§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§]!2§)
         {
            this.§]!2§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§]!2§)
         {
            this.§]!2§.stop();
            this.§]!2§.dispose();
            this.§]!2§ = null;
         }
      }
      
      private function §4"6§() : void
      {
         this.§]!2§.dispose();
         this.§]!2§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
