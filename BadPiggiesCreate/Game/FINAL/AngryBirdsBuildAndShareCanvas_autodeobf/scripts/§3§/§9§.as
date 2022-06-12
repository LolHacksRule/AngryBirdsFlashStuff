package §3§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §9§ extends Sprite
   {
       
      
      public function §9§()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
      }
      
      public function update(param1:int) : void
      {
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function §?!N§(param1:Event) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function onResize(param1:Event) : void
      {
      }
   }
}
