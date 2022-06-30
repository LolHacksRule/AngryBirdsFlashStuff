package §<!-§
{
   import §?!5§.§&2§;
   import §?!5§.§2d§;
   import §?!5§.§;P§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var § !$§:Vector.<§&2§>;
      
      private var §#!V§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§5t§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§#!V§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§#!V§)
         {
            return;
         }
         this.§#!V§ = param1;
         if(this.§#!V§)
         {
            addEventListener(TouchEvent.§^! §,this.§4!8§);
         }
         else
         {
            removeEventListener(TouchEvent.§^! §,this.§4!8§);
         }
      }
      
      private function §4!8§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§4!4§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§2d§.§0A§ && §2d§.§0A§.§'!c§)
         {
            dispatchEventOnChildren(new Event(Event.§[P§));
            if(this.§ !$§ == null)
            {
               this.§ !$§ = new Vector.<§&2§>(0);
               §2d§.§0A§.addEventListener(Event.CONTEXT3D_CREATE,this.§#>§);
            }
            §&2§.§`0§(this,this.§ !$§);
         }
      }
      
      public function §5t§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§2d§.§0A§ && §2d§.§0A§.§'!c§)
         {
            if(this.§ !$§)
            {
               §2d§.§0A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#>§);
               _loc1_ = this.§ !$§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§ !$§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§ !$§ = null;
            }
         }
      }
      
      private function §#>§(param1:Event) : void
      {
         if(this.§ !$§)
         {
            this.§ !$§ = new Vector.<§&2§>(0);
            this.flatten();
         }
      }
      
      public function get §'!9§() : Boolean
      {
         return this.§ !$§ != null;
      }
      
      override public function render(param1:§;P§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§ !$§ && color == 16777215)
         {
            param1.§-J§();
            param2 *= this.alpha;
            _loc3_ = this.§ !$§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§ !$§[_loc4_].render(param1.§ !5§,param1.§8#§,param2);
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
