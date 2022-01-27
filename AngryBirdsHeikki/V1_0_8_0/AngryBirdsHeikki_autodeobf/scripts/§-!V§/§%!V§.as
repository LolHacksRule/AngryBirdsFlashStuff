package §-!V§
{
   import §;!0§.§"[§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §%!V§ extends §'J§
   {
      
      public static const §,n§:int = 4;
       
      
      private var §6u§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §<!0§:String;
      
      public function §%!V§(param1:XML, param2:§@§, param3:MovieClip = null)
      {
         this.§6u§ = new Rectangle();
         super(param1,param2,param3);
         this.§6u§.x = x;
         this.§6u§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§6u§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§6u§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§6u§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§6u§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§6u§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§6u§.height = parseInt(_loc7_);
         }
         §1]§(§,n§,param1.@Drag);
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
            mClip.startDrag(false,this.§6u§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§!p§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §!p§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§,n§,§0!A§[§,n§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§!p§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§<!0§)
         {
            this.setComponentVisualState(this.§<!0§);
            this.§<!0§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§<!0§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §-A§(param1:Rectangle) : void
      {
         this.§6u§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§6u§.x,param1),this.§6u§.x + this.§6u§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§6u§.y,param1),this.§6u§.y + this.§6u§.height);
            super.y = param1;
         }
      }
      
      public function §7@§() : Number
      {
         var _loc1_:Number = x - this.§6u§.x;
         var _loc2_:Number = y - this.§6u§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§6u§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §%N§(param1:Number) : void
      {
         this.x = this.§6u§.x + param1 * this.§6u§.width;
         this.y = this.§6u§.y + param1 * this.§6u§.height;
      }
   }
}
