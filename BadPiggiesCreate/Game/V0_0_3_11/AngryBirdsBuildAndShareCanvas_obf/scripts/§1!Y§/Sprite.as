package §1!Y§
{
   import §0P§.§!!l§;
   import §0P§.§,N§;
   import §0P§.§1!O§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §4+§:Vector.<§,N§>;
      
      private var § !3§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§7!4§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§ !3§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§ !3§)
         {
            return;
         }
         this.§ !3§ = param1;
         if(this.§ !3§)
         {
            addEventListener(TouchEvent.§5V§,this.§-R§);
         }
         else
         {
            removeEventListener(TouchEvent.§5V§,this.§-R§);
         }
      }
      
      private function §-R§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§66§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§!!l§.§`7§ && §!!l§.§`7§.§>!B§)
         {
            dispatchEventOnChildren(new Event(Event.§0k§));
            if(this.§4+§ == null)
            {
               this.§4+§ = new Vector.<§,N§>(0);
               §!!l§.§`7§.addEventListener(Event.CONTEXT3D_CREATE,this.§ i§);
            }
            §,N§.§5!z§(this,this.§4+§);
         }
      }
      
      public function §7!4§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§!!l§.§`7§ && §!!l§.§`7§.§>!B§)
         {
            if(this.§4+§)
            {
               §!!l§.§`7§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ i§);
               _loc1_ = this.§4+§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§4+§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§4+§ = null;
            }
         }
      }
      
      private function § i§(param1:Event) : void
      {
         if(this.§4+§)
         {
            this.§4+§ = new Vector.<§,N§>(0);
            this.flatten();
         }
      }
      
      public function get §`C§() : Boolean
      {
         return this.§4+§ != null;
      }
      
      override public function render(param1:§1!O§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§4+§ && color == 16777215)
         {
            param1.§%A§();
            param2 *= this.alpha;
            _loc3_ = this.§4+§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§4+§[_loc4_].render(param1.§4_§,param1.§??§,param2);
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
