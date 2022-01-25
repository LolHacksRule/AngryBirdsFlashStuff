package §8!<§
{
   import §7!H§.§`f§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §^x§ extends §29§
   {
      
      public static const §`n§:int = 4;
       
      
      private var §^B§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §5!%§:String;
      
      public function §^x§(param1:XML, param2:§2W§, param3:MovieClip = null)
      {
         this.§^B§ = new Rectangle();
         super(param1,param2,param3);
         this.§^B§.x = x;
         this.§^B§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§^B§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§^B§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§^B§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§^B§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§^B§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§^B§.height = parseInt(_loc7_);
         }
         §7!M§(§`n§,param1.@Drag);
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
            mClip.startDrag(false,this.§^B§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<!3§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §<!3§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§`n§,§!;§[§`n§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<!3§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§5!%§)
         {
            this.setComponentVisualState(this.§5!%§);
            this.§5!%§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§5!%§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §continue§(param1:Rectangle) : void
      {
         this.§^B§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§^B§.x,param1),this.§^B§.x + this.§^B§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§^B§.y,param1),this.§^B§.y + this.§^B§.height);
            super.y = param1;
         }
      }
      
      public function §&l§() : Number
      {
         var _loc1_:Number = x - this.§^B§.x;
         var _loc2_:Number = y - this.§^B§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§^B§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §9g§(param1:Number) : void
      {
         this.x = this.§^B§.x + param1 * this.§^B§.width;
         this.y = this.§^B§.y + param1 * this.§^B§.height;
      }
   }
}
