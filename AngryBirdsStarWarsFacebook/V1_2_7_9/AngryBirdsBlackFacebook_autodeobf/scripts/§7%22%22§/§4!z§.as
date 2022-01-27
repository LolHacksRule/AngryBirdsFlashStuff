package §7""§
{
   import § "I§.§?!%§;
   import § "I§.§^!J§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §4!z§ extends Sprite
   {
       
      
      private var §!!B§:String;
      
      protected var §]!C§:String;
      
      protected var §#X§:§?!%§;
      
      public function §4!z§(param1:String, param2:String = null)
      {
         super();
         this.§!!B§ = param1;
         this.§]!C§ = param2 || §?!%§.§^"g§;
         this.init();
      }
      
      private function init() : void
      {
         this.§#X§ = §^!J§.§-G§.§!"m§(this.§!!B§,this.§]!C§);
         this.§#X§.addEventListener(Event.COMPLETE,this.§9N§);
         addChild(this.§#X§);
      }
      
      private function §9N§(param1:Event) : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
         if(this.§#X§)
         {
            this.§#X§.removeEventListener(Event.COMPLETE,this.§9N§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§#X§)
         {
            removeChild(this.§#X§);
            §^!J§.§-G§.§,>§(this.§!!B§,this.§]!C§,this.§#X§);
            this.§#X§ = null;
         }
      }
   }
}
