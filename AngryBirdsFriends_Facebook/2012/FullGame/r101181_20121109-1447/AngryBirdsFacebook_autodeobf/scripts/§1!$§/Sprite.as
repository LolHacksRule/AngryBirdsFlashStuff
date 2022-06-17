package §1!$§
{
   import §'6§.§"]§;
   import §'6§.§'"3§;
   import §'6§.§[!f§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §3!p§:Vector.<§[!f§>;
      
      private var §-[§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§4l§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§-[§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§-[§)
         {
            return;
         }
         this.§-[§ = param1;
         if(this.§-[§)
         {
            addEventListener(TouchEvent.§2t§,this.§]!p§);
         }
         else
         {
            removeEventListener(TouchEvent.§2t§,this.§]!p§);
         }
      }
      
      private function §]!p§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§,-§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§"]§.§!X§ && §"]§.§!X§.§<Z§)
         {
            dispatchEventOnChildren(new Event(Event.§'!l§));
            if(this.§3!p§ == null)
            {
               this.§3!p§ = new Vector.<§[!f§>(0);
               §"]§.§!X§.addEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
            }
            §[!f§.§40§(this,this.§3!p§);
         }
      }
      
      public function §4l§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§"]§.§!X§ && §"]§.§!X§.§<Z§)
         {
            if(this.§3!p§)
            {
               §"]§.§!X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
               _loc1_ = this.§3!p§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§3!p§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§3!p§ = null;
            }
         }
      }
      
      private function §-""§(param1:Event) : void
      {
         if(this.§3!p§)
         {
            this.§3!p§ = new Vector.<§[!f§>(0);
            this.flatten();
         }
      }
      
      public function get §>2§() : Boolean
      {
         return this.§3!p§ != null;
      }
      
      override public function render(param1:§'"3§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§3!p§ && color == 16777215)
         {
            param1.§-!=§();
            param2 *= this.alpha;
            _loc3_ = this.§3!p§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§3!p§[_loc4_].render(param1.§,§,param1.§&b§,param2);
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
