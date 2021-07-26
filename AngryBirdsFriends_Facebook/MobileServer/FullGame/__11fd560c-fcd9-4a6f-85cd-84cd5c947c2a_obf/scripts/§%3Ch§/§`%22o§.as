package §<h§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §`"o§
   {
       
      
      private var § !B§:Boolean = false;
      
      private var §]"j§:MovieClip;
      
      private var §]"&§:Boolean;
      
      public function §`"o§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§]"j§ = param1;
         this.§]"j§.buttonMode = true;
         this.§]"j§.addEventListener(MouseEvent.CLICK,this.§-!K§);
         this.selected = param2;
         this.enabled = true;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§]"j§;
      }
      
      public function dispose() : void
      {
         this.§]"j§.removeEventListener(MouseEvent.CLICK,this.§-!K§);
         this.§]"j§ = null;
      }
      
      private function §-!K§(param1:MouseEvent) : void
      {
         if(this.§]"&§)
         {
            this.displayObject.dispatchEvent(new Event(Event.SELECT));
            this.selected = !this.selected;
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§ !B§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§ !B§ = param1;
         if(this.§]"j§)
         {
            this.§]"j§.gotoAndStop(this.§ !B§.toString());
         }
         this.displayObject.dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§]"&§ = param1;
         if(this.§]"j§)
         {
            if(param1)
            {
               this.§]"j§.gotoAndStop(this.§ !B§.toString());
               this.§]"j§.buttonMode = true;
            }
            else
            {
               this.§]"j§.gotoAndStop("disabled");
               this.§]"j§.buttonMode = false;
            }
         }
      }
   }
}
