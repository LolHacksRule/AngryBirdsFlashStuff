package §_-Eg§
{
   import §_-16§.§_-8n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-gm§ extends §_-hf§
   {
      
      public static const §_-nj§:int = 4;
       
      
      private var §_-hb§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §_-n8§:String;
      
      public function §_-gm§(param1:XML, param2:§_-Up§, param3:MovieClip = null)
      {
         this.§_-hb§ = new Rectangle();
         super(param1,param2,param3);
         this.§_-hb§.x = x;
         this.§_-hb§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§_-hb§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§_-hb§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§_-hb§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§_-hb§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§_-hb§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§_-hb§.height = parseInt(_loc7_);
         }
         §_-jo§(§_-nj§,param1.@Drag);
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
            mClip.startDrag(false,this.§_-hb§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-oO§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §_-oO§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-nj§,§_-JZ§[§_-nj§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-oO§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§_-n8§)
         {
            this.setComponentVisualState(this.§_-n8§);
            this.§_-n8§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§_-n8§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §_-00y§(param1:Rectangle) : void
      {
         this.§_-hb§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§_-hb§.x,param1),this.§_-hb§.x + this.§_-hb§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§_-hb§.y,param1),this.§_-hb§.y + this.§_-hb§.height);
            super.y = param1;
         }
      }
      
      public function §_-7S§() : Number
      {
         var _loc1_:Number = x - this.§_-hb§.x;
         var _loc2_:Number = y - this.§_-hb§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§_-hb§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §_-8F§(param1:Number) : void
      {
         this.x = this.§_-hb§.x + param1 * this.§_-hb§.width;
         this.y = this.§_-hb§.y + param1 * this.§_-hb§.height;
      }
   }
}
