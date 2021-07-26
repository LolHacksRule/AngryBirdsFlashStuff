package §<h§
{
   import §3"I§.§ E§;
   import §3#T§.§,#[§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §[!0§ extends §>"0§
   {
      
      public static const §!#<§:int = 4;
       
      
      private var §3#Q§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §4?§:String;
      
      public function §[!0§(param1:XML, param2:§[#K§, param3:MovieClip = null)
      {
         this.§3#Q§ = new Rectangle();
         super(param1,param2,param3);
         this.§3#Q§.x = x;
         this.§3#Q§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§3#Q§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§3#Q§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§3#Q§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§3#Q§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§3#Q§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§3#Q§.height = parseInt(_loc7_);
         }
         §<!4§(§!#<§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : § E§
      {
         var _loc3_:§ E§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§3#Q§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§1!z§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §1!z§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§!#<§,§]"E§[§!#<§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§1!z§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§4?§)
         {
            this.setComponentVisualState(this.§4?§);
            this.§4?§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§4?§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §]#[§(param1:Rectangle) : void
      {
         this.§3#Q§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§3#Q§.x,param1),this.§3#Q§.x + this.§3#Q§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§3#Q§.y,param1),this.§3#Q§.y + this.§3#Q§.height);
            super.y = param1;
         }
      }
      
      public function §5C§() : Number
      {
         var _loc1_:Number = x - this.§3#Q§.x;
         var _loc2_:Number = y - this.§3#Q§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§3#Q§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §?$0§(param1:Number) : void
      {
         this.x = this.§3#Q§.x + param1 * this.§3#Q§.width;
         this.y = this.§3#Q§.y + param1 * this.§3#Q§.height;
      }
   }
}
