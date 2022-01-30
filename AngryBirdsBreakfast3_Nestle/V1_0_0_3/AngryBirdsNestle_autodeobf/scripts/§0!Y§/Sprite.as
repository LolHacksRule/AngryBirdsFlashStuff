package §0!Y§
{
   import §5!W§.§&@§;
   import §5!W§.§>P§;
   import §5!W§.§`+§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §5!!§:Vector.<§&@§>;
      
      private var §2!'§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§<!7§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§2!'§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§2!'§)
         {
            return;
         }
         this.§2!'§ = param1;
         if(this.§2!'§)
         {
            addEventListener(TouchEvent.§88§,this.§ "§);
         }
         else
         {
            removeEventListener(TouchEvent.§88§,this.§ "§);
         }
      }
      
      private function § "§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§0! §(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§>P§.§;_§ && §>P§.§;_§.§'B§)
         {
            dispatchEventOnChildren(new Event(Event.§2!F§));
            if(this.§5!!§ == null)
            {
               this.§5!!§ = new Vector.<§&@§>(0);
               §>P§.§;_§.addEventListener(Event.CONTEXT3D_CREATE,this.§ !<§);
            }
            §&@§.§,!h§(this,this.§5!!§);
         }
      }
      
      public function §<!7§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§>P§.§;_§ && §>P§.§;_§.§'B§)
         {
            if(this.§5!!§)
            {
               §>P§.§;_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ !<§);
               _loc1_ = this.§5!!§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§5!!§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§5!!§ = null;
            }
         }
      }
      
      private function § !<§(param1:Event) : void
      {
         if(this.§5!!§)
         {
            this.§5!!§ = new Vector.<§&@§>(0);
            this.flatten();
         }
      }
      
      public function get §-"2§() : Boolean
      {
         return this.§5!!§ != null;
      }
      
      override public function render(param1:§`+§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§5!!§ && color == 16777215)
         {
            param1.§9e§();
            param2 *= this.alpha;
            _loc3_ = this.§5!!§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§5!!§[_loc4_].render(param1.§@!C§,param1.§#!@§,param2);
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
