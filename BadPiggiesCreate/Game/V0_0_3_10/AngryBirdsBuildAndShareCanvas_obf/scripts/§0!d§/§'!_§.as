package §0!d§
{
   import §<8§.§"h§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §'!_§ extends §8!r§
   {
      
      public static const §,"8§:int = 4;
       
      
      private var § x§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §<!-§:String;
      
      public function §'!_§(param1:XML, param2:§7!a§, param3:MovieClip = null)
      {
         this.§ x§ = new Rectangle();
         super(param1,param2,param3);
         this.§ x§.x = x;
         this.§ x§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§ x§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§ x§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§ x§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§ x§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§ x§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§ x§.height = parseInt(_loc7_);
         }
         §"a§(§,"8§,param1.@Drag);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
         switch(param1)
         {
            case LISTENER_EVENT_MOUSE_DOWN:
               this.startDrag();
               break;
            case LISTENER_EVENT_MOUSE_UP:
               this.stopDrag();
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         if(mClip.stage)
         {
            mClip.startDrag(false,this.§ x§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§8" §);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §8" §(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§,"8§,§#d§[§,"8§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§8" §);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§<!-§)
         {
            this.setComponentVisualState(this.§<!-§);
            this.§<!-§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§<!-§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §=>§(param1:Rectangle) : void
      {
         this.§ x§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§ x§.x,param1),this.§ x§.x + this.§ x§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§ x§.y,param1),this.§ x§.y + this.§ x§.height);
            super.y = param1;
         }
      }
      
      public function §?![§() : Number
      {
         var _loc1_:Number = x - this.§ x§.x;
         var _loc2_:Number = y - this.§ x§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§ x§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §?F§(param1:Number) : void
      {
         this.x = this.§ x§.x + param1 * this.§ x§.width;
         this.y = this.§ x§.y + param1 * this.§ x§.height;
      }
   }
}
