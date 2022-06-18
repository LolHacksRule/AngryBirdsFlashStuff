package § ""§
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §%#g§ extends EventDispatcher
   {
       
      
      protected var §&+§:MovieClip;
      
      protected var §4#c§:String;
      
      public function §%#g§(param1:MovieClip, param2:String)
      {
         super();
         this.§&+§ = param1;
         this.§&+§.buttonMode = true;
         this.§&+§.mouseChildren = false;
         this.§&+§.tabEnabled = false;
         this.§4#c§ = param2;
         this.§3k§();
      }
      
      protected function §3k§() : void
      {
         this.§&+§.addEventListener(MouseEvent.CLICK,this.§#!O§);
      }
      
      protected function §4#,§() : void
      {
         this.§&+§.removeEventListener(MouseEvent.CLICK,this.§#!O§);
      }
      
      protected function §#!O§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function §2!9§() : void
      {
         this.§&+§.gotoAndStop("Normal");
      }
      
      public function select() : void
      {
         this.§&+§.gotoAndStop("Selected");
      }
      
      public function get name() : String
      {
         return this.§4#c§;
      }
   }
}
