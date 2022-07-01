package §-!f§
{
   import §6!4§.§2!P§;
   import §6!4§.§8P§;
   import §6!4§.§<!D§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §;!U§:Vector.<§2!P§>;
      
      private var §`!9§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§6"0§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§`!9§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§`!9§)
         {
            return;
         }
         this.§`!9§ = param1;
         if(this.§`!9§)
         {
            addEventListener(TouchEvent.§3!d§,this.§;!"§);
         }
         else
         {
            removeEventListener(TouchEvent.§3!d§,this.§;!"§);
         }
      }
      
      private function §;!"§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§"!+§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§<!D§.§?!_§ && §<!D§.§?!_§.§#!b§)
         {
            dispatchEventOnChildren(new Event(Event.§]q§));
            if(this.§;!U§ == null)
            {
               this.§;!U§ = new Vector.<§2!P§>(0);
               §<!D§.§?!_§.addEventListener(Event.CONTEXT3D_CREATE,this.§-!P§);
            }
            §2!P§.§]O§(this,this.§;!U§);
         }
      }
      
      public function §6"0§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§<!D§.§?!_§ && §<!D§.§?!_§.§#!b§)
         {
            if(this.§;!U§)
            {
               §<!D§.§?!_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-!P§);
               _loc1_ = this.§;!U§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§;!U§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§;!U§ = null;
            }
         }
      }
      
      private function §-!P§(param1:Event) : void
      {
         if(this.§;!U§)
         {
            this.§;!U§ = new Vector.<§2!P§>(0);
            this.flatten();
         }
      }
      
      public function get §1!y§() : Boolean
      {
         return this.§;!U§ != null;
      }
      
      override public function render(param1:§8P§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§;!U§ && color == 16777215)
         {
            param1.§^!@§();
            param2 *= this.alpha;
            _loc3_ = this.§;!U§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§;!U§[_loc4_].render(param1.§="%§,param1.§&!o§,param2);
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
