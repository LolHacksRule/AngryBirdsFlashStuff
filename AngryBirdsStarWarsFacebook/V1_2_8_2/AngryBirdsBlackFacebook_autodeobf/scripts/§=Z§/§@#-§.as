package §=Z§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §@#-§
   {
       
      
      private var §5W§:Boolean = false;
      
      private var §&;§:MovieClip;
      
      public function §@#-§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§&;§ = param1;
         this.§&;§.buttonMode = true;
         this.§&;§.addEventListener(MouseEvent.CLICK,this.§3"%§);
         this.§ !t§ = param2;
      }
      
      public function get §>#3§() : DisplayObject
      {
         return this.§&;§;
      }
      
      public function dispose() : void
      {
         this.§&;§.removeEventListener(MouseEvent.CLICK,this.§3"%§);
         this.§&;§ = null;
      }
      
      private function §3"%§(param1:MouseEvent) : void
      {
         this.§ !t§ = !this.§ !t§;
      }
      
      public function get § !t§() : Boolean
      {
         return this.§5W§;
      }
      
      public function set § !t§(param1:Boolean) : void
      {
         this.§5W§ = param1;
         this.§&;§.gotoAndStop(this.§5W§.toString());
         this.§>#3§.dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
