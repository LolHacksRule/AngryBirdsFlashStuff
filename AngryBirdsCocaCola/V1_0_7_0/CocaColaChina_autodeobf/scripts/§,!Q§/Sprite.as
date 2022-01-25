package §,!Q§
{
   import § F§.§&U§;
   import § F§.§,!>§;
   import § F§.§3!&§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^W§:Vector.<§&U§>;
      
      private var §9!]§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§#!2§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§9!]§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§9!]§)
         {
            return;
         }
         this.§9!]§ = param1;
         if(this.§9!]§)
         {
            addEventListener(TouchEvent.§8X§,this.§<!K§);
         }
         else
         {
            removeEventListener(TouchEvent.§8X§,this.§<!K§);
         }
      }
      
      private function §<!K§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§"!-§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§3!&§.§<1§ && §3!&§.§<1§.§ =§)
         {
            dispatchEventOnChildren(new Event(Event.§3C§));
            if(this.§^W§ == null)
            {
               this.§^W§ = new Vector.<§&U§>(0);
               §3!&§.§<1§.addEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
            }
            §&U§.§6V§(this,this.§^W§);
         }
      }
      
      public function §#!2§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§3!&§.§<1§ && §3!&§.§<1§.§ =§)
         {
            if(this.§^W§)
            {
               §3!&§.§<1§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
               _loc1_ = this.§^W§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§^W§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§^W§ = null;
            }
         }
      }
      
      private function §!6§(param1:Event) : void
      {
         if(this.§^W§)
         {
            this.§^W§ = new Vector.<§&U§>(0);
            this.flatten();
         }
      }
      
      public function get §8Q§() : Boolean
      {
         return this.§^W§ != null;
      }
      
      override public function render(param1:§,!>§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^W§ && color == 16777215)
         {
            param1.§0;§();
            param2 *= this.alpha;
            _loc3_ = this.§^W§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§^W§[_loc4_].render(param1.§7!"§,param1.§0G§,param2);
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
