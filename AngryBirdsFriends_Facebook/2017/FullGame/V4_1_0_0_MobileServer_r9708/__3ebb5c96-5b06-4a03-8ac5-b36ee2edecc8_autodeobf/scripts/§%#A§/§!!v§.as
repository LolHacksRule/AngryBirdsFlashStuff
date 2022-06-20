package §%#A§
{
   import §<"1§.§@!N§;
   import §<o§.§3h§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §!!v§ extends §,#w§
   {
      
      public static const §4"O§:int = 4;
       
      
      private var §6"y§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §8&§:String;
      
      public function §!!v§(param1:XML, param2:§]!_§, param3:MovieClip = null)
      {
         this.§6"y§ = new Rectangle();
         super(param1,param2,param3);
         this.§6"y§.x = x;
         this.§6"y§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§6"y§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§6"y§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§6"y§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§6"y§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§6"y§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§6"y§.height = parseInt(_loc7_);
         }
         §<!t§(§4"O§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3h§
      {
         var _loc3_:§3h§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§6"y§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;#v§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §;#v§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§4"O§,§+#E§[§4"O§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;#v§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§8&§)
         {
            this.setComponentVisualState(this.§8&§);
            this.§8&§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§8&§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §7#P§(param1:Rectangle) : void
      {
         this.§6"y§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§6"y§.x,param1),this.§6"y§.x + this.§6"y§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§6"y§.y,param1),this.§6"y§.y + this.§6"y§.height);
            super.y = param1;
         }
      }
      
      public function §5"c§() : Number
      {
         var _loc1_:Number = x - this.§6"y§.x;
         var _loc2_:Number = y - this.§6"y§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§6"y§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §8"R§(param1:Number) : void
      {
         this.x = this.§6"y§.x + param1 * this.§6"y§.width;
         this.y = this.§6"y§.y + param1 * this.§6"y§.height;
      }
   }
}
