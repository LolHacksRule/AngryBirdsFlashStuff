package §2y§
{
   import §@!&§.§-0§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §4!n§ extends §[!i§
   {
      
      public static const §2!M§:int = 4;
       
      
      private var §^!g§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §?P§:String;
      
      public function §4!n§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         this.§^!g§ = new Rectangle();
         super(param1,param2,param3);
         this.§^!g§.x = x;
         this.§^!g§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§^!g§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§^!g§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§^!g§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§^!g§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§^!g§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§^!g§.height = parseInt(_loc7_);
         }
         §,9§(§2!M§,param1.@Drag);
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
            mClip.startDrag(false,this.§^!g§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§]n§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §]n§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2!M§,§%0§[§2!M§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§]n§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§?P§)
         {
            this.setComponentVisualState(this.§?P§);
            this.§?P§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§?P§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §>!5§(param1:Rectangle) : void
      {
         this.§^!g§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§^!g§.x,param1),this.§^!g§.x + this.§^!g§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§^!g§.y,param1),this.§^!g§.y + this.§^!g§.height);
            super.y = param1;
         }
      }
      
      public function §0[§() : Number
      {
         var _loc1_:Number = x - this.§^!g§.x;
         var _loc2_:Number = y - this.§^!g§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§^!g§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §^Z§(param1:Number) : void
      {
         this.x = this.§^!g§.x + param1 * this.§^!g§.width;
         this.y = this.§^!g§.y + param1 * this.§^!g§.height;
      }
   }
}
