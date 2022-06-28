package §?^§
{
   import §&p§.§%?§;
   import §&p§.§'_§;
   import §&p§.§`G§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §5!?§:Vector.<§%?§>;
      
      private var §#g§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§9!B§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§#g§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§#g§)
         {
            return;
         }
         this.§#g§ = param1;
         if(this.§#g§)
         {
            addEventListener(TouchEvent.§!r§,this.§'k§);
         }
         else
         {
            removeEventListener(TouchEvent.§!r§,this.§'k§);
         }
      }
      
      private function §'k§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§^$§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§'_§.§17§ && §'_§.§17§.§+y§)
         {
            dispatchEventOnChildren(new Event(Event.§#!7§));
            if(this.§5!?§ == null)
            {
               this.§5!?§ = new Vector.<§%?§>(0);
               §'_§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
            }
            §%?§.§3f§(this,this.§5!?§);
         }
      }
      
      public function §9!B§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§'_§.§17§ && §'_§.§17§.§+y§)
         {
            if(this.§5!?§)
            {
               §'_§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
               _loc1_ = this.§5!?§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§5!?§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§5!?§ = null;
            }
         }
      }
      
      private function §-%§(param1:Event) : void
      {
         if(this.§5!?§)
         {
            this.§5!?§ = new Vector.<§%?§>(0);
            this.flatten();
         }
      }
      
      public function get §^K§() : Boolean
      {
         return this.§5!?§ != null;
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§5!?§ && color == 16777215)
         {
            param1.§#E§();
            param2 *= this.alpha;
            _loc3_ = this.§5!?§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§5!?§[_loc4_].render(param1.context,param1.§1!<§,param2);
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
