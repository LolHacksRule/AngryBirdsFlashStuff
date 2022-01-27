package §""d§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3E§
   {
       
      
      private var §2!p§:Boolean = false;
      
      private var §<!K§:MovieClip;
      
      public function §3E§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§<!K§ = param1;
         this.§<!K§.buttonMode = true;
         this.§<!K§.addEventListener(MouseEvent.CLICK,this.§#";§);
         this.§""P§ = param2;
      }
      
      public function get §^1§() : DisplayObject
      {
         return this.§<!K§;
      }
      
      public function dispose() : void
      {
         this.§<!K§.removeEventListener(MouseEvent.CLICK,this.§#";§);
         this.§<!K§ = null;
      }
      
      private function §#";§(param1:MouseEvent) : void
      {
         this.§""P§ = !this.§""P§;
      }
      
      public function get §""P§() : Boolean
      {
         return this.§2!p§;
      }
      
      public function set §""P§(param1:Boolean) : void
      {
         this.§2!p§ = param1;
         this.§<!K§.gotoAndStop(this.§2!p§.toString());
         this.§^1§.dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
