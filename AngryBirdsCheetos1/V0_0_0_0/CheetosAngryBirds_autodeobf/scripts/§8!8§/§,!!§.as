package §8!8§
{
   import §@R§.§<d§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §,!!§ extends §+!M§
   {
      
      public static const §for§:int = 4;
       
      
      private var §^!P§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §<`§:String;
      
      public function §,!!§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         this.§^!P§ = new Rectangle();
         super(param1,param2,param3);
         this.§^!P§.x = x;
         this.§^!P§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§^!P§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§^!P§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§^!P§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§^!P§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§^!P§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§^!P§.height = parseInt(_loc7_);
         }
         §?^§(§for§,param1.@Drag);
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
            mClip.startDrag(false,this.§^!P§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§,p§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §,p§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§for§,§=a§[§for§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,p§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§<`§)
         {
            this.setComponentVisualState(this.§<`§);
            this.§<`§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§<`§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §&!&§(param1:Rectangle) : void
      {
         this.§^!P§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§^!P§.x,param1),this.§^!P§.x + this.§^!P§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§^!P§.y,param1),this.§^!P§.y + this.§^!P§.height);
            super.y = param1;
         }
      }
      
      public function §<a§() : Number
      {
         var _loc1_:Number = x - this.§^!P§.x;
         var _loc2_:Number = y - this.§^!P§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§^!P§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §'y§(param1:Number) : void
      {
         this.x = this.§^!P§.x + param1 * this.§^!P§.width;
         this.y = this.§^!P§.y + param1 * this.§^!P§.height;
      }
   }
}
