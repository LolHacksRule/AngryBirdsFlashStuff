package §&c§
{
   import § %§.§3!e§;
   import § %§.§?!I§;
   import § %§.§`M§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §1!o§:Vector.<§?!I§>;
      
      private var §-0§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§]!D§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§-0§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§-0§)
         {
            return;
         }
         this.§-0§ = param1;
         if(this.§-0§)
         {
            addEventListener(TouchEvent.§6A§,this.§!C§);
         }
         else
         {
            removeEventListener(TouchEvent.§6A§,this.§!C§);
         }
      }
      
      private function §!C§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§@!I§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§`M§.§93§ && §`M§.§93§.§2!5§)
         {
            dispatchEventOnChildren(new Event(Event.override));
            if(this.§1!o§ == null)
            {
               this.§1!o§ = new Vector.<§?!I§>(0);
               §`M§.§93§.addEventListener(Event.CONTEXT3D_CREATE,this.§[b§);
            }
            §?!I§.§+4§(this,this.§1!o§);
         }
      }
      
      public function §]!D§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§`M§.§93§ && §`M§.§93§.§2!5§)
         {
            if(this.§1!o§)
            {
               §`M§.§93§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[b§);
               _loc1_ = this.§1!o§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§1!o§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§1!o§ = null;
            }
         }
      }
      
      private function §[b§(param1:Event) : void
      {
         if(this.§1!o§)
         {
            this.§1!o§ = new Vector.<§?!I§>(0);
            this.flatten();
         }
      }
      
      public function get §&S§() : Boolean
      {
         return this.§1!o§ != null;
      }
      
      override public function render(param1:§3!e§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§1!o§ && color == 16777215)
         {
            param1.§ get§();
            param2 *= this.alpha;
            _loc3_ = this.§1!o§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§1!o§[_loc4_].render(param1.§ !L§,param1.§7!P§,param2);
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
