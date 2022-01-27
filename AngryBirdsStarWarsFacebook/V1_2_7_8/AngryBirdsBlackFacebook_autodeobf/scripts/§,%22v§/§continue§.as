package §,"v§
{
   import §#"_§.§6!%§;
   import §'! §.§2";§;
   import §'! §.§41§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §continue§ extends EventDispatcher
   {
       
      
      private var §-!o§:§^!2§;
      
      private var §4!o§:§2";§;
      
      private var §[7§:String;
      
      public function §continue§(param1:String, param2:§^!2§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.§[7§ = param1;
         this.§-!o§ = param2;
         param6 = param6 || §6!%§.§["v§;
         this.§4!o§ = §41§.§-G§.§&#'§(this.§-!o§,{"volume":param3},{"volume":this.§-!o§.volume},param4,param6);
         this.§4!o§.delay = param5;
         this.§4!o§.§7!b§ = false;
         this.§4!o§.onComplete = this.§>"m§;
      }
      
      public function get id() : String
      {
         return this.§[7§;
      }
      
      public function get §>!1§() : §^!2§
      {
         return this.§-!o§;
      }
      
      public function play() : void
      {
         if(this.§4!o§)
         {
            this.§4!o§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§4!o§)
         {
            this.§4!o§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§4!o§)
         {
            this.§4!o§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§4!o§)
         {
            this.§4!o§.stop();
            this.§4!o§.dispose();
            this.§4!o§ = null;
         }
      }
      
      private function §>"m§() : void
      {
         this.§4!o§.dispose();
         this.§4!o§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
