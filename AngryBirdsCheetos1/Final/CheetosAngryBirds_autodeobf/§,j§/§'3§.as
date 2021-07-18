package §,j§
{
   import §1§.§&!3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §'3§ extends §0!@§
   {
      
      public static const §"!X§:int = 4;
       
      
      private var §#b§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §+5§:String;
      
      public function §'3§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         this.§#b§ = new Rectangle();
         super(param1,param2,param3);
         this.§#b§.x = x;
         this.§#b§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§#b§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§#b§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§#b§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§#b§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§#b§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§#b§.height = parseInt(_loc7_);
         }
         §2!4§(§"!X§,param1.@Drag);
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
            mClip.startDrag(false,this.§#b§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§7!3§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §7!3§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§"!X§,§2!;§[§"!X§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§7!3§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§+5§)
         {
            this.setComponentVisualState(this.§+5§);
            this.§+5§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§+5§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §#@§(param1:Rectangle) : void
      {
         this.§#b§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§#b§.x,param1),this.§#b§.x + this.§#b§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§#b§.y,param1),this.§#b§.y + this.§#b§.height);
            super.y = param1;
         }
      }
      
      public function §?!!§() : Number
      {
         var _loc1_:Number = x - this.§#b§.x;
         var _loc2_:Number = y - this.§#b§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§#b§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §4s§(param1:Number) : void
      {
         this.x = this.§#b§.x + param1 * this.§#b§.width;
         this.y = this.§#b§.y + param1 * this.§#b§.height;
      }
   }
}
