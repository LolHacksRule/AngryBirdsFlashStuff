package §1"s§
{
   import §9!!§.§ _§;
   import §9!!§.§=!S§;
   import §9!!§.§@!§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §8"!§:Vector.<§@!§>;
      
      private var §@"Q§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§;7§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§@"Q§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§@"Q§)
         {
            return;
         }
         this.§@"Q§ = param1;
         if(this.§@"Q§)
         {
            addEventListener(TouchEvent.§]N§,this.§>&§);
         }
         else
         {
            removeEventListener(TouchEvent.§]N§,this.§>&§);
         }
      }
      
      private function §>&§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§!!@§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§=!S§.§8y§ && §=!S§.§8y§.§+!E§)
         {
            dispatchEventOnChildren(new Event(Event.§#I§));
            if(this.§8"!§ == null)
            {
               this.§8"!§ = new Vector.<§@!§>(0);
               §=!S§.§8y§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!'§);
            }
            §@!§.§1"U§(this,this.§8"!§);
         }
      }
      
      public function §;7§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§=!S§.§8y§ && §=!S§.§8y§.§+!E§)
         {
            if(this.§8"!§)
            {
               §=!S§.§8y§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!'§);
               _loc1_ = this.§8"!§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§8"!§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§8"!§ = null;
            }
         }
      }
      
      private function §#!'§(param1:Event) : void
      {
         if(this.§8"!§)
         {
            this.§8"!§ = new Vector.<§@!§>(0);
            this.flatten();
         }
      }
      
      public function get §="-§() : Boolean
      {
         return this.§8"!§ != null;
      }
      
      override public function render(param1:§ _§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§8"!§ && color == 16777215)
         {
            param1.§62§();
            param2 *= this.alpha;
            _loc3_ = this.§8"!§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§8"!§[_loc4_].render(param1.§7!>§,param1.§2i§,param2);
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
