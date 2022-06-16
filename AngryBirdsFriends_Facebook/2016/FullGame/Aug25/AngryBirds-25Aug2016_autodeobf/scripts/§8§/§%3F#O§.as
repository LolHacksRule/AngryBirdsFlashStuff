package §8§#7
{
   import §&#S§.§""Z§;
   import §&#S§.§^#[§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §?#O§ extends EventDispatcher
   {
       
      
      private var §,1§:§@!"§;
      
      private var §-c§:§^#[§;
      
      private var mId:String;
      
      public function §?#O§(param1:String, param2:§@!"§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.mId = param1;
         this.§,1§ = param2;
         this.§-c§ = §""Z§.§3!]§.§5"0§(this.§,1§,{"volume":param3},{"volume":this.§,1§.volume},param4,param6);
         this.§-c§.delay = param5;
         this.§-c§.§#"V§ = false;
         this.§-c§.onComplete = this.§7#h§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §`@§() : §@!"§
      {
         return this.§,1§;
      }
      
      public function play() : void
      {
         if(this.§-c§)
         {
            this.§-c§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§-c§)
         {
            this.§-c§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§-c§)
         {
            this.§-c§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§-c§)
         {
            this.§-c§.stop();
            this.§-c§.dispose();
            this.§-c§ = null;
         }
      }
      
      private function §7#h§() : void
      {
         this.§-c§.dispose();
         this.§-c§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
