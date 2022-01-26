package §_-ES§
{
   import §_-9J§.§_-DA§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-u7§ extends §_-Ng§
   {
      
      public static const §_-e-§:int = 4;
       
      
      private var §_-Tt§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §_-sg§:String;
      
      public function §_-u7§(param1:XML, param2:§_-L8§, param3:MovieClip = null)
      {
         this.§_-Tt§ = new Rectangle();
         super(param1,param2,param3);
         this.§_-Tt§.x = x;
         this.§_-Tt§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§_-Tt§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§_-Tt§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§_-Tt§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§_-Tt§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§_-Tt§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§_-Tt§.height = parseInt(_loc7_);
         }
         §_-xm§(§_-e-§,param1.@Drag);
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
            mClip.startDrag(false,this.§_-Tt§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-LN§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §_-LN§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-e-§,§_-k-§[§_-e-§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-LN§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§_-sg§)
         {
            this.setComponentVisualState(this.§_-sg§);
            this.§_-sg§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§_-sg§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §_-zV§(param1:Rectangle) : void
      {
         this.§_-Tt§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§_-Tt§.x,param1),this.§_-Tt§.x + this.§_-Tt§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§_-Tt§.y,param1),this.§_-Tt§.y + this.§_-Tt§.height);
            super.y = param1;
         }
      }
      
      public function §_-TF§() : Number
      {
         var _loc1_:Number = x - this.§_-Tt§.x;
         var _loc2_:Number = y - this.§_-Tt§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§_-Tt§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §_-TK§(param1:Number) : void
      {
         this.x = this.§_-Tt§.x + param1 * this.§_-Tt§.width;
         this.y = this.§_-Tt§.y + param1 * this.§_-Tt§.height;
      }
   }
}
