package §9W§
{
   import §#!;§.§,U§;
   import §#!;§.§;T§;
   import §#!;§.§?h§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §"]§:Vector.<§,U§>;
      
      private var §7Z§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§!Z§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§7Z§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§7Z§)
         {
            return;
         }
         this.§7Z§ = param1;
         if(this.§7Z§)
         {
            addEventListener(TouchEvent.§?6§,this.§1H§);
         }
         else
         {
            removeEventListener(TouchEvent.§?6§,this.§1H§);
         }
      }
      
      private function §1H§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§8"§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§;T§.§,H§ && §;T§.§,H§.§=8§)
         {
            dispatchEventOnChildren(new Event(Event.§!M§));
            if(this.§"]§ == null)
            {
               this.§"]§ = new Vector.<§,U§>(0);
               §;T§.§,H§.addEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
            }
            §,U§.§8B§(this,this.§"]§);
         }
      }
      
      public function §!Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§;T§.§,H§ && §;T§.§,H§.§=8§)
         {
            if(this.§"]§)
            {
               §;T§.§,H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
               _loc1_ = this.§"]§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§"]§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§"]§ = null;
            }
         }
      }
      
      private function §'!0§(param1:Event) : void
      {
         if(this.§"]§)
         {
            this.§"]§ = new Vector.<§,U§>(0);
            this.flatten();
         }
      }
      
      public function get §4I§() : Boolean
      {
         return this.§"]§ != null;
      }
      
      override public function render(param1:§?h§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§"]§ && color == 16777215)
         {
            param1.§?Y§();
            param2 *= this.alpha;
            _loc3_ = this.§"]§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§"]§[_loc4_].render(param1.context,param1.§;+§,param2);
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
