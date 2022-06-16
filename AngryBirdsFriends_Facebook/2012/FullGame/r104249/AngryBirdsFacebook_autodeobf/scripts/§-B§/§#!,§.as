package §-B§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §#!,§
   {
       
      
      private var §0F§:Boolean = false;
      
      private var §@!h§:MovieClip;
      
      public function §#!,§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§@!h§ = param1;
         this.§@!h§.buttonMode = true;
         this.§@!h§.addEventListener(MouseEvent.CLICK,this.§`";§);
         this.selected = param2;
      }
      
      public function get §"!+§() : DisplayObject
      {
         return this.§@!h§;
      }
      
      public function dispose() : void
      {
         this.§@!h§.removeEventListener(MouseEvent.CLICK,this.§`";§);
         this.§@!h§ = null;
      }
      
      private function §`";§(param1:MouseEvent) : void
      {
         this.selected = !this.selected;
      }
      
      public function get selected() : Boolean
      {
         return this.§0F§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§0F§ = param1;
         this.§@!h§.gotoAndStop(this.§0F§.toString());
         this.§"!+§.dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
