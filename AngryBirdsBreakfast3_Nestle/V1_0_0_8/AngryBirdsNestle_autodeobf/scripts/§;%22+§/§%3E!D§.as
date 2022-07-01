package §;"+§
{
   import §<" §.§]!g§;
   import §>P§.§-U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>!D§ extends §9!M§
   {
      
      public static const §;!-§:int = 4;
       
      
      private var §0!U§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §]b§:String;
      
      public function §>!D§(param1:XML, param2:§^!i§, param3:MovieClip = null)
      {
         this.§0!U§ = new Rectangle();
         super(param1,param2,param3);
         this.§0!U§.x = x;
         this.§0!U§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§0!U§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§0!U§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§0!U§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§0!U§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§0!U§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§0!U§.height = parseInt(_loc7_);
         }
         §[!"§(§;!-§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]!g§
      {
         var _loc3_:§]!g§ = super.listenerUIEventOccured(param1,param2);
         switch(param1)
         {
            case LISTENER_EVENT_MOUSE_DOWN:
               this.startDrag();
               break;
            case LISTENER_EVENT_MOUSE_UP:
               this.stopDrag();
         }
         return _loc3_;
      }
      
      private function startDrag(param1:Event = null) : void
      {
         if(mClip.stage)
         {
            mClip.startDrag(false,this.§0!U§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§,A§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §,A§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§;!-§,§>b§[§;!-§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,A§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§]b§)
         {
            this.setComponentVisualState(this.§]b§);
            this.§]b§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§]b§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §6!'§(param1:Rectangle) : void
      {
         this.§0!U§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§0!U§.x,param1),this.§0!U§.x + this.§0!U§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§0!U§.y,param1),this.§0!U§.y + this.§0!U§.height);
            super.y = param1;
         }
      }
      
      public function §6W§() : Number
      {
         var _loc1_:Number = x - this.§0!U§.x;
         var _loc2_:Number = y - this.§0!U§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§0!U§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §74§(param1:Number) : void
      {
         this.x = this.§0!U§.x + param1 * this.§0!U§.width;
         this.y = this.§0!U§.y + param1 * this.§0!U§.height;
      }
   }
}
