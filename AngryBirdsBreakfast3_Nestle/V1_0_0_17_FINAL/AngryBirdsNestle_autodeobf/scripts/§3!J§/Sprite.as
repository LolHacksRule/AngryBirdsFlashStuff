package §3!J§
{
   import §!!!§.§-!k§;
   import §!!!§.§6!l§;
   import §!!!§.§<@§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §?m§:Vector.<§-!k§>;
      
      private var §8'§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§<4§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§8'§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§8'§)
         {
            return;
         }
         this.§8'§ = param1;
         if(this.§8'§)
         {
            addEventListener(TouchEvent.§>P§,this.§]!'§);
         }
         else
         {
            removeEventListener(TouchEvent.§>P§,this.§]!'§);
         }
      }
      
      private function §]!'§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§0!k§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§6!l§.§+J§ && §6!l§.§+J§.§[! §)
         {
            dispatchEventOnChildren(new Event(Event.§3o§));
            if(this.§?m§ == null)
            {
               this.§?m§ = new Vector.<§-!k§>(0);
               §6!l§.§+J§.addEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
            }
            §-!k§.§=!A§(this,this.§?m§);
         }
      }
      
      public function §<4§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§6!l§.§+J§ && §6!l§.§+J§.§[! §)
         {
            if(this.§?m§)
            {
               §6!l§.§+J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
               _loc1_ = this.§?m§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§?m§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§?m§ = null;
            }
         }
      }
      
      private function §'"1§(param1:Event) : void
      {
         if(this.§?m§)
         {
            this.§?m§ = new Vector.<§-!k§>(0);
            this.flatten();
         }
      }
      
      public function get §1!,§() : Boolean
      {
         return this.§?m§ != null;
      }
      
      override public function render(param1:§<@§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§?m§ && color == 16777215)
         {
            param1.§6!s§();
            param2 *= this.alpha;
            _loc3_ = this.§?m§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§?m§[_loc4_].render(param1.§!! §,param1.§6?§,param2);
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
