package §]!&§
{
   import §+!M§.§^<§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>p§ extends §^!g§
   {
      
      public static const §^!Q§:int = 4;
       
      
      private var § !O§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §0!d§:String;
      
      public function §>p§(param1:XML, param2:§5!5§, param3:MovieClip = null)
      {
         this.§ !O§ = new Rectangle();
         super(param1,param2,param3);
         this.§ !O§.x = x;
         this.§ !O§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§ !O§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§ !O§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§ !O§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§ !O§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§ !O§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§ !O§.height = parseInt(_loc7_);
         }
         § Q§(§^!Q§,param1.@Drag);
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
            mClip.startDrag(false,this.§ !O§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!,§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §%!,§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§^!Q§,§+G§[§^!Q§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§%!,§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§0!d§)
         {
            this.setComponentVisualState(this.§0!d§);
            this.§0!d§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§0!d§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §+-§(param1:Rectangle) : void
      {
         this.§ !O§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§ !O§.x,param1),this.§ !O§.x + this.§ !O§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§ !O§.y,param1),this.§ !O§.y + this.§ !O§.height);
            super.y = param1;
         }
      }
      
      public function §1!+§() : Number
      {
         var _loc1_:Number = x - this.§ !O§.x;
         var _loc2_:Number = y - this.§ !O§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§ !O§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §9$§(param1:Number) : void
      {
         this.x = this.§ !O§.x + param1 * this.§ !O§.width;
         this.y = this.§ !O§.y + param1 * this.§ !O§.height;
      }
   }
}
