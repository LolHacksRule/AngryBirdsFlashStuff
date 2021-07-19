package § N§
{
   import §5Z§.§4]§;
   import §5Z§.§[Z§;
   import §5Z§.§]5§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §&e§:Vector.<§]5§>;
      
      private var §while§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§1j§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§while§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§while§)
         {
            return;
         }
         this.§while§ = param1;
         if(this.§while§)
         {
            addEventListener(TouchEvent.§=!?§,this.§;!1§);
         }
         else
         {
            removeEventListener(TouchEvent.§=!?§,this.§;!1§);
         }
      }
      
      private function §;!1§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§'M§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§[Z§.§%m§ && §[Z§.§%m§.§,;§)
         {
            dispatchEventOnChildren(new Event(Event.§"@§));
            if(this.§&e§ == null)
            {
               this.§&e§ = new Vector.<§]5§>(0);
               §[Z§.§%m§.addEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
            }
            §]5§.§[&§(this,this.§&e§);
         }
      }
      
      public function §1j§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§[Z§.§%m§ && §[Z§.§%m§.§,;§)
         {
            if(this.§&e§)
            {
               §[Z§.§%m§.removeEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
               _loc1_ = this.§&e§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§&e§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§&e§ = null;
            }
         }
      }
      
      private function §]!$§(param1:Event) : void
      {
         if(this.§&e§)
         {
            this.§&e§ = new Vector.<§]5§>(0);
            this.flatten();
         }
      }
      
      public function get §^A§() : Boolean
      {
         return this.§&e§ != null;
      }
      
      override public function render(param1:§4]§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§&e§ && color == 16777215)
         {
            param1.§2!0§();
            param2 *= this.alpha;
            _loc3_ = this.§&e§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§&e§[_loc4_].render(param1.§,!D§,param1.§^Z§,param2);
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
