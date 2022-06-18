package §3§
{
   import §94§.§#!a§;
   import §94§.§&!7§;
   import §94§.§6!N§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §"!L§:Vector.<§6!N§>;
      
      private var §8![§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§%!-§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§8![§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§8![§)
         {
            return;
         }
         this.§8![§ = param1;
         if(this.§8![§)
         {
            addEventListener(TouchEvent.§?B§,this.§^!R§);
         }
         else
         {
            removeEventListener(TouchEvent.§?B§,this.§^!R§);
         }
      }
      
      private function §^!R§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§^9§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§&!7§.§>!M§ && §&!7§.§>!M§.§-T§)
         {
            dispatchEventOnChildren(new Event(Event.§8L§));
            if(this.§"!L§ == null)
            {
               this.§"!L§ = new Vector.<§6!N§>(0);
               §&!7§.§>!M§.addEventListener(Event.CONTEXT3D_CREATE,this.§2![§);
            }
            §6!N§.§5!W§(this,this.§"!L§);
         }
      }
      
      public function §%!-§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§&!7§.§>!M§ && §&!7§.§>!M§.§-T§)
         {
            if(this.§"!L§)
            {
               §&!7§.§>!M§.removeEventListener(Event.CONTEXT3D_CREATE,this.§2![§);
               _loc1_ = this.§"!L§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§"!L§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§"!L§ = null;
            }
         }
      }
      
      private function §2![§(param1:Event) : void
      {
         if(this.§"!L§)
         {
            this.§"!L§ = new Vector.<§6!N§>(0);
            this.flatten();
         }
      }
      
      public function get §;!c§() : Boolean
      {
         return this.§"!L§ != null;
      }
      
      override public function render(param1:§#!a§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§"!L§ && color == 16777215)
         {
            param1.§2!2§();
            param2 *= this.alpha;
            _loc3_ = this.§"!L§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§"!L§[_loc4_].render(param1.§&!T§,param1.§>^§,param2);
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
