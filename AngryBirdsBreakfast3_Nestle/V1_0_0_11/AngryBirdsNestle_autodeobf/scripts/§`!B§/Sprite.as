package §`!B§
{
   import §=!d§.§5!5§;
   import §=!d§.§6!0§;
   import §=!d§.§`J§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §!Q§:Vector.<§6!0§>;
      
      private var §4!0§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§-!!§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§4!0§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§4!0§)
         {
            return;
         }
         this.§4!0§ = param1;
         if(this.§4!0§)
         {
            addEventListener(TouchEvent.§-o§,this.§%"6§);
         }
         else
         {
            removeEventListener(TouchEvent.§-o§,this.§%"6§);
         }
      }
      
      private function §%"6§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§0M§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§5!5§.§^'§ && §5!5§.§^'§.§#A§)
         {
            dispatchEventOnChildren(new Event(Event.§=`§));
            if(this.§!Q§ == null)
            {
               this.§!Q§ = new Vector.<§6!0§>(0);
               §5!5§.§^'§.addEventListener(Event.CONTEXT3D_CREATE,this.§5J§);
            }
            §6!0§.§2!+§(this,this.§!Q§);
         }
      }
      
      public function §-!!§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§5!5§.§^'§ && §5!5§.§^'§.§#A§)
         {
            if(this.§!Q§)
            {
               §5!5§.§^'§.removeEventListener(Event.CONTEXT3D_CREATE,this.§5J§);
               _loc1_ = this.§!Q§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§!Q§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§!Q§ = null;
            }
         }
      }
      
      private function §5J§(param1:Event) : void
      {
         if(this.§!Q§)
         {
            this.§!Q§ = new Vector.<§6!0§>(0);
            this.flatten();
         }
      }
      
      public function get §%!v§() : Boolean
      {
         return this.§!Q§ != null;
      }
      
      override public function render(param1:§`J§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§!Q§ && color == 16777215)
         {
            param1.§,! §();
            param2 *= this.alpha;
            _loc3_ = this.§!Q§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§!Q§[_loc4_].render(param1.§9!$§,param1.§2!x§,param2);
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
