package §null §
{
   import §]_§.§!F§;
   import §]_§.§&c§;
   import §]_§.§7o§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §[!W§:Vector.<§&c§>;
      
      private var §<!H§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§1c§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§<!H§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§<!H§)
         {
            return;
         }
         this.§<!H§ = param1;
         if(this.§<!H§)
         {
            addEventListener(TouchEvent.§%w§,this.§ !V§);
         }
         else
         {
            removeEventListener(TouchEvent.§%w§,this.§ !V§);
         }
      }
      
      private function § !V§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§3!J§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§!F§.§[M§ && §!F§.§[M§.§5!6§)
         {
            dispatchEventOnChildren(new Event(Event.§!O§));
            if(this.§[!W§ == null)
            {
               this.§[!W§ = new Vector.<§&c§>(0);
               §!F§.§[M§.addEventListener(Event.CONTEXT3D_CREATE,this.§?6§);
            }
            §&c§.§9,§(this,this.§[!W§);
         }
      }
      
      public function §1c§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§!F§.§[M§ && §!F§.§[M§.§5!6§)
         {
            if(this.§[!W§)
            {
               §!F§.§[M§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?6§);
               _loc1_ = this.§[!W§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§[!W§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§[!W§ = null;
            }
         }
      }
      
      private function §?6§(param1:Event) : void
      {
         if(this.§[!W§)
         {
            this.§[!W§ = new Vector.<§&c§>(0);
            this.flatten();
         }
      }
      
      public function get §if§() : Boolean
      {
         return this.§[!W§ != null;
      }
      
      override public function render(param1:§7o§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§[!W§ && color == 16777215)
         {
            param1.§`u§();
            param2 *= this.alpha;
            _loc3_ = this.§[!W§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§[!W§[_loc4_].render(param1.§>!6§,param1.§!Y§,param2);
               _loc4_++;
            }
         }
         else
         {
            super.render(param1,param2);
         }
      }
   }
}
