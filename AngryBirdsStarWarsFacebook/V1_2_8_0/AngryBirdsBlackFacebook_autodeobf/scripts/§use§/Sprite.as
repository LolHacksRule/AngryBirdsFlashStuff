package §use§
{
   import § "-§.§"!_§;
   import § "-§.§6!R§;
   import § "-§.§7"n§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var § !s§:Vector.<§7"n§>;
      
      private var §default§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§4"y§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§default§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§default§)
         {
            return;
         }
         this.§default§ = param1;
         if(this.§default§)
         {
            addEventListener(TouchEvent.§["i§,this.§3"+§);
         }
         else
         {
            removeEventListener(TouchEvent.§["i§,this.§3"+§);
         }
      }
      
      private function §3"+§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§>!%§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§6!R§.§+!d§ && §6!R§.§+!d§.§]h§)
         {
            dispatchEventOnChildren(new Event(Event.§-"=§));
            if(this.§ !s§ == null)
            {
               this.§ !s§ = new Vector.<§7"n§>(0);
               §6!R§.§+!d§.addEventListener(Event.CONTEXT3D_CREATE,this.§&"O§);
            }
            §7"n§.§@"E§(this,this.§ !s§);
         }
      }
      
      public function §4"y§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§6!R§.§+!d§ && §6!R§.§+!d§.§]h§)
         {
            if(this.§ !s§)
            {
               §6!R§.§+!d§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&"O§);
               _loc1_ = this.§ !s§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§ !s§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§ !s§ = null;
            }
         }
      }
      
      private function §&"O§(param1:Event) : void
      {
         if(this.§ !s§)
         {
            this.§ !s§ = new Vector.<§7"n§>(0);
            this.flatten();
         }
      }
      
      public function get §3"A§() : Boolean
      {
         return this.§ !s§ != null;
      }
      
      override public function render(param1:§"!_§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§ !s§ && color == 16777215)
         {
            param1.§5"=§();
            param2 *= this.alpha;
            _loc3_ = this.§ !s§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§ !s§[_loc4_].render(param1.§8D§,param1.§,"f§,param2);
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
