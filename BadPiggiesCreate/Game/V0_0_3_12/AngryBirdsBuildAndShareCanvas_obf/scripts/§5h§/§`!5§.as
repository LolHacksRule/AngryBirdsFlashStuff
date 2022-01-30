package §5h§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §`!5§ extends Sprite
   {
       
      
      public function §`!5§()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§1?§);
      }
      
      public function update(param1:int) : void
      {
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function §1?§(param1:Event) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function onResize(param1:Event) : void
      {
      }
   }
}
