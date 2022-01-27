package §3H§
{
   import §5J§.§4!3§;
   import §5J§.§>$§;
   import §5J§.§catch§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §[6§:Vector.<§catch§>;
      
      private var § !0§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§0!J§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§ !0§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§ !0§)
         {
            return;
         }
         this.§ !0§ = param1;
         if(this.§ !0§)
         {
            addEventListener(TouchEvent.§%!'§,this.§8H§);
         }
         else
         {
            removeEventListener(TouchEvent.§%!'§,this.§8H§);
         }
      }
      
      private function §8H§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§`_§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§>$§.§-U§ && §>$§.§-U§.§`!3§)
         {
            dispatchEventOnChildren(new Event(Event.§-O§));
            if(this.§[6§ == null)
            {
               this.§[6§ = new Vector.<§catch§>(0);
               §>$§.§-U§.addEventListener(Event.CONTEXT3D_CREATE,this.§8x§);
            }
            §catch§.§1§(this,this.§[6§);
         }
      }
      
      public function §0!J§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§>$§.§-U§ && §>$§.§-U§.§`!3§)
         {
            if(this.§[6§)
            {
               §>$§.§-U§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8x§);
               _loc1_ = this.§[6§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§[6§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§[6§ = null;
            }
         }
      }
      
      private function §8x§(param1:Event) : void
      {
         if(this.§[6§)
         {
            this.§[6§ = new Vector.<§catch§>(0);
            this.flatten();
         }
      }
      
      public function get §#k§() : Boolean
      {
         return this.§[6§ != null;
      }
      
      override public function render(param1:§4!3§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§[6§ && color == 16777215)
         {
            param1.§1F§();
            param2 *= this.alpha;
            _loc3_ = this.§[6§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§[6§[_loc4_].render(param1.§0b§,param1.§@i§,param2);
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
