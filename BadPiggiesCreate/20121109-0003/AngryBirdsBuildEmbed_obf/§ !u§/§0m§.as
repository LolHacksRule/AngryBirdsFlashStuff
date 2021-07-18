package § !u§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §0m§ extends Sprite
   {
       
      
      public function §0m§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               if(_loc1_ || _loc2_)
               {
                  addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
               }
            }
         }
      }
      
      public function setIcon(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            removeChildren();
            if(_loc2_)
            {
               addChild(param1);
            }
         }
      }
      
      public function onEnterGUI() : void
      {
      }
      
      public function onLeaveGUI() : void
      {
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(parent)
            {
               if(!(_loc3_ && param1))
               {
                  addr42:
                  x = parent.mouseX;
                  if(_loc2_ || _loc3_)
                  {
                     y = parent.mouseY;
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(parent)
            {
               if(!_loc2_)
               {
                  x = parent.mouseX;
                  if(_loc3_)
                  {
                     y = parent.mouseY;
                  }
               }
            }
         }
      }
      
      public function onRemovedFromStage(param1:Event) : void
      {
      }
   }
}
