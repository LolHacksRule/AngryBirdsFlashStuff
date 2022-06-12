package §7q§
{
   import §-N§.§,!p§;
   import §-N§.§=!]§;
   import §-N§.§?!y§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §!!T§:Vector.<§?!y§>;
      
      private var §=O§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§^!5§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§=O§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§=O§)
         {
            return;
         }
         this.§=O§ = param1;
         if(this.§=O§)
         {
            addEventListener(TouchEvent.§!"8§,this.§-!3§);
         }
         else
         {
            removeEventListener(TouchEvent.§!"8§,this.§-!3§);
         }
      }
      
      private function §-!3§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§@C§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§=!]§.§@§ && §=!]§.§@§.§<[§)
         {
            dispatchEventOnChildren(new Event(Event.§>-§));
            if(this.§!!T§ == null)
            {
               this.§!!T§ = new Vector.<§?!y§>(0);
               §=!]§.§@§.addEventListener(Event.CONTEXT3D_CREATE,this.§0V§);
            }
            §?!y§.§9"8§(this,this.§!!T§);
         }
      }
      
      public function §^!5§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§=!]§.§@§ && §=!]§.§@§.§<[§)
         {
            if(this.§!!T§)
            {
               §=!]§.§@§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0V§);
               _loc1_ = this.§!!T§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§!!T§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§!!T§ = null;
            }
         }
      }
      
      private function §0V§(param1:Event) : void
      {
         if(this.§!!T§)
         {
            this.§!!T§ = new Vector.<§?!y§>(0);
            this.flatten();
         }
      }
      
      public function get §#!M§() : Boolean
      {
         return this.§!!T§ != null;
      }
      
      override public function render(param1:§,!p§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§!!T§ && color == 16777215)
         {
            param1.§5E§();
            param2 *= this.alpha;
            _loc3_ = this.§!!T§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§!!T§[_loc4_].render(param1.§3",§,param1.§^!8§,param2);
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
