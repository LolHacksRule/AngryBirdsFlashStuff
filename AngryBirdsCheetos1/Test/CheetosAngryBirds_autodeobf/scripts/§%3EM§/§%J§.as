package §>M§
{
   import §'!D§.§0j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §%J§ extends §^-§
   {
      
      public static const §9<§:int = 4;
       
      
      private var §'!Y§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §&! §:String;
      
      public function §%J§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         this.§'!Y§ = new Rectangle();
         super(param1,param2,param3);
         this.§'!Y§.x = x;
         this.§'!Y§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§'!Y§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§'!Y§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§'!Y§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§'!Y§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§'!Y§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§'!Y§.height = parseInt(_loc7_);
         }
         §8!h§(§9<§,param1.@Drag);
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
            mClip.startDrag(false,this.§'!Y§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6L§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §6L§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§9<§,§>S§[§9<§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6L§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§&! §)
         {
            this.setComponentVisualState(this.§&! §);
            this.§&! § = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§&! § = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §]!'§(param1:Rectangle) : void
      {
         this.§'!Y§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§'!Y§.x,param1),this.§'!Y§.x + this.§'!Y§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§'!Y§.y,param1),this.§'!Y§.y + this.§'!Y§.height);
            super.y = param1;
         }
      }
      
      public function §`0§() : Number
      {
         var _loc1_:Number = x - this.§'!Y§.x;
         var _loc2_:Number = y - this.§'!Y§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§'!Y§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §9!=§(param1:Number) : void
      {
         this.x = this.§'!Y§.x + param1 * this.§'!Y§.width;
         this.y = this.§'!Y§.y + param1 * this.§'!Y§.height;
      }
   }
}
