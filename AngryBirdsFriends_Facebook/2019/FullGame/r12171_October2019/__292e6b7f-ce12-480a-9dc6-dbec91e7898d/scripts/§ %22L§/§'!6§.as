package § "L§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §'!6§
   {
       
      
      private var §9"G§:Boolean = false;
      
      private var §1j§:MovieClip;
      
      private var §>#L§:Boolean;
      
      public function §'!6§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§1j§ = param1;
         this.§1j§.buttonMode = true;
         this.§1j§.addEventListener(MouseEvent.CLICK,this.§0!&§);
         this.selected = param2;
         this.enabled = true;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§1j§;
      }
      
      public function dispose() : void
      {
         this.§1j§.removeEventListener(MouseEvent.CLICK,this.§0!&§);
         this.§1j§ = null;
      }
      
      private function §0!&§(param1:MouseEvent) : void
      {
         if(this.§>#L§)
         {
            this.displayObject.dispatchEvent(new Event(Event.SELECT));
            this.selected = !this.selected;
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§9"G§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§9"G§ = param1;
         if(this.§1j§)
         {
            this.§1j§.gotoAndStop(this.§9"G§.toString());
         }
         this.displayObject.dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§>#L§ = param1;
         if(this.§1j§)
         {
            if(param1)
            {
               this.§1j§.gotoAndStop(this.§9"G§.toString());
               this.§1j§.buttonMode = true;
            }
            else
            {
               this.§1j§.gotoAndStop("disabled");
               this.§1j§.buttonMode = false;
            }
         }
      }
   }
}
