package §%i§
{
   import §1!t§.§!!G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>!y§ extends §7"0§
   {
      
      public static const §"N§:int = 4;
       
      
      private var §2!v§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § !u§:String;
      
      public function §>!y§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         this.§2!v§ = new Rectangle();
         super(param1,param2,param3);
         this.§2!v§.x = x;
         this.§2!v§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§2!v§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§2!v§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§2!v§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§2!v§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§2!v§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§2!v§.height = parseInt(_loc7_);
         }
         §[o§(§"N§,param1.@Drag);
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
            mClip.startDrag(false,this.§2!v§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-T§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §-T§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§"N§,§=!U§[§"N§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§-T§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§ !u§)
         {
            this.setComponentVisualState(this.§ !u§);
            this.§ !u§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§ !u§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §<"4§(param1:Rectangle) : void
      {
         this.§2!v§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§2!v§.x,param1),this.§2!v§.x + this.§2!v§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§2!v§.y,param1),this.§2!v§.y + this.§2!v§.height);
            super.y = param1;
         }
      }
      
      public function §?!n§() : Number
      {
         var _loc1_:Number = x - this.§2!v§.x;
         var _loc2_:Number = y - this.§2!v§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§2!v§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §8[§(param1:Number) : void
      {
         this.x = this.§2!v§.x + param1 * this.§2!v§.width;
         this.y = this.§2!v§.y + param1 * this.§2!v§.height;
      }
   }
}
