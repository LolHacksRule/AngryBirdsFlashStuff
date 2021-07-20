package §`g§
{
   import §2m§.§<!?§;
   import §2m§.§@>§;
   import §2m§.§^[§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §`%§:Vector.<§^[§>;
      
      private var §?!i§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§;i§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§?!i§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§?!i§)
         {
            return;
         }
         this.§?!i§ = param1;
         if(this.§?!i§)
         {
            addEventListener(TouchEvent.§7!L§,this.§3!6§);
         }
         else
         {
            removeEventListener(TouchEvent.§7!L§,this.§3!6§);
         }
      }
      
      private function §3!6§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§6!c§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§<!?§.§,=§ && §<!?§.§,=§.§[&§)
         {
            dispatchEventOnChildren(new Event(Event.§[!G§));
            if(this.§`%§ == null)
            {
               this.§`%§ = new Vector.<§^[§>(0);
               §<!?§.§,=§.addEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
            }
            §^[§.§ l§(this,this.§`%§);
         }
      }
      
      public function §;i§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§<!?§.§,=§ && §<!?§.§,=§.§[&§)
         {
            if(this.§`%§)
            {
               §<!?§.§,=§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
               _loc1_ = this.§`%§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§`%§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§`%§ = null;
            }
         }
      }
      
      private function §%!y§(param1:Event) : void
      {
         if(this.§`%§)
         {
            this.§`%§ = new Vector.<§^[§>(0);
            this.flatten();
         }
      }
      
      public function get §51§() : Boolean
      {
         return this.§`%§ != null;
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§`%§ && color == 16777215)
         {
            param1.§6E§();
            param2 *= this.alpha;
            _loc3_ = this.§`%§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§`%§[_loc4_].render(param1.§"Y§,param1.§7w§,param2);
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
