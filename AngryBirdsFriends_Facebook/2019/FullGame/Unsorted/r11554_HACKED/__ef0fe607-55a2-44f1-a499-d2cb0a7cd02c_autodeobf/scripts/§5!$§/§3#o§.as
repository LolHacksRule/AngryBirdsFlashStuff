package §5!$§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3#o§
   {
       
      
      private var §2h§:Boolean = false;
      
      private var §&#J§:MovieClip;
      
      private var §"%§:Boolean;
      
      public function §3#o§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§&#J§ = param1;
         this.§&#J§.buttonMode = true;
         this.§&#J§.addEventListener(MouseEvent.CLICK,this.§8!0§);
         this.selected = param2;
         this.enabled = true;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§&#J§;
      }
      
      public function dispose() : void
      {
         this.§&#J§.removeEventListener(MouseEvent.CLICK,this.§8!0§);
         this.§&#J§ = null;
      }
      
      private function §8!0§(param1:MouseEvent) : void
      {
         if(this.§"%§)
         {
            this.displayObject.dispatchEvent(new Event(Event.SELECT));
            this.selected = !this.selected;
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§2h§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§2h§ = param1;
         if(this.§&#J§)
         {
            this.§&#J§.gotoAndStop(this.§2h§.toString());
         }
         this.displayObject.dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§"%§ = param1;
         if(this.§&#J§)
         {
            if(param1)
            {
               this.§&#J§.gotoAndStop(this.§2h§.toString());
               this.§&#J§.buttonMode = true;
            }
            else
            {
               this.§&#J§.gotoAndStop("disabled");
               this.§&#J§.buttonMode = false;
            }
         }
      }
   }
}
