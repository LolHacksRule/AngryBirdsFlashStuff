package §-" §
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §if § extends Sprite
   {
       
      
      public function §if §()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§49§);
      }
      
      public function update(param1:int) : void
      {
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function §49§(param1:Event) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function onResize(param1:Event) : void
      {
      }
   }
}
