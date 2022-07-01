package § !=§
{
   import §`V§.§;6§;
   import §`V§.§[T§;
   import §`V§.§^M§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §7!f§:Vector.<§[T§>;
      
      private var each:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§<!r§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.each;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.each)
         {
            return;
         }
         this.each = param1;
         if(this.each)
         {
            addEventListener(TouchEvent.§7Z§,this.§'E§);
         }
         else
         {
            removeEventListener(TouchEvent.§7Z§,this.§'E§);
         }
      }
      
      private function §'E§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§#!t§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§;6§.§@X§ && §;6§.§@X§.§[2§)
         {
            dispatchEventOnChildren(new Event(Event.§4"2§));
            if(this.§7!f§ == null)
            {
               this.§7!f§ = new Vector.<§[T§>(0);
               §;6§.§@X§.addEventListener(Event.CONTEXT3D_CREATE,this.§?! §);
            }
            §[T§.§"!Z§(this,this.§7!f§);
         }
      }
      
      public function §<!r§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§;6§.§@X§ && §;6§.§@X§.§[2§)
         {
            if(this.§7!f§)
            {
               §;6§.§@X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?! §);
               _loc1_ = this.§7!f§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§7!f§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§7!f§ = null;
            }
         }
      }
      
      private function §?! §(param1:Event) : void
      {
         if(this.§7!f§)
         {
            this.§7!f§ = new Vector.<§[T§>(0);
            this.flatten();
         }
      }
      
      public function get §,!a§() : Boolean
      {
         return this.§7!f§ != null;
      }
      
      override public function render(param1:§^M§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§7!f§ && color == 16777215)
         {
            param1.§8R§();
            param2 *= this.alpha;
            _loc3_ = this.§7!f§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§7!f§[_loc4_].render(param1.§8!N§,param1.§ !N§,param2);
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
