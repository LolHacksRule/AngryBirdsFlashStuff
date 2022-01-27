package §@!]§
{
   import §1Q§.§4p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §!!N§ extends §&!!§
   {
      
      public static const §0a§:int = 4;
       
      
      private var §0t§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §2!U§:String;
      
      public function §!!N§(param1:XML, param2:§'!9§, param3:MovieClip = null)
      {
         this.§0t§ = new Rectangle();
         super(param1,param2,param3);
         this.§0t§.x = x;
         this.§0t§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§0t§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§0t§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§0t§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§0t§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§0t§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§0t§.height = parseInt(_loc7_);
         }
         §1!W§(§0a§,param1.@Drag);
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
            mClip.startDrag(false,this.§0t§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§`!K§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §`!K§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§0a§,§72§[§0a§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§`!K§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§2!U§)
         {
            this.setComponentVisualState(this.§2!U§);
            this.§2!U§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§2!U§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §8!N§(param1:Rectangle) : void
      {
         this.§0t§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§0t§.x,param1),this.§0t§.x + this.§0t§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§0t§.y,param1),this.§0t§.y + this.§0t§.height);
            super.y = param1;
         }
      }
      
      public function §]<§() : Number
      {
         var _loc1_:Number = x - this.§0t§.x;
         var _loc2_:Number = y - this.§0t§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§0t§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §=R§(param1:Number) : void
      {
         this.x = this.§0t§.x + param1 * this.§0t§.width;
         this.y = this.§0t§.y + param1 * this.§0t§.height;
      }
   }
}
