package §""d§
{
   import §#!k§.§4!4§;
   import §4##§.§7!Y§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §%#1§ extends §2"8§
   {
      
      public static const §!!H§:int = 4;
       
      
      private var §'W§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § "g§:String;
      
      public function §%#1§(param1:XML, param2:§,m§, param3:MovieClip = null)
      {
         this.§'W§ = new Rectangle();
         super(param1,param2,param3);
         this.§'W§.x = x;
         this.§'W§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§'W§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§'W§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§'W§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§'W§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§'W§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§'W§.height = parseInt(_loc7_);
         }
         §#"]§(§!!H§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §4!4§
      {
         var _loc3_:§4!4§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§'W§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§`![§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §`![§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§!!H§,§]A§[§!!H§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§`![§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§ "g§)
         {
            this.setComponentVisualState(this.§ "g§);
            this.§ "g§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§ "g§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §>!A§(param1:Rectangle) : void
      {
         this.§'W§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§'W§.x,param1),this.§'W§.x + this.§'W§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§'W§.y,param1),this.§'W§.y + this.§'W§.height);
            super.y = param1;
         }
      }
      
      public function §]v§() : Number
      {
         var _loc1_:Number = x - this.§'W§.x;
         var _loc2_:Number = y - this.§'W§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§'W§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §`"T§(param1:Number) : void
      {
         this.x = this.§'W§.x + param1 * this.§'W§.width;
         this.y = this.§'W§.y + param1 * this.§'W§.height;
      }
   }
}
