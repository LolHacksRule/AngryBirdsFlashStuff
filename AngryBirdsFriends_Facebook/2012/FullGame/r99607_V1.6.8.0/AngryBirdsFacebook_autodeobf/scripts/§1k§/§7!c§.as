package §1k§
{
   import §0r§.§7!b§;
   import §0r§.§=S§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §7!c§ extends EventDispatcher
   {
       
      
      private var §>";§:§'"9§;
      
      private var § 5§:§=S§;
      
      private var §4W§:String;
      
      public function §7!c§(param1:String, param2:§'"9§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.§4W§ = param1;
         this.§>";§ = param2;
         this.§ 5§ = §7!b§.§8c§.§4&§(this.§>";§,{"volume":param3},{"volume":this.§>";§.volume},param4,param6);
         this.§ 5§.delay = param5;
         this.§ 5§.§?"+§ = false;
         this.§ 5§.onComplete = this.§8D§;
      }
      
      public function get id() : String
      {
         return this.§4W§;
      }
      
      public function get §1V§() : §'"9§
      {
         return this.§>";§;
      }
      
      public function play() : void
      {
         if(this.§ 5§)
         {
            this.§ 5§.play();
         }
      }
      
      public function stop() : void
      {
         if(this.§ 5§)
         {
            this.§ 5§.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.§ 5§)
         {
            this.§ 5§.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.§ 5§)
         {
            this.§ 5§.stop();
            this.§ 5§.dispose();
            this.§ 5§ = null;
         }
      }
      
      private function §8D§() : void
      {
         this.§ 5§.dispose();
         this.§ 5§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
