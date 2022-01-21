package §31§
{
   import §6@§.§>n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §=l§ extends §#!d§
   {
      
      public static const §8!Y§:int = 4;
       
      
      private var §`!h§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §@!S§:String;
      
      public function §=l§(param1:XML, param2:§ !A§, param3:MovieClip = null)
      {
         this.§`!h§ = new Rectangle();
         super(param1,param2,param3);
         this.§`!h§.x = x;
         this.§`!h§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§`!h§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§`!h§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§`!h§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§`!h§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§`!h§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§`!h§.height = parseInt(_loc7_);
         }
         §?!V§(§8!Y§,param1.@Drag);
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
            mClip.startDrag(false,this.§`!h§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&!Y§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §&!Y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§8!Y§,§6y§[§8!Y§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§&!Y§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§@!S§)
         {
            this.setComponentVisualState(this.§@!S§);
            this.§@!S§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§@!S§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §"M§(param1:Rectangle) : void
      {
         this.§`!h§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§`!h§.x,param1),this.§`!h§.x + this.§`!h§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§`!h§.y,param1),this.§`!h§.y + this.§`!h§.height);
            super.y = param1;
         }
      }
      
      public function §3k§() : Number
      {
         var _loc1_:Number = x - this.§`!h§.x;
         var _loc2_:Number = y - this.§`!h§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§`!h§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §-e§(param1:Number) : void
      {
         this.x = this.§`!h§.x + param1 * this.§`!h§.width;
         this.y = this.§`!h§.y + param1 * this.§`!h§.height;
      }
   }
}
