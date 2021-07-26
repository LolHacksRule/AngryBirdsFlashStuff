package § "L§
{
   import §^"3§.§ #&§;
   import §`§.§%#m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §[$A§ extends §1"r§
   {
      
      public static const §'_§:int = 4;
       
      
      private var §8!h§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §`#C§:String;
      
      public function §[$A§(param1:XML, param2:§23§, param3:MovieClip = null)
      {
         this.§8!h§ = new Rectangle();
         super(param1,param2,param3);
         this.§8!h§.x = x;
         this.§8!h§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§8!h§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§8!h§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§8!h§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§8!h§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§8!h§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§8!h§.height = parseInt(_loc7_);
         }
         §+"6§(§'_§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%#m§
      {
         var _loc3_:§%#m§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§8!h§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-!_§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §-!_§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§'_§,§6"1§[§'_§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§-!_§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§`#C§)
         {
            this.setComponentVisualState(this.§`#C§);
            this.§`#C§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§`#C§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §5U§(param1:Rectangle) : void
      {
         this.§8!h§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§8!h§.x,param1),this.§8!h§.x + this.§8!h§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§8!h§.y,param1),this.§8!h§.y + this.§8!h§.height);
            super.y = param1;
         }
      }
      
      public function §6P§() : Number
      {
         var _loc1_:Number = x - this.§8!h§.x;
         var _loc2_:Number = y - this.§8!h§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§8!h§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §+"h§(param1:Number) : void
      {
         this.x = this.§8!h§.x + param1 * this.§8!h§.width;
         this.y = this.§8!h§.y + param1 * this.§8!h§.height;
      }
   }
}
