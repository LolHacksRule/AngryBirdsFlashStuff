package §#,§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §5$$§
   {
       
      
      private var §-T§:Boolean = false;
      
      private var §!"#§:MovieClip;
      
      private var §=#9§:Boolean;
      
      public function §5$$§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§!"#§ = param1;
         this.§!"#§.buttonMode = true;
         this.§!"#§.addEventListener(MouseEvent.CLICK,this.§?"V§);
         this.selected = param2;
         this.enabled = true;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§!"#§;
      }
      
      public function dispose() : void
      {
         this.§!"#§.removeEventListener(MouseEvent.CLICK,this.§?"V§);
         this.§!"#§ = null;
      }
      
      private function §?"V§(param1:MouseEvent) : void
      {
         if(this.§=#9§)
         {
            this.displayObject.dispatchEvent(new Event(Event.SELECT));
            this.selected = !this.selected;
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§-T§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§-T§ = param1;
         if(this.§!"#§)
         {
            this.§!"#§.gotoAndStop(this.§-T§.toString());
         }
         this.displayObject.dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§=#9§ = param1;
         if(this.§!"#§)
         {
            if(param1)
            {
               this.§!"#§.gotoAndStop(this.§-T§.toString());
               this.§!"#§.buttonMode = true;
            }
            else
            {
               this.§!"#§.gotoAndStop("disabled");
               this.§!"#§.buttonMode = false;
            }
         }
      }
   }
}
