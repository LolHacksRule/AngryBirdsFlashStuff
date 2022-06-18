package §,H§
{
   import §2!P§.§6=§;
   import §2!P§.§?!1§;
   import §2!P§.§@9§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §0m§:Vector.<§?!1§>;
      
      private var §%B§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§4!4§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§%B§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§%B§)
         {
            return;
         }
         this.§%B§ = param1;
         if(this.§%B§)
         {
            addEventListener(TouchEvent.§7X§,this.§8=§);
         }
         else
         {
            removeEventListener(TouchEvent.§7X§,this.§8=§);
         }
      }
      
      private function §8=§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§"v§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§6=§.§4!8§ && §6=§.§4!8§.§6![§)
         {
            dispatchEventOnChildren(new Event(Event.§[y§));
            if(this.§0m§ == null)
            {
               this.§0m§ = new Vector.<§?!1§>(0);
               §6=§.§4!8§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!A§);
            }
            §?!1§.§6!U§(this,this.§0m§);
         }
      }
      
      public function §4!4§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§6=§.§4!8§ && §6=§.§4!8§.§6![§)
         {
            if(this.§0m§)
            {
               §6=§.§4!8§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!A§);
               _loc1_ = this.§0m§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§0m§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§0m§ = null;
            }
         }
      }
      
      private function §#!A§(param1:Event) : void
      {
         if(this.§0m§)
         {
            this.§0m§ = new Vector.<§?!1§>(0);
            this.flatten();
         }
      }
      
      public function get §,!a§() : Boolean
      {
         return this.§0m§ != null;
      }
      
      override public function render(param1:§@9§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§0m§ && color == 16777215)
         {
            param1.§ a§();
            param2 *= this.alpha;
            _loc3_ = this.§0m§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§0m§[_loc4_].render(param1.§+V§,param1.§8!M§,param2);
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
