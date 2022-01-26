package §%S§
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import §in§.§9c§;
   
   public class §-!<§ extends §%X§
   {
      
      public static const §'Y§:int = 4;
       
      
      private var §7w§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §@I§:String;
      
      public function §-!<§(param1:XML, param2:§,1§, param3:MovieClip = null)
      {
         this.§7w§ = new Rectangle();
         super(param1,param2,param3);
         this.§7w§.x = x;
         this.§7w§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§7w§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§7w§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§7w§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§7w§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§7w§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§7w§.height = parseInt(_loc7_);
         }
         §]o§(§'Y§,param1.@Drag);
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
            mClip.startDrag(false,this.§7w§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6!B§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §6!B§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'Y§,§]^§[§'Y§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6!B§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§@I§)
         {
            this.setComponentVisualState(this.§@I§);
            this.§@I§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§@I§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §[A§(param1:Rectangle) : void
      {
         this.§7w§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§7w§.x,param1),this.§7w§.x + this.§7w§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§7w§.y,param1),this.§7w§.y + this.§7w§.height);
            super.y = param1;
         }
      }
      
      public function §,!&§() : Number
      {
         var _loc1_:Number = x - this.§7w§.x;
         var _loc2_:Number = y - this.§7w§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§7w§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §!R§(param1:Number) : void
      {
         this.x = this.§7w§.x + param1 * this.§7w§.width;
         this.y = this.§7w§.y + param1 * this.§7w§.height;
      }
   }
}
