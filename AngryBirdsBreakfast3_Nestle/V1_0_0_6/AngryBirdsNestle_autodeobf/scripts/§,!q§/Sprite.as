package §,!q§
{
   import §-!Y§.§%!%§;
   import §-!Y§.§,!f§;
   import §-!Y§.§<"2§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §]_§:Vector.<§<"2§>;
      
      private var §=$§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§'x§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§=$§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§=$§)
         {
            return;
         }
         this.§=$§ = param1;
         if(this.§=$§)
         {
            addEventListener(TouchEvent.§%!k§,this.§'"+§);
         }
         else
         {
            removeEventListener(TouchEvent.§%!k§,this.§'"+§);
         }
      }
      
      private function §'"+§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§=!5§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§%!%§.§"T§ && §%!%§.§"T§.§8!e§)
         {
            dispatchEventOnChildren(new Event(Event.§4S§));
            if(this.§]_§ == null)
            {
               this.§]_§ = new Vector.<§<"2§>(0);
               §%!%§.§"T§.addEventListener(Event.CONTEXT3D_CREATE,this.§5!h§);
            }
            §<"2§.§"!>§(this,this.§]_§);
         }
      }
      
      public function §'x§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§%!%§.§"T§ && §%!%§.§"T§.§8!e§)
         {
            if(this.§]_§)
            {
               §%!%§.§"T§.removeEventListener(Event.CONTEXT3D_CREATE,this.§5!h§);
               _loc1_ = this.§]_§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§]_§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§]_§ = null;
            }
         }
      }
      
      private function §5!h§(param1:Event) : void
      {
         if(this.§]_§)
         {
            this.§]_§ = new Vector.<§<"2§>(0);
            this.flatten();
         }
      }
      
      public function get §4"$§() : Boolean
      {
         return this.§]_§ != null;
      }
      
      override public function render(param1:§,!f§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§]_§ && color == 16777215)
         {
            param1.§89§();
            param2 *= this.alpha;
            _loc3_ = this.§]_§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§]_§[_loc4_].render(param1.§'y§,param1.§<!p§,param2);
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
