package §[!F§
{
   import §&<§.§@j§;
   import §8,§.§8!h§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §,!A§ extends §^!g§
   {
      
      public static const §-0§:int = 4;
       
      
      private var §'!x§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §^!_§:String;
      
      public function §,!A§(param1:XML, param2:§3j§, param3:MovieClip = null)
      {
         this.§'!x§ = new Rectangle();
         super(param1,param2,param3);
         this.§'!x§.x = x;
         this.§'!x§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§'!x§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§'!x§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§'!x§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§'!x§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§'!x§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§'!x§.height = parseInt(_loc7_);
         }
         §0!0§(§-0§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8!h§
      {
         var _loc3_:§8!h§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§'!x§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!g§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §%!g§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§-0§,§!!@§[§-0§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§%!g§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§^!_§)
         {
            this.setComponentVisualState(this.§^!_§);
            this.§^!_§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§^!_§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §'!I§(param1:Rectangle) : void
      {
         this.§'!x§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§'!x§.x,param1),this.§'!x§.x + this.§'!x§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§'!x§.y,param1),this.§'!x§.y + this.§'!x§.height);
            super.y = param1;
         }
      }
      
      public function §#!f§() : Number
      {
         var _loc1_:Number = x - this.§'!x§.x;
         var _loc2_:Number = y - this.§'!x§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§'!x§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §]!%§(param1:Number) : void
      {
         this.x = this.§'!x§.x + param1 * this.§'!x§.width;
         this.y = this.§'!x§.y + param1 * this.§'!x§.height;
      }
   }
}
