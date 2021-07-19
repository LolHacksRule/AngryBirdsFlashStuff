package §[v§
{
   import §`W§.§<r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class § %§ extends §^P§
   {
      
      public static const § >§:int = 4;
       
      
      private var §4s§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §6!'§:String;
      
      public function § %§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         this.§4s§ = new Rectangle();
         super(param1,param2,param3);
         this.§4s§.x = x;
         this.§4s§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§4s§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§4s§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§4s§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§4s§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§4s§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§4s§.height = parseInt(_loc7_);
         }
         §`!E§(§ >§,param1.@Drag);
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
            mClip.startDrag(false,this.§4s§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§56§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §56§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§ >§,§>t§[§ >§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§56§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§6!'§)
         {
            this.setComponentVisualState(this.§6!'§);
            this.§6!'§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§6!'§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §<!&§(param1:Rectangle) : void
      {
         this.§4s§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§4s§.x,param1),this.§4s§.x + this.§4s§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§4s§.y,param1),this.§4s§.y + this.§4s§.height);
            super.y = param1;
         }
      }
      
      public function §?m§() : Number
      {
         var _loc1_:Number = x - this.§4s§.x;
         var _loc2_:Number = y - this.§4s§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§4s§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §1k§(param1:Number) : void
      {
         this.x = this.§4s§.x + param1 * this.§4s§.width;
         this.y = this.§4s§.y + param1 * this.§4s§.height;
      }
   }
}
