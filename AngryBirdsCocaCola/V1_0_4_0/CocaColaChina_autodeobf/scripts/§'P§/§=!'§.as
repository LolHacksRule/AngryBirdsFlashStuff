package §'P§
{
   import §7]§.§8N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §=!'§ extends §,!"§
   {
      
      public static const §2V§:int = 4;
       
      
      private var §%G§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §>!&§:String;
      
      public function §=!'§(param1:XML, param2:§`;§, param3:MovieClip = null)
      {
         this.§%G§ = new Rectangle();
         super(param1,param2,param3);
         this.§%G§.x = x;
         this.§%G§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§%G§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§%G§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§%G§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§%G§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§%G§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§%G§.height = parseInt(_loc7_);
         }
         §=!&§(§2V§,param1.@Drag);
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
            mClip.startDrag(false,this.§%G§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6"§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §6"§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2V§,§"!4§[§2V§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6"§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§>!&§)
         {
            this.setComponentVisualState(this.§>!&§);
            this.§>!&§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§>!&§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §@!J§(param1:Rectangle) : void
      {
         this.§%G§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§%G§.x,param1),this.§%G§.x + this.§%G§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§%G§.y,param1),this.§%G§.y + this.§%G§.height);
            super.y = param1;
         }
      }
      
      public function § P§() : Number
      {
         var _loc1_:Number = x - this.§%G§.x;
         var _loc2_:Number = y - this.§%G§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§%G§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §=j§(param1:Number) : void
      {
         this.x = this.§%G§.x + param1 * this.§%G§.width;
         this.y = this.§%G§.y + param1 * this.§%G§.height;
      }
   }
}
