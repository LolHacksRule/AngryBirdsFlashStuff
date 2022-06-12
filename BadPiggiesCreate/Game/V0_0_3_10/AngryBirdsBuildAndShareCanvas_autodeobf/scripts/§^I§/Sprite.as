package §^I§
{
   import §5!5§.§'!v§;
   import §5!5§.§?"5§;
   import §5!5§.§^e§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §=!H§:Vector.<§'!v§>;
      
      private var §6!k§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§-!=§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§6!k§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§6!k§)
         {
            return;
         }
         this.§6!k§ = param1;
         if(this.§6!k§)
         {
            addEventListener(TouchEvent.§%!r§,this.§%S§);
         }
         else
         {
            removeEventListener(TouchEvent.§%!r§,this.§%S§);
         }
      }
      
      private function §%S§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§[9§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§^e§.§-_§ && §^e§.§-_§.§8!%§)
         {
            dispatchEventOnChildren(new Event(Event.§0!u§));
            if(this.§=!H§ == null)
            {
               this.§=!H§ = new Vector.<§'!v§>(0);
               §^e§.§-_§.addEventListener(Event.CONTEXT3D_CREATE,this.§&l§);
            }
            §'!v§.§1v§(this,this.§=!H§);
         }
      }
      
      public function §-!=§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§^e§.§-_§ && §^e§.§-_§.§8!%§)
         {
            if(this.§=!H§)
            {
               §^e§.§-_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&l§);
               _loc1_ = this.§=!H§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§=!H§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§=!H§ = null;
            }
         }
      }
      
      private function §&l§(param1:Event) : void
      {
         if(this.§=!H§)
         {
            this.§=!H§ = new Vector.<§'!v§>(0);
            this.flatten();
         }
      }
      
      public function get §;!U§() : Boolean
      {
         return this.§=!H§ != null;
      }
      
      override public function render(param1:§?"5§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§=!H§ && color == 16777215)
         {
            param1.§1!W§();
            param2 *= this.alpha;
            _loc3_ = this.§=!H§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§=!H§[_loc4_].render(param1.§<W§,param1.§9R§,param2);
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
