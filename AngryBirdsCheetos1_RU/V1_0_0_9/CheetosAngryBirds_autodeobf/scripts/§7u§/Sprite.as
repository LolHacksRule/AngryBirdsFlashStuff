package §7u§
{
   import §'!S§.§,!%§;
   import §'!S§.§5[§;
   import §'!S§.§73§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §%3§:Vector.<§73§>;
      
      private var §1!G§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§+H§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§1!G§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§1!G§)
         {
            return;
         }
         this.§1!G§ = param1;
         if(this.§1!G§)
         {
            addEventListener(TouchEvent.§>W§,this.§9q§);
         }
         else
         {
            removeEventListener(TouchEvent.§>W§,this.§9q§);
         }
      }
      
      private function §9q§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§5b§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§,!%§.§]!C§ && §,!%§.§]!C§.§=e§)
         {
            dispatchEventOnChildren(new Event(Event.§%!Q§));
            if(this.§%3§ == null)
            {
               this.§%3§ = new Vector.<§73§>(0);
               §,!%§.§]!C§.addEventListener(Event.CONTEXT3D_CREATE,this.§[!8§);
            }
            §73§.§@!O§(this,this.§%3§);
         }
      }
      
      public function §+H§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§,!%§.§]!C§ && §,!%§.§]!C§.§=e§)
         {
            if(this.§%3§)
            {
               §,!%§.§]!C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[!8§);
               _loc1_ = this.§%3§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§%3§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§%3§ = null;
            }
         }
      }
      
      private function §[!8§(param1:Event) : void
      {
         if(this.§%3§)
         {
            this.§%3§ = new Vector.<§73§>(0);
            this.flatten();
         }
      }
      
      public function get §^i§() : Boolean
      {
         return this.§%3§ != null;
      }
      
      override public function render(param1:§5[§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§%3§ && color == 16777215)
         {
            param1.§`!3§();
            param2 *= this.alpha;
            _loc3_ = this.§%3§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§%3§[_loc4_].render(param1.§ #§,param1.§^!!§,param2);
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
