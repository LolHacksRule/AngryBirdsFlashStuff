package §+!c§
{
   import §7"a§.§1"R§;
   import §7"a§.§@4§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §5"$§ extends Sprite
   {
       
      
      private var §>#T§:String;
      
      protected var §+=§:String;
      
      protected var §<!x§:§@4§;
      
      public function §5"$§(param1:String, param2:String = null)
      {
         super();
         this.§>#T§ = param1;
         this.§+=§ = param2 || §@4§.§ R§;
         this.init();
      }
      
      private function init() : void
      {
         this.§<!x§ = §1"R§.§%!E§.§]i§(this.§>#T§,this.§+=§);
         this.§<!x§.addEventListener(Event.COMPLETE,this.§-#Y§);
         addChild(this.§<!x§);
      }
      
      private function §-#Y§(param1:Event) : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
         if(this.§<!x§)
         {
            this.§<!x§.removeEventListener(Event.COMPLETE,this.§-#Y§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§<!x§)
         {
            removeChild(this.§<!x§);
            §1"R§.§%!E§.§1!^§(this.§>#T§,this.§+=§,this.§<!x§);
            this.§<!x§ = null;
         }
      }
   }
}
