package §_-6C§
{
   import §_-MN§.§_-rR§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-wm§ extends §_-Mu§
   {
      
      public static const §_-02M§:int = 4;
       
      
      private var §_-H9§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §_-09X§:String;
      
      public function §_-wm§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         this.§_-H9§ = new Rectangle();
         super(param1,param2,param3);
         this.§_-H9§.x = x;
         this.§_-H9§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§_-H9§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§_-H9§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§_-H9§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§_-H9§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§_-H9§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§_-H9§.height = parseInt(_loc7_);
         }
         §_-Ay§(§_-02M§,param1.@Drag);
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
            mClip.startDrag(false,this.§_-H9§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-09K§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §_-09K§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-02M§,§_-4W§[§_-02M§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-09K§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§_-09X§)
         {
            this.setComponentVisualState(this.§_-09X§);
            this.§_-09X§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§_-09X§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §_-Ca§(param1:Rectangle) : void
      {
         this.§_-H9§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§_-H9§.x,param1),this.§_-H9§.x + this.§_-H9§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§_-H9§.y,param1),this.§_-H9§.y + this.§_-H9§.height);
            super.y = param1;
         }
      }
      
      public function §_-MS§() : Number
      {
         var _loc1_:Number = x - this.§_-H9§.x;
         var _loc2_:Number = y - this.§_-H9§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§_-H9§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §_-pq§(param1:Number) : void
      {
         this.x = this.§_-H9§.x + param1 * this.§_-H9§.width;
         this.y = this.§_-H9§.y + param1 * this.§_-H9§.height;
      }
   }
}
