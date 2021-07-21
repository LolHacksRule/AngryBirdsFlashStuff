package § !u§
{
   import flash.events.Event;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §8_§ extends §0m§
   {
       
      
      public function §8_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function onEnterGUI() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            Mouse.cursor = MouseCursor.ARROW;
         }
      }
      
      override public function onLeaveGUI() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            Mouse.cursor = MouseCursor.HAND;
         }
      }
      
      override public function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.onAddedToStage(param1);
            if(!(_loc2_ && _loc2_))
            {
               Mouse.cursor = MouseCursor.HAND;
            }
         }
      }
      
      override public function onRemovedFromStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.onRemovedFromStage(param1);
            if(_loc3_)
            {
               addr29:
               Mouse.cursor = MouseCursor.ARROW;
            }
            return;
         }
         §§goto(addr29);
      }
   }
}
