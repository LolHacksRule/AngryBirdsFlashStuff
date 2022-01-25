package §<!$§
{
   import §9]§.§!!P§;
   import §9]§.§0`§;
   import §9]§.§9J§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §`Y§:Vector.<§!!P§>;
      
      private var §"P§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§>r§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§"P§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§"P§)
         {
            return;
         }
         this.§"P§ = param1;
         if(this.§"P§)
         {
            addEventListener(TouchEvent.§[R§,this.§1!Q§);
         }
         else
         {
            removeEventListener(TouchEvent.§[R§,this.§1!Q§);
         }
      }
      
      private function §1!Q§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§@!7§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§9J§.§?X§ && §9J§.§?X§.§-a§)
         {
            dispatchEventOnChildren(new Event(Event.§>!G§));
            if(this.§`Y§ == null)
            {
               this.§`Y§ = new Vector.<§!!P§>(0);
               §9J§.§?X§.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
            }
            §!!P§.§9e§(this,this.§`Y§);
         }
      }
      
      public function §>r§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§9J§.§?X§ && §9J§.§?X§.§-a§)
         {
            if(this.§`Y§)
            {
               §9J§.§?X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
               _loc1_ = this.§`Y§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§`Y§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§`Y§ = null;
            }
         }
      }
      
      private function §!G§(param1:Event) : void
      {
         if(this.§`Y§)
         {
            this.§`Y§ = new Vector.<§!!P§>(0);
            this.flatten();
         }
      }
      
      public function get §^d§() : Boolean
      {
         return this.§`Y§ != null;
      }
      
      override public function render(param1:§0`§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§`Y§ && color == 16777215)
         {
            param1.§"!6§();
            param2 *= this.alpha;
            _loc3_ = this.§`Y§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§`Y§[_loc4_].render(param1.§;!Z§,param1.§-3§,param2);
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
