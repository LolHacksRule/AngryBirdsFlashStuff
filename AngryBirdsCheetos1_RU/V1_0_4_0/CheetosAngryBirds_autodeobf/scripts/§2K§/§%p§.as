package §2K§
{
   import §6!K§.§3l§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §%p§ extends § 3§
   {
      
      public static const §4]§:int = 4;
       
      
      private var §4!a§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §;e§:String;
      
      public function §%p§(param1:XML, param2:§,!@§, param3:MovieClip = null)
      {
         this.§4!a§ = new Rectangle();
         super(param1,param2,param3);
         this.§4!a§.x = x;
         this.§4!a§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§4!a§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§4!a§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§4!a§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§4!a§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§4!a§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§4!a§.height = parseInt(_loc7_);
         }
         §]s§(§4]§,param1.@Drag);
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
            mClip.startDrag(false,this.§4!a§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<>§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §<>§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§4]§,§1!+§[§4]§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<>§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§;e§)
         {
            this.setComponentVisualState(this.§;e§);
            this.§;e§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§;e§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §>!L§(param1:Rectangle) : void
      {
         this.§4!a§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§4!a§.x,param1),this.§4!a§.x + this.§4!a§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§4!a§.y,param1),this.§4!a§.y + this.§4!a§.height);
            super.y = param1;
         }
      }
      
      public function §5J§() : Number
      {
         var _loc1_:Number = x - this.§4!a§.x;
         var _loc2_:Number = y - this.§4!a§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§4!a§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §8w§(param1:Number) : void
      {
         this.x = this.§4!a§.x + param1 * this.§4!a§.width;
         this.y = this.§4!a§.y + param1 * this.§4!a§.height;
      }
   }
}
