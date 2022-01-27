package §86§
{
   import §@g§.§ O§;
   import §@g§.§'U§;
   import §@g§.§4!@§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §8!P§:Vector.<§ O§>;
      
      private var §6q§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§[z§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§6q§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§6q§)
         {
            return;
         }
         this.§6q§ = param1;
         if(this.§6q§)
         {
            addEventListener(TouchEvent.§+l§,this.§="§);
         }
         else
         {
            removeEventListener(TouchEvent.§+l§,this.§="§);
         }
      }
      
      private function §="§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§#!N§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§4!@§.§ C§ && §4!@§.§ C§.§=q§)
         {
            dispatchEventOnChildren(new Event(Event.§'9§));
            if(this.§8!P§ == null)
            {
               this.§8!P§ = new Vector.<§ O§>(0);
               §4!@§.§ C§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!?§);
            }
            § O§.§]j§(this,this.§8!P§);
         }
      }
      
      public function §[z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§4!@§.§ C§ && §4!@§.§ C§.§=q§)
         {
            if(this.§8!P§)
            {
               §4!@§.§ C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!?§);
               _loc1_ = this.§8!P§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§8!P§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§8!P§ = null;
            }
         }
      }
      
      private function §#!?§(param1:Event) : void
      {
         if(this.§8!P§)
         {
            this.§8!P§ = new Vector.<§ O§>(0);
            this.flatten();
         }
      }
      
      public function get §switch§() : Boolean
      {
         return this.§8!P§ != null;
      }
      
      override public function render(param1:§'U§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§8!P§ && color == 16777215)
         {
            param1.§[!&§();
            param2 *= this.alpha;
            _loc3_ = this.§8!P§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§8!P§[_loc4_].render(param1.§2!0§,param1.§<V§,param2);
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
