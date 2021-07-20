package §#,§
{
   import §!"'§.§0"Z§;
   import §,!Q§.§+!2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §]#"§ extends § !>§
   {
      
      public static const §1x§:int = 4;
       
      
      private var §]"K§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §8$'§:String;
      
      public function §]#"§(param1:XML, param2:§]$+§, param3:MovieClip = null)
      {
         this.§]"K§ = new Rectangle();
         super(param1,param2,param3);
         this.§]"K§.x = x;
         this.§]"K§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§]"K§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§]"K§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§]"K§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§]"K§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§]"K§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§]"K§.height = parseInt(_loc7_);
         }
         §1r§(§1x§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §0"Z§
      {
         var _loc3_:§0"Z§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§]"K§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§ "a§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function § "a§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§1x§,§3#o§[§1x§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ "a§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§8$'§)
         {
            this.setComponentVisualState(this.§8$'§);
            this.§8$'§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§8$'§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §=$>§(param1:Rectangle) : void
      {
         this.§]"K§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§]"K§.x,param1),this.§]"K§.x + this.§]"K§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§]"K§.y,param1),this.§]"K§.y + this.§]"K§.height);
            super.y = param1;
         }
      }
      
      public function §=I§() : Number
      {
         var _loc1_:Number = x - this.§]"K§.x;
         var _loc2_:Number = y - this.§]"K§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§]"K§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §!3§(param1:Number) : void
      {
         this.x = this.§]"K§.x + param1 * this.§]"K§.width;
         this.y = this.§]"K§.y + param1 * this.§]"K§.height;
      }
   }
}
