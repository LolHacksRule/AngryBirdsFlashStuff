package com.rovio.ui.Components
{
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class UISliderRovio extends UIButtonRovio
   {
      
      public static const LISTENER_EVENT_DRAG:int = 4;
       
      
      private var mConstraints:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var mStateAfterDrag:String;
      
      public function UISliderRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         this.mConstraints = new Rectangle();
         super(data,parentContainer,clip);
         this.mConstraints.x = x;
         this.mConstraints.y = y;
         var constraintX:String = data.@constraint_x.toString();
         var constraintY:String = data.@constraint_y.toString();
         var constraintWidth:String = data.@constraint_width.toString();
         var constraintHeight:String = data.@constraint_height.toString();
         if(!isNaN(parseInt(constraintX)))
         {
            this.mConstraints.x = parseInt(constraintX);
         }
         if(!isNaN(parseInt(constraintY)))
         {
            this.mConstraints.y = parseInt(constraintY);
         }
         if(constraintWidth == "parent")
         {
            this.mConstraints.width = parentContainer.width - mClip.width;
         }
         else if(!isNaN(parseInt(constraintWidth)))
         {
            this.mConstraints.width = parseInt(constraintWidth);
         }
         if(constraintHeight == "parent")
         {
            this.mConstraints.height = parentContainer.height - mClip.height;
         }
         else if(!isNaN(parseInt(constraintHeight)))
         {
            this.mConstraints.height = parseInt(constraintHeight);
         }
         setUIEventListener(LISTENER_EVENT_DRAG,data.@Drag);
      }
      
      override public function listenerUIEventOccured(eventIndex:int, eventName:String) : UIInteractionEvent
      {
         var event:UIInteractionEvent = super.listenerUIEventOccured(eventIndex,eventName);
         switch(eventIndex)
         {
            case LISTENER_EVENT_MOUSE_DOWN:
               this.startDrag();
               break;
            case LISTENER_EVENT_MOUSE_UP:
               this.stopDrag();
         }
         return event;
      }
      
      private function startDrag(e:Event = null) : void
      {
         if(mClip.stage)
         {
            mClip.startDrag(false,this.mConstraints);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMove);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function onMove(e:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_DRAG,mListenerEventNames[LISTENER_EVENT_DRAG]);
      }
      
      private function stopDrag(e:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMove);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.mStateAfterDrag)
         {
            this.setComponentVisualState(this.mStateAfterDrag);
            this.mStateAfterDrag = null;
         }
      }
      
      override public function setComponentVisualState(newState:String) : void
      {
         if(this.mDragging)
         {
            this.mStateAfterDrag = newState;
            return;
         }
         super.setComponentVisualState(newState);
      }
      
      public function setConstraints(constraints:Rectangle) : void
      {
         this.mConstraints = constraints;
      }
      
      override public function set x(x:Number) : void
      {
         if(x != super.x)
         {
            x = Math.min(Math.max(this.mConstraints.x,x),this.mConstraints.x + this.mConstraints.width);
            super.x = x;
         }
      }
      
      override public function set y(y:Number) : void
      {
         if(y != super.y)
         {
            y = Math.min(Math.max(this.mConstraints.y,y),this.mConstraints.y + this.mConstraints.height);
            super.y = y;
         }
      }
      
      public function getPositionAsRatio() : Number
      {
         var distX:Number = x - this.mConstraints.x;
         var distY:Number = y - this.mConstraints.y;
         var dist:Number = Math.sqrt(distX * distX + distY * distY);
         var maxDist:Number = this.mConstraints.size.length;
         return dist / maxDist;
      }
      
      public function setPositionAsRatio(ratio:Number) : void
      {
         this.x = this.mConstraints.x + ratio * this.mConstraints.width;
         this.y = this.mConstraints.y + ratio * this.mConstraints.height;
      }
   }
}
