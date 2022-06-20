package §"",§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §`W§
   {
       
      
      private var §;K§:Boolean = false;
      
      private var §<[§:MovieClip;
      
      public function §`W§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§<[§ = param1;
         this.§<[§.buttonMode = true;
         this.§<[§.addEventListener(MouseEvent.CLICK,this.§-!w§);
         this.selected = param2;
      }
      
      public function get §3=§() : DisplayObject
      {
         return this.§<[§;
      }
      
      public function dispose() : void
      {
         this.§<[§.removeEventListener(MouseEvent.CLICK,this.§-!w§);
         this.§<[§ = null;
      }
      
      private function §-!w§(param1:MouseEvent) : void
      {
         this.selected = !this.selected;
      }
      
      public function get selected() : Boolean
      {
         return this.§;K§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§;K§ = param1;
         this.§<[§.gotoAndStop(this.§;K§.toString());
         this.§3=§.dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
