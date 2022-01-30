package §4Y§
{
   import §!R§.§-!T§;
   import §&!I§.§9!C§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §+!R§ extends § `§
   {
      
      public static const §;%§:int = 4;
       
      
      private var §^j§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § !]§:String;
      
      public function §+!R§(param1:XML, param2:§%n§, param3:MovieClip = null)
      {
         this.§^j§ = new Rectangle();
         super(param1,param2,param3);
         this.§^j§.x = x;
         this.§^j§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§^j§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§^j§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§^j§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§^j§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§^j§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§^j§.height = parseInt(_loc7_);
         }
         §0!U§(§;%§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §9!C§
      {
         var _loc3_:§9!C§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§^j§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^!y§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §^!y§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§;%§,§"!X§[§;%§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§^!y§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§ !]§)
         {
            this.setComponentVisualState(this.§ !]§);
            this.§ !]§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§ !]§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §[l§(param1:Rectangle) : void
      {
         this.§^j§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§^j§.x,param1),this.§^j§.x + this.§^j§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§^j§.y,param1),this.§^j§.y + this.§^j§.height);
            super.y = param1;
         }
      }
      
      public function §use §() : Number
      {
         var _loc1_:Number = x - this.§^j§.x;
         var _loc2_:Number = y - this.§^j§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§^j§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §?4§(param1:Number) : void
      {
         this.x = this.§^j§.x + param1 * this.§^j§.width;
         this.y = this.§^j§.y + param1 * this.§^j§.height;
      }
   }
}
