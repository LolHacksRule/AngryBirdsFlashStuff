package §<!N§
{
   import §^h§.§2l§;
   import §^h§.§?!D§;
   import §^h§.§^M§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §?B§:Vector.<§^M§>;
      
      private var §0!P§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§!0§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§0!P§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§0!P§)
         {
            return;
         }
         this.§0!P§ = param1;
         if(this.§0!P§)
         {
            addEventListener(TouchEvent.§+2§,this.§#!'§);
         }
         else
         {
            removeEventListener(TouchEvent.§+2§,this.§#!'§);
         }
      }
      
      private function §#!'§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§'y§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§2l§.§7K§ && §2l§.§7K§.§<k§)
         {
            dispatchEventOnChildren(new Event(Event.§`j§));
            if(this.§?B§ == null)
            {
               this.§?B§ = new Vector.<§^M§>(0);
               §2l§.§7K§.addEventListener(Event.CONTEXT3D_CREATE,this.§-z§);
            }
            §^M§.§3y§(this,this.§?B§);
         }
      }
      
      public function §!0§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§2l§.§7K§ && §2l§.§7K§.§<k§)
         {
            if(this.§?B§)
            {
               §2l§.§7K§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-z§);
               _loc1_ = this.§?B§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§?B§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§?B§ = null;
            }
         }
      }
      
      private function §-z§(param1:Event) : void
      {
         if(this.§?B§)
         {
            this.§?B§ = new Vector.<§^M§>(0);
            this.flatten();
         }
      }
      
      public function get §in§() : Boolean
      {
         return this.§?B§ != null;
      }
      
      override public function render(param1:§?!D§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§?B§ && color == 16777215)
         {
            param1.§3!P§();
            param2 *= this.alpha;
            _loc3_ = this.§?B§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§?B§[_loc4_].render(param1.§]7§,param1.§?D§,param2);
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
