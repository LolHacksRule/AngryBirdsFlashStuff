package § !u§
{
   import flash.events.Event;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §8_§ extends §0m§
   {
       
      
      public function §8_§()
      {
         super();
      }
      
      override public function onEnterGUI() : void
      {
         Mouse.cursor = MouseCursor.ARROW;
      }
      
      override public function onLeaveGUI() : void
      {
         Mouse.cursor = MouseCursor.HAND;
      }
      
      override public function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         Mouse.cursor = MouseCursor.HAND;
      }
      
      override public function onRemovedFromStage(param1:Event) : void
      {
         super.onRemovedFromStage(param1);
         Mouse.cursor = MouseCursor.ARROW;
      }
   }
}
