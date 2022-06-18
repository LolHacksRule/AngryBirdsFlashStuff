package §-!'§
{
   import §!^§.§+!5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>U§ extends §;f§
   {
      
      public static const §53§:int = 4;
       
      
      private var §,T§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §,$§:String;
      
      public function §>U§(param1:XML, param2:§in §, param3:MovieClip = null)
      {
         this.§,T§ = new Rectangle();
         super(param1,param2,param3);
         this.§,T§.x = x;
         this.§,T§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§,T§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§,T§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§,T§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§,T§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§,T§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§,T§.height = parseInt(_loc7_);
         }
         §5^§(§53§,param1.@Drag);
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
            mClip.startDrag(false,this.§,T§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-E§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §-E§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§53§,§+p§[§53§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§-E§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§,$§)
         {
            this.setComponentVisualState(this.§,$§);
            this.§,$§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§,$§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §?F§(param1:Rectangle) : void
      {
         this.§,T§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§,T§.x,param1),this.§,T§.x + this.§,T§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§,T§.y,param1),this.§,T§.y + this.§,T§.height);
            super.y = param1;
         }
      }
      
      public function §!!%§() : Number
      {
         var _loc1_:Number = x - this.§,T§.x;
         var _loc2_:Number = y - this.§,T§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§,T§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §>i§(param1:Number) : void
      {
         this.x = this.§,T§.x + param1 * this.§,T§.width;
         this.y = this.§,T§.y + param1 * this.§,T§.height;
      }
   }
}
