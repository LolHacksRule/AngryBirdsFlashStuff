package §8!+§
{
   import § !u§.§9y§;
   import § !u§.§`]§;
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §8!X§ extends §"!X§
   {
       
      
      private var §^!e§:§9y§;
      
      public function §8!X§(param1:§"U§)
      {
         super(param1);
         § do§(new §`]§());
         §8e§.addEventListener(MouseEvent.MOUSE_UP,this.§>!1§);
      }
      
      override public function deActivate() : void
      {
         §%!3§.deleteSelectedObjectsFromLevel();
         super.deActivate();
      }
      
      override protected function startAreaSelection() : void
      {
      }
      
      public function §%a§(param1:§9y§) : void
      {
         if(this.§^!e§)
         {
            §%!3§.deleteSelectedObjectsFromLevel();
         }
         this.§^!e§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:Object = §%!3§.addItem(this.§^!e§.mName);
         if(_loc2_)
         {
            §;;§(§;5§.§9!6§(_loc2_),false);
            this.§^!e§.§;?§();
            §6=§();
         }
         else
         {
            §%!3§.setTool(§"!X§);
         }
      }
      
      private function §>!1§(param1:Event = null) : void
      {
         this.stopObjectDrag();
         §%!3§.calculateCurrentScoreLimits();
      }
      
      override public function onMouseDown() : void
      {
      }
      
      override public function stopObjectDrag() : void
      {
         var _loc1_:Vector.<§;5§> = null;
         if(isDragging())
         {
            super.stopObjectDrag();
            _loc1_ = getSelectedObjects();
            if(this.§^!e§)
            {
               this.§^!e§.§#!q§();
               this.§^!e§ = null;
            }
            clearSelection();
            §%!3§.setTool(§"!X§);
            §%!3§.getCurrentTool().setSelection(_loc1_);
         }
      }
   }
}
