package §;!Q§
{
   import §-!§.§&!T§;
   import §-!§.§-§;
   import §-!§.§3!5§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §;Z§:Vector.<§&!T§>;
      
      private var §!O§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§^j§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§!O§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§!O§)
         {
            return;
         }
         this.§!O§ = param1;
         if(this.§!O§)
         {
            addEventListener(TouchEvent.§ A§,this.§9!F§);
         }
         else
         {
            removeEventListener(TouchEvent.§ A§,this.§9!F§);
         }
      }
      
      private function §9!F§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§,Z§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§-§.§-G§ && §-§.§-G§.§1o§)
         {
            dispatchEventOnChildren(new Event(Event.§4j§));
            if(this.§;Z§ == null)
            {
               this.§;Z§ = new Vector.<§&!T§>(0);
               §-§.§-G§.addEventListener(Event.CONTEXT3D_CREATE,this.§0C§);
            }
            §&!T§.§2!L§(this,this.§;Z§);
         }
      }
      
      public function §^j§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§-§.§-G§ && §-§.§-G§.§1o§)
         {
            if(this.§;Z§)
            {
               §-§.§-G§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0C§);
               _loc1_ = this.§;Z§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§;Z§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§;Z§ = null;
            }
         }
      }
      
      private function §0C§(param1:Event) : void
      {
         if(this.§;Z§)
         {
            this.§;Z§ = new Vector.<§&!T§>(0);
            this.flatten();
         }
      }
      
      public function get §!p§() : Boolean
      {
         return this.§;Z§ != null;
      }
      
      override public function render(param1:§3!5§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§;Z§ && color == 16777215)
         {
            param1.§0h§();
            param2 *= this.alpha;
            _loc3_ = this.§;Z§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§;Z§[_loc4_].render(param1.§,§,param1.§5B§,param2);
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
