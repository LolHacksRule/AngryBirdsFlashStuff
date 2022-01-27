package §=Z§
{
   import §8!h§.§%"z§;
   import §=!4§.§8"U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §5"&§ extends §;g§
   {
      
      public static const §;"y§:int = 4;
       
      
      private var §=!r§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § !-§:String;
      
      public function §5"&§(param1:XML, param2:§@!8§, param3:MovieClip = null)
      {
         this.§=!r§ = new Rectangle();
         super(param1,param2,param3);
         this.§=!r§.x = x;
         this.§=!r§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§=!r§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§=!r§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§=!r§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§=!r§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§=!r§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§=!r§.height = parseInt(_loc7_);
         }
         §="B§(§;"y§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"U§
      {
         var _loc3_:§8"U§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§=!r§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§ !5§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function § !5§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§;"y§,§'!y§[§;"y§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ !5§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§ !-§)
         {
            this.setComponentVisualState(this.§ !-§);
            this.§ !-§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§ !-§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §#"C§(param1:Rectangle) : void
      {
         this.§=!r§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§=!r§.x,param1),this.§=!r§.x + this.§=!r§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§=!r§.y,param1),this.§=!r§.y + this.§=!r§.height);
            super.y = param1;
         }
      }
      
      public function §1"^§() : Number
      {
         var _loc1_:Number = x - this.§=!r§.x;
         var _loc2_:Number = y - this.§=!r§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§=!r§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §["C§(param1:Number) : void
      {
         this.x = this.§=!r§.x + param1 * this.§=!r§.width;
         this.y = this.§=!r§.y + param1 * this.§=!r§.height;
      }
   }
}
