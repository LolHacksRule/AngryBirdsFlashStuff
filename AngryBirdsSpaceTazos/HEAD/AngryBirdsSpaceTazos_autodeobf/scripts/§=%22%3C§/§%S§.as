package §="<§
{
   import §#R§.§%!S§;
   import §7!6§.§^l§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §%S§ extends §87§
   {
      
      public static const § ?§:int = 4;
       
      
      private var §^!C§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §^!U§:String;
      
      public function §%S§(param1:XML, param2:§,"$§, param3:MovieClip = null)
      {
         this.§^!C§ = new Rectangle();
         super(param1,param2,param3);
         this.§^!C§.x = x;
         this.§^!C§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§^!C§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§^!C§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§^!C§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§^!C§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§^!C§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§^!C§.height = parseInt(_loc7_);
         }
         §!!2§(§ ?§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%!S§
      {
         var _loc3_:§%!S§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§^!C§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<U§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §<U§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§ ?§,§8!3§[§ ?§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<U§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§^!U§)
         {
            this.setComponentVisualState(this.§^!U§);
            this.§^!U§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§^!U§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §="%§(param1:Rectangle) : void
      {
         this.§^!C§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§^!C§.x,param1),this.§^!C§.x + this.§^!C§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§^!C§.y,param1),this.§^!C§.y + this.§^!C§.height);
            super.y = param1;
         }
      }
      
      public function §6!1§() : Number
      {
         var _loc1_:Number = x - this.§^!C§.x;
         var _loc2_:Number = y - this.§^!C§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§^!C§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §^!J§(param1:Number) : void
      {
         this.x = this.§^!C§.x + param1 * this.§^!C§.width;
         this.y = this.§^!C§.y + param1 * this.§^!C§.height;
      }
   }
}
