package §'p§
{
   import §'!A§.§9!!§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §`!w§ extends §="#§
   {
      
      public static const §'m§:int = 4;
       
      
      private var §5?§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §2!'§:String;
      
      public function §`!w§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         this.§5?§ = new Rectangle();
         super(param1,param2,param3);
         this.§5?§.x = x;
         this.§5?§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§5?§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§5?§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§5?§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§5?§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§5?§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§5?§.height = parseInt(_loc7_);
         }
         § "<§(§'m§,param1.@Drag);
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
            mClip.startDrag(false,this.§5?§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<!;§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §<!;§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'m§,§9!$§[§'m§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<!;§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§2!'§)
         {
            this.setComponentVisualState(this.§2!'§);
            this.§2!'§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§2!'§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §`a§(param1:Rectangle) : void
      {
         this.§5?§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§5?§.x,param1),this.§5?§.x + this.§5?§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§5?§.y,param1),this.§5?§.y + this.§5?§.height);
            super.y = param1;
         }
      }
      
      public function §#!l§() : Number
      {
         var _loc1_:Number = x - this.§5?§.x;
         var _loc2_:Number = y - this.§5?§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§5?§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §4<§(param1:Number) : void
      {
         this.x = this.§5?§.x + param1 * this.§5?§.width;
         this.y = this.§5?§.y + param1 * this.§5?§.height;
      }
   }
}
