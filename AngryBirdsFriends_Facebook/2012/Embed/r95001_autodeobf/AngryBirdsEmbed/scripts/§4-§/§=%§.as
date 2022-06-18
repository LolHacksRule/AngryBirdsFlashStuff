package §4-§
{
   import §0u§.§"`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §=%§ extends §%+§
   {
      
      public static const §2`§:int = 4;
       
      
      private var §=r§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §`i§:String;
      
      public function §=%§(param1:XML, param2:§'J§, param3:MovieClip = null)
      {
         this.§=r§ = new Rectangle();
         super(param1,param2,param3);
         this.§=r§.x = x;
         this.§=r§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§=r§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§=r§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§=r§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§=r§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§=r§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§=r§.height = parseInt(_loc7_);
         }
         §?Y§(§2`§,param1.@Drag);
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
            mClip.startDrag(false,this.§=r§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>6§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §>6§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2`§,§7!G§[§2`§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§>6§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§`i§)
         {
            this.setComponentVisualState(this.§`i§);
            this.§`i§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§`i§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §!!-§(param1:Rectangle) : void
      {
         this.§=r§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§=r§.x,param1),this.§=r§.x + this.§=r§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§=r§.y,param1),this.§=r§.y + this.§=r§.height);
            super.y = param1;
         }
      }
      
      public function §2G§() : Number
      {
         var _loc1_:Number = x - this.§=r§.x;
         var _loc2_:Number = y - this.§=r§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§=r§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §+U§(param1:Number) : void
      {
         this.x = this.§=r§.x + param1 * this.§=r§.width;
         this.y = this.§=r§.y + param1 * this.§=r§.height;
      }
   }
}
