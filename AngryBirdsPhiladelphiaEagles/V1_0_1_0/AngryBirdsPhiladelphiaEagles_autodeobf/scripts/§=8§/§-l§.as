package §=8§
{
   import §'!N§.§>p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §-l§ extends dynamic
   {
      
      public static const §4i§:int = 4;
       
      
      private var §;!,§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §@t§:String;
      
      public function §-l§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         this.§;!,§ = new Rectangle();
         super(param1,param2,param3);
         this.§;!,§.x = x;
         this.§;!,§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§;!,§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§;!,§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§;!,§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§;!,§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§;!,§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§;!,§.height = parseInt(_loc7_);
         }
         §#D§(§4i§,param1.@Drag);
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
            mClip.startDrag(false,this.§;!,§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^Y§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §^Y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§4i§,§&h§[§4i§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§^Y§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§@t§)
         {
            this.setComponentVisualState(this.§@t§);
            this.§@t§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§@t§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §7!M§(param1:Rectangle) : void
      {
         this.§;!,§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§;!,§.x,param1),this.§;!,§.x + this.§;!,§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§;!,§.y,param1),this.§;!,§.y + this.§;!,§.height);
            super.y = param1;
         }
      }
      
      public function §6?§() : Number
      {
         var _loc1_:Number = x - this.§;!,§.x;
         var _loc2_:Number = y - this.§;!,§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§;!,§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §!!!§(param1:Number) : void
      {
         this.x = this.§;!,§.x + param1 * this.§;!,§.width;
         this.y = this.§;!,§.y + param1 * this.§;!,§.height;
      }
   }
}
