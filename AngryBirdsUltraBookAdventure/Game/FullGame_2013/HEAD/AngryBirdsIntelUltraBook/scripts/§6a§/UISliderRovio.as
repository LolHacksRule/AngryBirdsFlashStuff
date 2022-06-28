package §6a§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class UISliderRovio extends UIButtonRovio
   {
      
      public static const §>4§:int = 4;
       
      
      private var §>J§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §[R§:String;
      
      public function UISliderRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         this.§>J§ = new Rectangle();
         super(param1,param2,param3);
         this.§>J§.x = x;
         this.§>J§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§>J§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§>J§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§>J§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§>J§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§>J§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§>J§.height = parseInt(_loc7_);
         }
         §[!5§(§>4§,param1.@Drag);
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
            mClip.startDrag(false,this.§>J§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6f§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §6f§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§>4§,§]r§[§>4§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6f§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§[R§)
         {
            this.setComponentVisualState(this.§[R§);
            this.§[R§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§[R§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §4!Q§(param1:Rectangle) : void
      {
         this.§>J§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§>J§.x,param1),this.§>J§.x + this.§>J§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§>J§.y,param1),this.§>J§.y + this.§>J§.height);
            super.y = param1;
         }
      }
      
      public function §%K§() : Number
      {
         var _loc1_:Number = x - this.§>J§.x;
         var _loc2_:Number = y - this.§>J§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§>J§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §^!!§(param1:Number) : void
      {
         this.x = this.§>J§.x + param1 * this.§>J§.width;
         this.y = this.§>J§.y + param1 * this.§>J§.height;
      }
   }
}
