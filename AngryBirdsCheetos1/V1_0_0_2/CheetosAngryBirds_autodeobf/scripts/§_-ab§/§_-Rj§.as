package §_-ab§
{
   import §_-A§.§_-YT§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-Rj§ extends §_-q4§
   {
      
      public static const §_-2Y§:int = 4;
       
      
      private var §_-kq§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §_-nj§:String;
      
      public function §_-Rj§(param1:XML, param2:§_-IP§, param3:MovieClip = null)
      {
         this.§_-kq§ = new Rectangle();
         super(param1,param2,param3);
         this.§_-kq§.x = x;
         this.§_-kq§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§_-kq§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§_-kq§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§_-kq§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§_-kq§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§_-kq§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§_-kq§.height = parseInt(_loc7_);
         }
         §_-vq§(§_-2Y§,param1.@Drag);
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
            mClip.startDrag(false,this.§_-kq§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-Ou§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §_-Ou§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-2Y§,§_-Hn§[§_-2Y§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-Ou§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§_-nj§)
         {
            this.setComponentVisualState(this.§_-nj§);
            this.§_-nj§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§_-nj§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §_-Y8§(param1:Rectangle) : void
      {
         this.§_-kq§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§_-kq§.x,param1),this.§_-kq§.x + this.§_-kq§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§_-kq§.y,param1),this.§_-kq§.y + this.§_-kq§.height);
            super.y = param1;
         }
      }
      
      public function §_-mE§() : Number
      {
         var _loc1_:Number = x - this.§_-kq§.x;
         var _loc2_:Number = y - this.§_-kq§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§_-kq§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §_-rb§(param1:Number) : void
      {
         this.x = this.§_-kq§.x + param1 * this.§_-kq§.width;
         this.y = this.§_-kq§.y + param1 * this.§_-kq§.height;
      }
   }
}
