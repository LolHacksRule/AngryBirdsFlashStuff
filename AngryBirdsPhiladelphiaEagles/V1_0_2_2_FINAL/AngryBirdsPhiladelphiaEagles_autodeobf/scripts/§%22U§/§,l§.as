package §"U§
{
   import §6v§.§@V§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §,l§ extends §^'§
   {
      
      public static const §8u§:int = 4;
       
      
      private var §do§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §&=§:String;
      
      public function §,l§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         this.§do§ = new Rectangle();
         super(param1,param2,param3);
         this.§do§.x = x;
         this.§do§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§do§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§do§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§do§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§do§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§do§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§do§.height = parseInt(_loc7_);
         }
         §9A§(§8u§,param1.@Drag);
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
            mClip.startDrag(false,this.§do§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§#!P§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §#!P§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§8u§,§6R§[§8u§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§#!P§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§&=§)
         {
            this.setComponentVisualState(this.§&=§);
            this.§&=§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§&=§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §#Z§(param1:Rectangle) : void
      {
         this.§do§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§do§.x,param1),this.§do§.x + this.§do§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§do§.y,param1),this.§do§.y + this.§do§.height);
            super.y = param1;
         }
      }
      
      public function § -§() : Number
      {
         var _loc1_:Number = x - this.§do§.x;
         var _loc2_:Number = y - this.§do§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§do§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §@F§(param1:Number) : void
      {
         this.x = this.§do§.x + param1 * this.§do§.width;
         this.y = this.§do§.y + param1 * this.§do§.height;
      }
   }
}
