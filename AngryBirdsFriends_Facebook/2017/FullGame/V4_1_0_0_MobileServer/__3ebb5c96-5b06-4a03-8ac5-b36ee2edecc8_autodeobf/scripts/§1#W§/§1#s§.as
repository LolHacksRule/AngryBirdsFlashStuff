package §1#W§
{
   import §8Z§.§6"w§;
   import §8Z§.§`!s§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §1#s§ extends EventDispatcher
   {
       
      
      private var §4"V§:§="D§;
      
      private var §>"n§:§`!s§;
      
      private var mId:String;
      
      public function §1#s§(param1:String, param2:§="D§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.mId = param1;
         this.§4"V§ = param2;
         this.§>"n§ = §6"w§.§ "D§.§""3§(this.§4"V§,{"volume":param3},{"volume":this.§4"V§.volume},param4,param6);
         this.§>"n§.delay = param5;
         this.§>"n§.§+"+§ = false;
         this.§>"n§.onComplete = this.§8#@§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §`" §() : §="D§
      {
         return this.§4"V§;
      }
      
      public function play() : void
      {
         if(this.§>"n§)
         {
            this.§>"n§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§>"n§)
         {
            this.§>"n§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§>"n§)
         {
            this.§>"n§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§>"n§)
         {
            this.§>"n§.stop();
            this.§>"n§.dispose();
            this.§>"n§ = null;
         }
      }
      
      private function §8#@§() : void
      {
         this.§>"n§.dispose();
         this.§>"n§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
