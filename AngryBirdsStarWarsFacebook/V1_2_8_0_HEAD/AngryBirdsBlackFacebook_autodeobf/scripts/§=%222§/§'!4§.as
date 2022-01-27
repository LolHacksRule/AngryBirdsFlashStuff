package §="2§
{
   import §3y§.§3#§;
   import §6"G§.§ #B§;
   import §6"G§.§-#C§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §'!4§ extends EventDispatcher
   {
       
      
      private var §9@§:§4!5§;
      
      private var §1"8§:§ #B§;
      
      private var §6##§:String;
      
      public function §'!4§(param1:String, param2:§4!5§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.§6##§ = param1;
         this.§9@§ = param2;
         param6 = param6 || §3#§.§%"K§;
         this.§1"8§ = §-#C§.§%!E§.§^!H§(this.§9@§,{"volume":param3},{"volume":this.§9@§.volume},param4,param6);
         this.§1"8§.delay = param5;
         this.§1"8§.§>h§ = false;
         this.§1"8§.onComplete = this.§5$§;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get §6"h§() : §4!5§
      {
         return this.§9@§;
      }
      
      public function play() : void
      {
         if(this.§1"8§)
         {
            this.§1"8§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§1"8§)
         {
            this.§1"8§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§1"8§)
         {
            this.§1"8§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§1"8§)
         {
            this.§1"8§.stop();
            this.§1"8§.dispose();
            this.§1"8§ = null;
         }
      }
      
      private function §5$§() : void
      {
         this.§1"8§.dispose();
         this.§1"8§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
