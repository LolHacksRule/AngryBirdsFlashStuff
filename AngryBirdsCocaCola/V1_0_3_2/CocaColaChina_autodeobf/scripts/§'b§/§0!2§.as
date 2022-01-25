package §'b§
{
   import §6l§.§ l§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §0!2§ extends §0!D§
   {
      
      public static const §#§:int = 4;
       
      
      private var §6i§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §3!;§:String;
      
      public function §0!2§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         this.§6i§ = new Rectangle();
         super(param1,param2,param3);
         this.§6i§.x = x;
         this.§6i§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§6i§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§6i§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§6i§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§6i§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§6i§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§6i§.height = parseInt(_loc7_);
         }
         §^!F§(§#§,param1.@Drag);
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
            mClip.startDrag(false,this.§6i§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§11§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §11§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#§,§33§[§#§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§11§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§3!;§)
         {
            this.setComponentVisualState(this.§3!;§);
            this.§3!;§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§3!;§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §+M§(param1:Rectangle) : void
      {
         this.§6i§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§6i§.x,param1),this.§6i§.x + this.§6i§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§6i§.y,param1),this.§6i§.y + this.§6i§.height);
            super.y = param1;
         }
      }
      
      public function §>!@§() : Number
      {
         var _loc1_:Number = x - this.§6i§.x;
         var _loc2_:Number = y - this.§6i§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§6i§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §0S§(param1:Number) : void
      {
         this.x = this.§6i§.x + param1 * this.§6i§.width;
         this.y = this.§6i§.y + param1 * this.§6i§.height;
      }
   }
}
