package §6"r§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!0§
   {
       
      
      private var §9#g§:Boolean = false;
      
      private var §1#i§:MovieClip;
      
      private var §9O§:Boolean;
      
      public function §9!0§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§1#i§ = param1;
         this.§1#i§.buttonMode = true;
         this.§1#i§.addEventListener(MouseEvent.CLICK,this.§^%§);
         this.selected = param2;
         this.enabled = true;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§1#i§;
      }
      
      public function dispose() : void
      {
         this.§1#i§.removeEventListener(MouseEvent.CLICK,this.§^%§);
         this.§1#i§ = null;
      }
      
      private function §^%§(param1:MouseEvent) : void
      {
         if(this.§9O§)
         {
            this.displayObject.dispatchEvent(new Event(Event.SELECT));
            this.selected = !this.selected;
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§9#g§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§9#g§ = param1;
         if(this.§1#i§)
         {
            this.§1#i§.gotoAndStop(this.§9#g§.toString());
         }
         this.displayObject.dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§9O§ = param1;
         if(this.§1#i§)
         {
            if(param1)
            {
               this.§1#i§.gotoAndStop(this.§9#g§.toString());
               this.§1#i§.buttonMode = true;
            }
            else
            {
               this.§1#i§.gotoAndStop("disabled");
               this.§1#i§.buttonMode = false;
            }
         }
      }
   }
}
