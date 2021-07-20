package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.events.UIInteractionEvent;
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
      
      public function UISliderRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         this.mConstraints = new Rectangle();
         super(param1,param2,param3);
         this.mConstraints.x = x;
         this.mConstraints.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.mConstraints.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.mConstraints.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.mConstraints.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.mConstraints.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.mConstraints.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.mConstraints.height = parseInt(_loc7_);
         }
         setUIEventListener(LISTENER_EVENT_DRAG,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : UIInteractionEvent
      {
         var _loc3_:UIInteractionEvent = super.listenerUIEventOccured(param1,param2);
         switch(param1)
         {
            case LISTENER_EVENT_MOUSE_DOWN:
               this.startDrag();
               break;
            case LISTENER_EVENT_MOUSE_UP:
               this.stopDrag();
         }
         return _loc3_;
      }
      
      private function startDrag(param1:Event = null) : void
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
      
      private function onMove(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_DRAG,mListenerEventNames[LISTENER_EVENT_DRAG]);
      }
      
      private function stopDrag(param1:Event = null) : void
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
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.mStateAfterDrag = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function setConstraints(param1:Rectangle) : void
      {
         this.mConstraints = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.mConstraints.x,param1),this.mConstraints.x + this.mConstraints.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.mConstraints.y,param1),this.mConstraints.y + this.mConstraints.height);
            super.y = param1;
         }
      }
      
      public function getPositionAsRatio() : Number
      {
         var _loc1_:Number = x - this.mConstraints.x;
         var _loc2_:Number = y - this.mConstraints.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.mConstraints.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function setPositionAsRatio(param1:Number) : void
      {
         this.x = this.mConstraints.x + param1 * this.mConstraints.width;
         this.y = this.mConstraints.y + param1 * this.mConstraints.height;
      }
   }
}
