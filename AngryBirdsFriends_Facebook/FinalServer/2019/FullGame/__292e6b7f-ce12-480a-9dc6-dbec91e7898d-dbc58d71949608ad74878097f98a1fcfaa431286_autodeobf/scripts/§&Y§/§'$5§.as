package §&Y§
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §'$5§ extends EventDispatcher
   {
       
      
      protected var §2"L§:MovieClip;
      
      protected var §5!n§:String;
      
      public function §'$5§(param1:MovieClip, param2:String)
      {
         super();
         this.§2"L§ = param1;
         this.§2"L§.buttonMode = true;
         this.§2"L§.mouseChildren = false;
         this.§2"L§.tabEnabled = false;
         this.§5!n§ = param2;
         this.§,!K§();
      }
      
      protected function §,!K§() : void
      {
         this.§2"L§.addEventListener(MouseEvent.CLICK,this.§0!&§);
      }
      
      protected function §=$@§() : void
      {
         this.§2"L§.removeEventListener(MouseEvent.CLICK,this.§0!&§);
      }
      
      protected function §0!&§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function §]6§() : void
      {
         this.§2"L§.gotoAndStop("Normal");
      }
      
      public function select() : void
      {
         this.§2"L§.gotoAndStop("Selected");
      }
      
      public function get name() : String
      {
         return this.§5!n§;
      }
   }
}
