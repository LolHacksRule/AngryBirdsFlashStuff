package §;#l§
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §]"6§ extends EventDispatcher
   {
       
      
      protected var §8#q§:MovieClip;
      
      protected var §="u§:String;
      
      public function §]"6§(param1:MovieClip, param2:String)
      {
         super();
         this.§8#q§ = param1;
         this.§8#q§.buttonMode = true;
         this.§8#q§.mouseChildren = false;
         this.§8#q§.tabEnabled = false;
         this.§="u§ = param2;
         this.§0!;§();
      }
      
      protected function §0!;§() : void
      {
         this.§8#q§.addEventListener(MouseEvent.CLICK,this.§?"V§);
      }
      
      protected function §;!4§() : void
      {
         this.§8#q§.removeEventListener(MouseEvent.CLICK,this.§?"V§);
      }
      
      protected function §?"V§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function §throw§() : void
      {
         this.§8#q§.gotoAndStop("Normal");
      }
      
      public function select() : void
      {
         this.§8#q§.gotoAndStop("Selected");
      }
      
      public function get name() : String
      {
         return this.§="u§;
      }
   }
}
