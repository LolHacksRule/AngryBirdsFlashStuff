package §>G§
{
   import §"%§.§9j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §&!k§ extends §0Q§
   {
      
      public static const §[`§:int = 4;
       
      
      private var §'w§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §%[§:String;
      
      public function §&!k§(param1:XML, param2:§]f§, param3:MovieClip = null)
      {
         this.§'w§ = new Rectangle();
         super(param1,param2,param3);
         this.§'w§.x = x;
         this.§'w§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§'w§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§'w§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§'w§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§'w§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§'w§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§'w§.height = parseInt(_loc7_);
         }
         §58§(§[`§,param1.@Drag);
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
            mClip.startDrag(false,this.§'w§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>!V§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §>!V§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§[`§,§+g§[§[`§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§>!V§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§%[§)
         {
            this.setComponentVisualState(this.§%[§);
            this.§%[§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§%[§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §8!I§(param1:Rectangle) : void
      {
         this.§'w§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§'w§.x,param1),this.§'w§.x + this.§'w§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§'w§.y,param1),this.§'w§.y + this.§'w§.height);
            super.y = param1;
         }
      }
      
      public function §5!L§() : Number
      {
         var _loc1_:Number = x - this.§'w§.x;
         var _loc2_:Number = y - this.§'w§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§'w§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §0g§(param1:Number) : void
      {
         this.x = this.§'w§.x + param1 * this.§'w§.width;
         this.y = this.§'w§.y + param1 * this.§'w§.height;
      }
   }
}
