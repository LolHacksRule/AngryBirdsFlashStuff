package §0"$§
{
   import §,L§.§%J§;
   import §-!;§.§>!B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §!"0§ extends §;§
   {
      
      public static const §?"+§:int = 4;
       
      
      private var §7!T§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § z§:String;
      
      public function §!"0§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         this.§7!T§ = new Rectangle();
         super(param1,param2,param3);
         this.§7!T§.x = x;
         this.§7!T§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§7!T§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§7!T§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§7!T§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§7!T§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§7!T§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§7!T§.height = parseInt(_loc7_);
         }
         §9E§(§?"+§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         var _loc3_:§>!B§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§7!T§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!3§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §?!3§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§?"+§,§8!=§[§?"+§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?!3§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§ z§)
         {
            this.setComponentVisualState(this.§ z§);
            this.§ z§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§ z§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §+k§(param1:Rectangle) : void
      {
         this.§7!T§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§7!T§.x,param1),this.§7!T§.x + this.§7!T§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§7!T§.y,param1),this.§7!T§.y + this.§7!T§.height);
            super.y = param1;
         }
      }
      
      public function §&x§() : Number
      {
         var _loc1_:Number = x - this.§7!T§.x;
         var _loc2_:Number = y - this.§7!T§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§7!T§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §0!p§(param1:Number) : void
      {
         this.x = this.§7!T§.x + param1 * this.§7!T§.width;
         this.y = this.§7!T§.y + param1 * this.§7!T§.height;
      }
   }
}
