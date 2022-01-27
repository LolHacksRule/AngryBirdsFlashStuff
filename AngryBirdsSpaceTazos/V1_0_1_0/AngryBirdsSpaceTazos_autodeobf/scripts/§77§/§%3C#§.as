package §77§
{
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §<#§ extends §@_§
   {
      
      public static const §"!?§:int = 4;
       
      
      private var §9"F§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §9"&§:String;
      
      public function §<#§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         this.§9"F§ = new Rectangle();
         super(param1,param2,param3);
         this.§9"F§.x = x;
         this.§9"F§.y = y;
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!isNaN(parseInt(_loc4_)))
         {
            this.§9"F§.x = parseInt(_loc4_);
         }
         if(!isNaN(parseInt(_loc5_)))
         {
            this.§9"F§.y = parseInt(_loc5_);
         }
         if(_loc6_ == "parent")
         {
            this.§9"F§.width = param2.width - mClip.width;
         }
         else if(!isNaN(parseInt(_loc6_)))
         {
            this.§9"F§.width = parseInt(_loc6_);
         }
         if(_loc7_ == "parent")
         {
            this.§9"F§.height = param2.height - mClip.height;
         }
         else if(!isNaN(parseInt(_loc7_)))
         {
            this.§9"F§.height = parseInt(_loc7_);
         }
         §]!d§(§"!?§,param1.@Drag);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         var _loc3_:§]"+§ = super.listenerUIEventOccured(param1,param2);
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
            mClip.startDrag(false,this.§9"F§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§2t§);
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §2t§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§"!?§,§"d§[§"!?§]);
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         mClip.stopDrag();
         this.mDragging = false;
         if(mClip.stage)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§2t§);
            mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            this.setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§9"&§)
         {
            this.setComponentVisualState(this.§9"&§);
            this.§9"&§ = null;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(this.mDragging)
         {
            this.§9"&§ = param1;
            return;
         }
         super.setComponentVisualState(param1);
      }
      
      public function §;"6§(param1:Rectangle) : void
      {
         this.§9"F§ = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         if(param1 != super.x)
         {
            param1 = Math.min(Math.max(this.§9"F§.x,param1),this.§9"F§.x + this.§9"F§.width);
            super.x = param1;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         if(param1 != super.y)
         {
            param1 = Math.min(Math.max(this.§9"F§.y,param1),this.§9"F§.y + this.§9"F§.height);
            super.y = param1;
         }
      }
      
      public function §'E§() : Number
      {
         var _loc1_:Number = x - this.§9"F§.x;
         var _loc2_:Number = y - this.§9"F§.y;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§9"F§.size.length;
         return _loc3_ / _loc4_;
      }
      
      public function §'z§(param1:Number) : void
      {
         this.x = this.§9"F§.x + param1 * this.§9"F§.width;
         this.y = this.§9"F§.y + param1 * this.§9"F§.height;
      }
   }
}
