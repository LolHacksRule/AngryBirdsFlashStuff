package §3!!§
{
   import §>!L§.§?!d§;
   import §@f§.§4d§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §?!C§ extends §?v§
   {
      
      public static const §4!i§:int = 4;
       
      
      private var §"!E§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §]!S§:String;
      
      public function §?!C§(param1:XML, param2:§5" §, param3:MovieClip = null)
      {
         this.§"!E§ = new Rectangle();
         super(param1,param2,param3);
         this.§"!E§.x = x;
         this.§"!E§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§"!E§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§"!E§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§"!E§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§"!E§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§"!E§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§"!E§.height = parseInt(_loc7_);
         }
         §8y§(§4!i§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!d§
      {
         var _loc3_:§?!d§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§"!E§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<!K§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §<!K§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§4!i§,§=;§[§4!i§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<!K§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§]!S§)
         {
            this.setComponentVisualState(this.§]!S§);
            this.§]!S§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§]!S§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §%!b§(param1:Rectangle) : void
      {
         this.§"!E§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§"!E§.x,param1),this.§"!E§.x + this.§"!E§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§"!E§.y,param1),this.§"!E§.y + this.§"!E§.height);
            super.y = param1;
         }
      }
      
      public function §=j§() : Number
      {
         var _loc1_:Number = x - this.§"!E§.x;
         var _loc2_:Number = y - this.§"!E§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§"!E§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §0M§(param1:Number) : void
      {
         this.x = this.§"!E§.x + param1 * this.§"!E§.width;
         this.y = this.§"!E§.y + param1 * this.§"!E§.height;
      }
   }
}
