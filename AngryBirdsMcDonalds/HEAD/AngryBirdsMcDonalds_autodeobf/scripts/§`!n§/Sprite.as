package §`!n§
{
   import §%%§.§,!<§;
   import §%%§.§3P§;
   import §%%§.§^!6§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^@§:Vector.<§^!6§>;
      
      private var §!9§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§+e§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§!9§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§!9§)
         {
            return;
         }
         this.§!9§ = param1;
         if(this.§!9§)
         {
            addEventListener(TouchEvent.§,!E§,this.§6!L§);
         }
         else
         {
            removeEventListener(TouchEvent.§,!E§,this.§6!L§);
         }
      }
      
      private function §6!L§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§-e§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§3P§.§6_§ && §3P§.§6_§.§9S§)
         {
            dispatchEventOnChildren(new Event(Event.§%!A§));
            if(this.§^@§ == null)
            {
               this.§^@§ = new Vector.<§^!6§>(0);
               §3P§.§6_§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!i§);
            }
            §^!6§.§&H§(this,this.§^@§);
         }
      }
      
      public function §+e§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§3P§.§6_§ && §3P§.§6_§.§9S§)
         {
            if(this.§^@§)
            {
               §3P§.§6_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!i§);
               _loc1_ = this.§^@§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§^@§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§^@§ = null;
            }
         }
      }
      
      private function §3!i§(param1:Event) : void
      {
         if(this.§^@§)
         {
            this.§^@§ = new Vector.<§^!6§>(0);
            this.flatten();
         }
      }
      
      public function get §%!7§() : Boolean
      {
         return this.§^@§ != null;
      }
      
      override public function render(param1:§,!<§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^@§ && color == 16777215)
         {
            param1.§@G§();
            param2 *= this.alpha;
            _loc3_ = this.§^@§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§^@§[_loc4_].render(param1.§=!_§,param1.§"!^§,param2);
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
