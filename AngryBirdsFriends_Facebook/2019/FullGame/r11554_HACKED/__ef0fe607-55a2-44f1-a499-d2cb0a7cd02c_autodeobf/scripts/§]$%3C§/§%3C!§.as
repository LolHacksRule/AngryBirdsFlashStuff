package §]$<§
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §<!§ extends EventDispatcher
   {
       
      
      protected var §-!?§:MovieClip;
      
      protected var §%!>§:String;
      
      public function §<!§(param1:MovieClip, param2:String)
      {
         super();
         this.§-!?§ = param1;
         this.§-!?§.buttonMode = true;
         this.§-!?§.mouseChildren = false;
         this.§-!?§.tabEnabled = false;
         this.§%!>§ = param2;
         this.§<T§();
      }
      
      protected function §<T§() : void
      {
         this.§-!?§.addEventListener(MouseEvent.CLICK,this.§8!0§);
      }
      
      protected function §&$,§() : void
      {
         this.§-!?§.removeEventListener(MouseEvent.CLICK,this.§8!0§);
      }
      
      protected function §8!0§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function §]#h§() : void
      {
         this.§-!?§.gotoAndStop("Normal");
      }
      
      public function select() : void
      {
         this.§-!?§.gotoAndStop("Selected");
      }
      
      public function get name() : String
      {
         return this.§%!>§;
      }
   }
}
