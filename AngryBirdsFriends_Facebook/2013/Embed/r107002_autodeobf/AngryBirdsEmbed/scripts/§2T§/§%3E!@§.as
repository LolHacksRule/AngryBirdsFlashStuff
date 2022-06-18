package §2T§
{
   import §7J§.§=U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>!@§ extends §2H§
   {
      
      public static const §+"§:int = 4;
       
      
      private var §"H§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §5P§:String;
      
      public function §>!@§(param1:XML, param2:§&M§, param3:MovieClip = null)
      {
         this.§"H§ = new Rectangle();
         super(param1,param2,param3);
         this.§"H§.x = x;
         this.§"H§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§"H§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§"H§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§"H§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§"H§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§"H§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§"H§.height = parseInt(_loc7_);
         }
         §4j§(§+"§,param1.@Drag);
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
            mClip.startDrag(false,this.§"H§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§#C§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §#C§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§+"§,§>!,§[§+"§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§#C§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§5P§)
         {
            this.setComponentVisualState(this.§5P§);
            this.§5P§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§5P§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §^!M§(param1:Rectangle) : void
      {
         this.§"H§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§"H§.x,param1),this.§"H§.x + this.§"H§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§"H§.y,param1),this.§"H§.y + this.§"H§.height);
            super.y = param1;
         }
      }
      
      public function §7!$§() : Number
      {
         var _loc1_:Number = x - this.§"H§.x;
         var _loc2_:Number = y - this.§"H§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§"H§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §,!K§(param1:Number) : void
      {
         this.x = this.§"H§.x + param1 * this.§"H§.width;
         this.y = this.§"H§.y + param1 * this.§"H§.height;
      }
   }
}
