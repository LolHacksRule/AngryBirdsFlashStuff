package §%#A§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § W§
   {
       
      
      private var §>#]§:Boolean = false;
      
      private var §!!r§:MovieClip;
      
      private var §[#i§:Boolean;
      
      public function § W§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§!!r§ = param1;
         this.§!!r§.buttonMode = true;
         this.§!!r§.addEventListener(MouseEvent.CLICK,this.§+"u§);
         this.selected = param2;
         this.enabled = true;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§!!r§;
      }
      
      public function dispose() : void
      {
         this.§!!r§.removeEventListener(MouseEvent.CLICK,this.§+"u§);
         this.§!!r§ = null;
      }
      
      private function §+"u§(param1:MouseEvent) : void
      {
         if(this.§[#i§)
         {
            this.displayObject.dispatchEvent(new Event(Event.SELECT));
            this.selected = !this.selected;
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§>#]§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§>#]§ = param1;
         if(this.§!!r§)
         {
            this.§!!r§.gotoAndStop(this.§>#]§.toString());
         }
         this.displayObject.dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§[#i§ = param1;
         if(this.§!!r§)
         {
            if(param1)
            {
               this.§!!r§.gotoAndStop(this.§>#]§.toString());
               this.§!!r§.buttonMode = true;
            }
            else
            {
               this.§!!r§.gotoAndStop("disabled");
               this.§!!r§.buttonMode = false;
            }
         }
      }
   }
}
