package §4!e§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6Y§
   {
       
      
      private var §'!K§:Boolean = false;
      
      private var §"d§:MovieClip;
      
      public function §6Y§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§"d§ = param1;
         this.§"d§.buttonMode = true;
         this.§"d§.addEventListener(MouseEvent.CLICK,this.§5V§);
         this.selected = param2;
      }
      
      public function get §[%§() : DisplayObject
      {
         return this.§"d§;
      }
      
      public function dispose() : void
      {
         this.§"d§.removeEventListener(MouseEvent.CLICK,this.§5V§);
         this.§"d§ = null;
      }
      
      private function §5V§(param1:MouseEvent) : void
      {
         this.selected = !this.selected;
      }
      
      public function get selected() : Boolean
      {
         return this.§'!K§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§'!K§ = param1;
         this.§"d§.gotoAndStop(this.§'!K§.toString());
         this.§[%§.dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
