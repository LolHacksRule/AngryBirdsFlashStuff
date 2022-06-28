package §class§
{
   import §-!F§.§`!&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>[§ extends §?q§
   {
      
      public static const §;g§:int = 4;
       
      
      private var §3-§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §[E§:String;
      
      public function §>[§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         this.§3-§ = new Rectangle();
         super(param1,param2,param3);
         this.§3-§.x = x;
         this.§3-§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§3-§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§3-§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§3-§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§3-§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§3-§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§3-§.height = parseInt(_loc7_);
         }
         §7w§(§;g§,param1.@Drag);
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
            mClip.startDrag(false,this.§3-§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§9T§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §9T§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§;g§,§4F§[§;g§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§9T§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§[E§)
         {
            this.setComponentVisualState(this.§[E§);
            this.§[E§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§[E§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §&K§(param1:Rectangle) : void
      {
         this.§3-§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§3-§.x,param1),this.§3-§.x + this.§3-§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§3-§.y,param1),this.§3-§.y + this.§3-§.height);
            super.y = param1;
         }
      }
      
      public function §^!+§() : Number
      {
         var _loc1_:Number = x - this.§3-§.x;
         var _loc2_:Number = y - this.§3-§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§3-§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §4!5§(param1:Number) : void
      {
         this.x = this.§3-§.x + param1 * this.§3-§.width;
         this.y = this.§3-§.y + param1 * this.§3-§.height;
      }
   }
}
