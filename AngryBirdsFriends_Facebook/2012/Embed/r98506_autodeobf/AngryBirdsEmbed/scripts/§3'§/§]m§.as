package §3'§
{
   import §+n§.§3P§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §]m§ extends §5I§
   {
      
      public static const §2!9§:int = 4;
       
      
      private var §'7§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §8q§:String;
      
      public function §]m§(param1:XML, param2:§8I§, param3:MovieClip = null)
      {
         this.§'7§ = new Rectangle();
         super(param1,param2,param3);
         this.§'7§.x = x;
         this.§'7§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§'7§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§'7§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§'7§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§'7§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§'7§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§'7§.height = parseInt(_loc7_);
         }
         §4`§(§2!9§,param1.@Drag);
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
            mClip.startDrag(false,this.§'7§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§`%§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §`%§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2!9§,§1+§[§2!9§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§`%§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§8q§)
         {
            this.setComponentVisualState(this.§8q§);
            this.§8q§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§8q§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §=J§(param1:Rectangle) : void
      {
         this.§'7§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§'7§.x,param1),this.§'7§.x + this.§'7§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§'7§.y,param1),this.§'7§.y + this.§'7§.height);
            super.y = param1;
         }
      }
      
      public function §3z§() : Number
      {
         var _loc1_:Number = x - this.§'7§.x;
         var _loc2_:Number = y - this.§'7§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§'7§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §]D§(param1:Number) : void
      {
         this.x = this.§'7§.x + param1 * this.§'7§.width;
         this.y = this.§'7§.y + param1 * this.§'7§.height;
      }
   }
}
