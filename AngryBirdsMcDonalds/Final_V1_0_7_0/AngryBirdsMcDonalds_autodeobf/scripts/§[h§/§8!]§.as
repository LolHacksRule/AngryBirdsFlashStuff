package §[h§
{
   import §+$§.§"!p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §8!]§ extends §49§
   {
      
      public static const §`!+§:int = 4;
       
      
      private var §>D§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §8!m§:String;
      
      public function §8!]§(param1:XML, param2:§ !&§, param3:MovieClip = null)
      {
         this.§>D§ = new Rectangle();
         super(param1,param2,param3);
         this.§>D§.x = x;
         this.§>D§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§>D§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§>D§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§>D§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§>D§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§>D§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§>D§.height = parseInt(_loc7_);
         }
         §8L§(§`!+§,param1.@Drag);
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
            mClip.startDrag(false,this.§>D§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§+!E§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §+!E§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§`!+§,§^K§[§`!+§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§+!E§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§8!m§)
         {
            this.setComponentVisualState(this.§8!m§);
            this.§8!m§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§8!m§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §+!V§(param1:Rectangle) : void
      {
         this.§>D§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§>D§.x,param1),this.§>D§.x + this.§>D§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§>D§.y,param1),this.§>D§.y + this.§>D§.height);
            super.y = param1;
         }
      }
      
      public function §0=§() : Number
      {
         var _loc1_:Number = x - this.§>D§.x;
         var _loc2_:Number = y - this.§>D§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§>D§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §`p§(param1:Number) : void
      {
         this.x = this.§>D§.x + param1 * this.§>D§.width;
         this.y = this.§>D§.y + param1 * this.§>D§.height;
      }
   }
}
