package §!i§
{
   import §4!t§.§>r§;
   import §<!#§.§""§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §8W§ extends §3!A§
   {
      
      public static const §]U§:int = 4;
       
      
      private var §!!p§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § ,§:String;
      
      public function §8W§(param1:XML, param2:§1s§, param3:MovieClip = null)
      {
         this.§!!p§ = new Rectangle();
         super(param1,param2,param3);
         this.§!!p§.x = x;
         this.§!!p§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§!!p§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§!!p§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§!!p§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§!!p§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§!!p§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§!!p§.height = parseInt(_loc7_);
         }
         §^7§(§]U§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §""§
      {
         var _loc3_:§""§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§!!p§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§=W§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §=W§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§]U§,§'!Q§[§]U§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§=W§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§ ,§)
         {
            this.setComponentVisualState(this.§ ,§);
            this.§ ,§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§ ,§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §4"B§(param1:Rectangle) : void
      {
         this.§!!p§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§!!p§.x,param1),this.§!!p§.x + this.§!!p§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§!!p§.y,param1),this.§!!p§.y + this.§!!p§.height);
            super.y = param1;
         }
      }
      
      public function §"!p§() : Number
      {
         var _loc1_:Number = x - this.§!!p§.x;
         var _loc2_:Number = y - this.§!!p§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§!!p§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §<C§(param1:Number) : void
      {
         this.x = this.§!!p§.x + param1 * this.§!!p§.width;
         this.y = this.§!!p§.y + param1 * this.§!!p§.height;
      }
   }
}
