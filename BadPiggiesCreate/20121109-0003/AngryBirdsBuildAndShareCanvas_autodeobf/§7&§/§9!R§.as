package §7&§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §9!R§ extends Sprite
   {
       
      
      public function §9!R§()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
      }
      
      public function update(param1:int) : void
      {
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function §8!_§(param1:Event) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function onResize(param1:Event) : void
      {
      }
   }
}
