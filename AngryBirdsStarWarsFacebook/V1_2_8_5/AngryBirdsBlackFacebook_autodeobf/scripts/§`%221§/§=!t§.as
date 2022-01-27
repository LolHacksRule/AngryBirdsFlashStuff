package §`"1§
{
   import §!"-§.§?s§;
   import §0"g§.§5!%§;
   import §0"g§.§8"f§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §=!t§ extends EventDispatcher
   {
       
      
      private var §0!&§:§0"M§;
      
      private var §9!Y§:§8"f§;
      
      private var §]!R§:String;
      
      public function §=!t§(param1:String, param2:§0"M§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.§]!R§ = param1;
         this.§0!&§ = param2;
         param6 = param6 || §?s§.§![§;
         this.§9!Y§ = §5!%§.§!6§.§4!M§(this.§0!&§,{"volume":param3},{"volume":this.§0!&§.volume},param4,param6);
         this.§9!Y§.delay = param5;
         this.§9!Y§.§@%§ = false;
         this.§9!Y§.onComplete = this.§ ">§;
      }
      
      public function get id() : String
      {
         return this.§]!R§;
      }
      
      public function get §`!e§() : §0"M§
      {
         return this.§0!&§;
      }
      
      public function play() : void
      {
         if(this.§9!Y§)
         {
            this.§9!Y§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§9!Y§)
         {
            this.§9!Y§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§9!Y§)
         {
            this.§9!Y§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§9!Y§)
         {
            this.§9!Y§.stop();
            this.§9!Y§.dispose();
            this.§9!Y§ = null;
         }
      }
      
      private function § ">§() : void
      {
         this.§9!Y§.dispose();
         this.§9!Y§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
