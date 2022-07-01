package §]!2§
{
   import §0!F§.§0!J§;
   import §0!F§.§3`§;
   import §0!F§.§^d§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §"!Y§:Vector.<§0!J§>;
      
      private var §+1§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§^T§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§+1§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§+1§)
         {
            return;
         }
         this.§+1§ = param1;
         if(this.§+1§)
         {
            addEventListener(TouchEvent.§-!k§,this.§-y§);
         }
         else
         {
            removeEventListener(TouchEvent.§-!k§,this.§-y§);
         }
      }
      
      private function §-y§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§ A§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§^d§.§+!f§ && §^d§.§+!f§.§0!@§)
         {
            dispatchEventOnChildren(new Event(Event.§3!@§));
            if(this.§"!Y§ == null)
            {
               this.§"!Y§ = new Vector.<§0!J§>(0);
               §^d§.§+!f§.addEventListener(Event.CONTEXT3D_CREATE,this.§6I§);
            }
            §0!J§.§2U§(this,this.§"!Y§);
         }
      }
      
      public function §^T§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§^d§.§+!f§ && §^d§.§+!f§.§0!@§)
         {
            if(this.§"!Y§)
            {
               §^d§.§+!f§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6I§);
               _loc1_ = this.§"!Y§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§"!Y§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§"!Y§ = null;
            }
         }
      }
      
      private function §6I§(param1:Event) : void
      {
         if(this.§"!Y§)
         {
            this.§"!Y§ = new Vector.<§0!J§>(0);
            this.flatten();
         }
      }
      
      public function get §'!=§() : Boolean
      {
         return this.§"!Y§ != null;
      }
      
      override public function render(param1:§3`§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§"!Y§ && color == 16777215)
         {
            param1.§#T§();
            param2 *= this.alpha;
            _loc3_ = this.§"!Y§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§"!Y§[_loc4_].render(param1.§#!u§,param1.§!!V§,param2);
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
