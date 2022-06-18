package §+">§
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §1"0§ extends EventDispatcher
   {
       
      
      protected var §1!'§:MovieClip;
      
      protected var §%#-§:String;
      
      public function §1"0§(param1:MovieClip, param2:String)
      {
         super();
         this.§1!'§ = param1;
         this.§1!'§.buttonMode = true;
         this.§1!'§.mouseChildren = false;
         this.§1!'§.tabEnabled = false;
         this.§%#-§ = param2;
         this.§2!%§();
      }
      
      protected function §2!%§() : void
      {
         this.§1!'§.addEventListener(MouseEvent.CLICK,this.§+"u§);
      }
      
      protected function §9!Z§() : void
      {
         this.§1!'§.removeEventListener(MouseEvent.CLICK,this.§+"u§);
      }
      
      protected function §+"u§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function §"!L§() : void
      {
         this.§1!'§.gotoAndStop("Normal");
      }
      
      public function select() : void
      {
         this.§1!'§.gotoAndStop("Selected");
      }
      
      public function get name() : String
      {
         return this.§%#-§;
      }
   }
}
