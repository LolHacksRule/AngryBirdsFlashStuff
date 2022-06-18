package §2$;§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §&R§
   {
       
      
      private var §0!9§:Boolean = false;
      
      private var §69§:MovieClip;
      
      private var §?I§:Boolean;
      
      public function §&R§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§69§ = param1;
         this.§69§.buttonMode = true;
         this.§69§.addEventListener(MouseEvent.CLICK,this.§#!O§);
         this.selected = param2;
         this.enabled = true;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§69§;
      }
      
      public function dispose() : void
      {
         this.§69§.removeEventListener(MouseEvent.CLICK,this.§#!O§);
         this.§69§ = null;
      }
      
      private function §#!O§(param1:MouseEvent) : void
      {
         if(this.§?I§)
         {
            this.displayObject.dispatchEvent(new Event(Event.SELECT));
            this.selected = !this.selected;
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§0!9§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§0!9§ = param1;
         if(this.§69§)
         {
            this.§69§.gotoAndStop(this.§0!9§.toString());
         }
         this.displayObject.dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§?I§ = param1;
         if(this.§69§)
         {
            if(param1)
            {
               this.§69§.gotoAndStop(this.§0!9§.toString());
               this.§69§.buttonMode = true;
            }
            else
            {
               this.§69§.gotoAndStop("disabled");
               this.§69§.buttonMode = false;
            }
         }
      }
   }
}
