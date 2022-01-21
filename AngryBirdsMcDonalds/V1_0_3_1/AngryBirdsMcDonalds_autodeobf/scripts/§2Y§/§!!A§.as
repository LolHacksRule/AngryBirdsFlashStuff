package §2y§
{
   import §3!R§.§,=§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §!!A§ extends §@!a§
   {
      
      public static const §;v§:int = 4;
       
      
      private var §8!Z§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §?!j§:String;
      
      public function §!!A§(param1:XML, param2:§]`§, param3:MovieClip = null)
      {
         this.§8!Z§ = new Rectangle();
         super(param1,param2,param3);
         this.§8!Z§.x = x;
         this.§8!Z§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§8!Z§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§8!Z§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§8!Z§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§8!Z§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§8!Z§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§8!Z§.height = parseInt(_loc7_);
         }
         §@q§(§;v§,param1.@Drag);
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
            mClip.startDrag(false,this.§8!Z§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§,k§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §,k§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§;v§,§"r§[§;v§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,k§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§?!j§)
         {
            this.setComponentVisualState(this.§?!j§);
            this.§?!j§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§?!j§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §8!5§(param1:Rectangle) : void
      {
         this.§8!Z§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§8!Z§.x,param1),this.§8!Z§.x + this.§8!Z§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§8!Z§.y,param1),this.§8!Z§.y + this.§8!Z§.height);
            super.y = param1;
         }
      }
      
      public function § 7§() : Number
      {
         var _loc1_:Number = x - this.§8!Z§.x;
         var _loc2_:Number = y - this.§8!Z§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§8!Z§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §5!j§(param1:Number) : void
      {
         this.x = this.§8!Z§.x + param1 * this.§8!Z§.width;
         this.y = this.§8!Z§.y + param1 * this.§8!Z§.height;
      }
   }
}
