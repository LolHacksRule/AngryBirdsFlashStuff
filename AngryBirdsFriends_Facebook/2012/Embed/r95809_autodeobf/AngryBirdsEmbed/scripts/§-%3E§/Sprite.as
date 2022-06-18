package §->§
{
   import §&I§.§3! §;
   import §&I§.§8]§;
   import §&I§.§?!§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §7S§:Vector.<§8]§>;
      
      private var §4o§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§&1§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§4o§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§4o§)
         {
            return;
         }
         this.§4o§ = param1;
         if(this.§4o§)
         {
            addEventListener(TouchEvent.§`Z§,this.§;Q§);
         }
         else
         {
            removeEventListener(TouchEvent.§`Z§,this.§;Q§);
         }
      }
      
      private function §;Q§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§!<§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§3! §.§"n§ && §3! §.§"n§.§];§)
         {
            dispatchEventOnChildren(new Event(Event.§>T§));
            if(this.§7S§ == null)
            {
               this.§7S§ = new Vector.<§8]§>(0);
               §3! §.§"n§.addEventListener(Event.CONTEXT3D_CREATE,this.§<N§);
            }
            §8]§.§6+§(this,this.§7S§);
         }
      }
      
      public function §&1§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§3! §.§"n§ && §3! §.§"n§.§];§)
         {
            if(this.§7S§)
            {
               §3! §.§"n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§<N§);
               _loc1_ = this.§7S§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§7S§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§7S§ = null;
            }
         }
      }
      
      private function §<N§(param1:Event) : void
      {
         if(this.§7S§)
         {
            this.§7S§ = new Vector.<§8]§>(0);
            this.flatten();
         }
      }
      
      public function get §&q§() : Boolean
      {
         return this.§7S§ != null;
      }
      
      override public function render(param1:§?!§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§7S§ && color == 16777215)
         {
            param1.§3!&§();
            param2 *= this.alpha;
            _loc3_ = this.§7S§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§7S§[_loc4_].render(param1.context,param1.§&U§,param2);
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
