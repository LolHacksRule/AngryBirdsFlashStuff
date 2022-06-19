package §^a§
{
   import §6;§.§%[§;
   import §6;§.§1!B§;
   import §6;§.§2^§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §[$§:Vector.<§1!B§>;
      
      private var §`6§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§<!Z§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§`6§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§`6§)
         {
            return;
         }
         this.§`6§ = param1;
         if(this.§`6§)
         {
            addEventListener(TouchEvent.§5a§,this.§#!f§);
         }
         else
         {
            removeEventListener(TouchEvent.§5a§,this.§#!f§);
         }
      }
      
      private function §#!f§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§=a§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§%[§.§`1§ && §%[§.§`1§.§[!Q§)
         {
            dispatchEventOnChildren(new Event(Event.§^!U§));
            if(this.§[$§ == null)
            {
               this.§[$§ = new Vector.<§1!B§>(0);
               §%[§.§`1§.addEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
            }
            §1!B§.§<d§(this,this.§[$§);
         }
      }
      
      public function §<!Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§%[§.§`1§ && §%[§.§`1§.§[!Q§)
         {
            if(this.§[$§)
            {
               §%[§.§`1§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
               _loc1_ = this.§[$§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§[$§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§[$§ = null;
            }
         }
      }
      
      private function §&!S§(param1:Event) : void
      {
         if(this.§[$§)
         {
            this.§[$§ = new Vector.<§1!B§>(0);
            this.flatten();
         }
      }
      
      public function get §-q§() : Boolean
      {
         return this.§[$§ != null;
      }
      
      override public function render(param1:§2^§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§[$§ && color == 16777215)
         {
            param1.§9,§();
            param2 *= this.alpha;
            _loc3_ = this.§[$§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§[$§[_loc4_].render(param1.§'!&§,param1.§?#§,param2);
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
