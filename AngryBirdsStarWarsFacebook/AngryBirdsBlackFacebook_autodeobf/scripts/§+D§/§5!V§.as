package §+D§
{
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §5!V§ extends §^"m§
   {
      
      public static const §>G§:int = 4;
       
      
      private var §;M§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §8#J§:String;
      
      public function §5!V§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         this.§;M§ = new Rectangle();
         super(param1,param2,param3);
         this.§;M§.x = x;
         this.§;M§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§;M§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§;M§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§;M§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§;M§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§;M§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§;M§.height = parseInt(_loc7_);
         }
         § #A§(§>G§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         var _loc3_:§6#'§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§;M§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§=#!§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §=#!§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§>G§,§ !_§[§>G§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§=#!§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§8#J§)
         {
            this.setComponentVisualState(this.§8#J§);
            this.§8#J§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§8#J§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §9#0§(param1:Rectangle) : void
      {
         this.§;M§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§;M§.x,param1),this.§;M§.x + this.§;M§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§;M§.y,param1),this.§;M§.y + this.§;M§.height);
            super.y = param1;
         }
      }
      
      public function §-+§() : Number
      {
         var _loc1_:Number = x - this.§;M§.x;
         var _loc2_:Number = y - this.§;M§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§;M§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §7!r§(param1:Number) : void
      {
         this.x = this.§;M§.x + param1 * this.§;M§.width;
         this.y = this.§;M§.y + param1 * this.§;M§.height;
      }
   }
}
