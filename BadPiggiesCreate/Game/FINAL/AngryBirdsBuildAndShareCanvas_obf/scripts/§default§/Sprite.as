package §default§
{
   import §6p§.§5!W§;
   import §6p§.§50§;
   import §6p§.§?%§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §,!6§:Vector.<§50§>;
      
      private var §9!s§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§4J§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§9!s§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§9!s§)
         {
            return;
         }
         this.§9!s§ = param1;
         if(this.§9!s§)
         {
            addEventListener(TouchEvent.§9>§,this.§9R§);
         }
         else
         {
            removeEventListener(TouchEvent.§9>§,this.§9R§);
         }
      }
      
      private function §9R§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§]%§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§?%§.§%b§ && §?%§.§%b§.§=7§)
         {
            dispatchEventOnChildren(new Event(Event.§^n§));
            if(this.§,!6§ == null)
            {
               this.§,!6§ = new Vector.<§50§>(0);
               §?%§.§%b§.addEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
            }
            §50§.§]!`§(this,this.§,!6§);
         }
      }
      
      public function §4J§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§?%§.§%b§ && §?%§.§%b§.§=7§)
         {
            if(this.§,!6§)
            {
               §?%§.§%b§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
               _loc1_ = this.§,!6§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§,!6§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§,!6§ = null;
            }
         }
      }
      
      private function §6h§(param1:Event) : void
      {
         if(this.§,!6§)
         {
            this.§,!6§ = new Vector.<§50§>(0);
            this.flatten();
         }
      }
      
      public function get §="&§() : Boolean
      {
         return this.§,!6§ != null;
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§,!6§ && color == 16777215)
         {
            param1.§"F§();
            param2 *= this.alpha;
            _loc3_ = this.§,!6§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§,!6§[_loc4_].render(param1.§`-§,param1.§[!3§,param2);
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
