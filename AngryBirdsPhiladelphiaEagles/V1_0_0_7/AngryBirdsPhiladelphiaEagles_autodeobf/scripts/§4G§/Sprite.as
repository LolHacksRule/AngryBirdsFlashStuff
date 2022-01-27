package §4G§
{
   import §>w§.§"!,§;
   import §>w§.;
   import §>w§.§[C§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §#[§:Vector.<§[C§>;
      
      private var §,F§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§3k§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§,F§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§,F§)
         {
            return;
         }
         this.§,F§ = param1;
         if(this.§,F§)
         {
            addEventListener(TouchEvent.§;o§,this.§class§);
         }
         else
         {
            removeEventListener(TouchEvent.§;o§,this.§class§);
         }
      }
      
      private function §class§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§=j§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§#0§.§#4§ && §#0§.§#4§.§6!7§)
         {
            dispatchEventOnChildren(new Event(Event.§!!;§));
            if(this.§#[§ == null)
            {
               this.§#[§ = new Vector.<§[C§>(0);
               §#0§.§#4§.addEventListener(Event.CONTEXT3D_CREATE,this.§[?§);
            }
            §[C§.§ !?§(this,this.§#[§);
         }
      }
      
      public function §3k§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§#0§.§#4§ && §#0§.§#4§.§6!7§)
         {
            if(this.§#[§)
            {
               §#0§.§#4§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[?§);
               _loc1_ = this.§#[§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§#[§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§#[§ = null;
            }
         }
      }
      
      private function §[?§(param1:Event) : void
      {
         if(this.§#[§)
         {
            this.§#[§ = new Vector.<§[C§>(0);
            this.flatten();
         }
      }
      
      public function get §#d§() : Boolean
      {
         return this.§#[§ != null;
      }
      
      override public function render(param1:§"!,§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§#[§ && color == 16777215)
         {
            param1.§`X§();
            param2 *= this.alpha;
            _loc3_ = this.§#[§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§#[§[_loc4_].render(param1.§2N§,param1.§&R§,param2);
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
