package §@#§
{
   import §?!4§.§^!S§;
   import §[!b§.§]"-§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §]"§ extends §4!O§
   {
      
      public static const § !%§:int = 4;
       
      
      private var §"E§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §;!$§:String;
      
      public function §]"§(param1:XML, param2:§9!'§, param3:MovieClip = null)
      {
         this.§"E§ = new Rectangle();
         super(param1,param2,param3);
         this.§"E§.x = x;
         this.§"E§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§"E§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§"E§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§"E§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§"E§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§"E§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§"E§.height = parseInt(_loc7_);
         }
         §1!@§(§ !%§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §^!S§
      {
         var _loc3_:§^!S§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§"E§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!9§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §?!9§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§ !%§,§[!'§[§ !%§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?!9§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§;!$§)
         {
            this.setComponentVisualState(this.§;!$§);
            this.§;!$§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§;!$§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §9P§(param1:Rectangle) : void
      {
         this.§"E§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§"E§.x,param1),this.§"E§.x + this.§"E§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§"E§.y,param1),this.§"E§.y + this.§"E§.height);
            super.y = param1;
         }
      }
      
      public function §@!A§() : Number
      {
         var _loc1_:Number = x - this.§"E§.x;
         var _loc2_:Number = y - this.§"E§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§"E§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §6g§(param1:Number) : void
      {
         this.x = this.§"E§.x + param1 * this.§"E§.width;
         this.y = this.§"E§.y + param1 * this.§"E§.height;
      }
   }
}
