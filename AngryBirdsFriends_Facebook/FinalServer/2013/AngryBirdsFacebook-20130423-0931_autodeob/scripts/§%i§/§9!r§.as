package §%i§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!r§
   {
       
      
      private var §1Y§:Boolean = false;
      
      private var §,x§:MovieClip;
      
      public function §9!r§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§,x§ = param1;
         this.§,x§.buttonMode = true;
         this.§,x§.addEventListener(MouseEvent.CLICK,this.§[!o§);
         this.selected = param2;
      }
      
      public function get §>R§() : DisplayObject
      {
         return this.§,x§;
      }
      
      public function dispose() : void
      {
         this.§,x§.removeEventListener(MouseEvent.CLICK,this.§[!o§);
         this.§,x§ = null;
      }
      
      private function §[!o§(param1:MouseEvent) : void
      {
         this.selected = !this.selected;
      }
      
      public function get selected() : Boolean
      {
         return this.§1Y§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§1Y§ = param1;
         this.§,x§.gotoAndStop(this.§1Y§.toString());
         this.§>R§.dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
