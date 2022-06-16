package §"!B§
{
   import §]!=§.§&P§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §=!K§ extends §+!9§
   {
      
      public static const §%Q§:int = 4;
       
      
      private var §>o§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §>!N§:String;
      
      public function §=!K§(param1:XML, param2:§58§, param3:MovieClip = null)
      {
         this.§>o§ = new Rectangle();
         super(param1,param2,param3);
         this.§>o§.x = x;
         this.§>o§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§>o§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§>o§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§>o§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§>o§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§>o§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§>o§.height = parseInt(_loc7_);
         }
         §[e§(§%Q§,param1.@Drag);
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
            mClip.startDrag(false,this.§>o§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;!B§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §;!B§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§%Q§,§%!$§[§%Q§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;!B§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§>!N§)
         {
            this.setComponentVisualState(this.§>!N§);
            this.§>!N§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§>!N§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §!!<§(param1:Rectangle) : void
      {
         this.§>o§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§>o§.x,param1),this.§>o§.x + this.§>o§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§>o§.y,param1),this.§>o§.y + this.§>o§.height);
            super.y = param1;
         }
      }
      
      public function §6'§() : Number
      {
         var _loc1_:Number = x - this.§>o§.x;
         var _loc2_:Number = y - this.§>o§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§>o§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §"!+§(param1:Number) : void
      {
         this.x = this.§>o§.x + param1 * this.§>o§.width;
         this.y = this.§>o§.y + param1 * this.§>o§.height;
      }
   }
}
