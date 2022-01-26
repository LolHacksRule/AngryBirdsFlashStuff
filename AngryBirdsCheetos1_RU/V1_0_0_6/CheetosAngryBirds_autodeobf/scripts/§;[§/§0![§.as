package §;[§
{
   import §'!N§.§71§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §0![§ extends §7!F§
   {
      
      public static const §8q§:int = 4;
       
      
      private var §;c§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §#!N§:String;
      
      public function §0![§(param1:XML, param2:§>!^§, param3:MovieClip = null)
      {
         this.§;c§ = new Rectangle();
         super(param1,param2,param3);
         this.§;c§.x = x;
         this.§;c§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§;c§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§;c§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§;c§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§;c§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§;c§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§;c§.height = parseInt(_loc7_);
         }
         §=!`§(§8q§,param1.@Drag);
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
            mClip.startDrag(false,this.§;c§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^$§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §^$§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§8q§,§&!A§[§8q§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§^$§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§#!N§)
         {
            this.setComponentVisualState(this.§#!N§);
            this.§#!N§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§#!N§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §@!U§(param1:Rectangle) : void
      {
         this.§;c§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§;c§.x,param1),this.§;c§.x + this.§;c§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§;c§.y,param1),this.§;c§.y + this.§;c§.height);
            super.y = param1;
         }
      }
      
      public function §@K§() : Number
      {
         var _loc1_:Number = x - this.§;c§.x;
         var _loc2_:Number = y - this.§;c§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§;c§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §&#§(param1:Number) : void
      {
         this.x = this.§;c§.x + param1 * this.§;c§.width;
         this.y = this.§;c§.y + param1 * this.§;c§.height;
      }
   }
}
