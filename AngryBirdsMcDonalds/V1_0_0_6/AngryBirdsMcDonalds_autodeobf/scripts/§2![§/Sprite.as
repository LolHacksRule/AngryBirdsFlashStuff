package §2![§
{
   import §=!K§.§>[§;
   import §=!K§.§^^§;
   import §=!K§.§do§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §6T§:Vector.<§^^§>;
      
      private var §<!_§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§]T§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§<!_§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§<!_§)
         {
            return;
         }
         this.§<!_§ = param1;
         if(this.§<!_§)
         {
            addEventListener(TouchEvent.§#+§,this.§7a§);
         }
         else
         {
            removeEventListener(TouchEvent.§#+§,this.§7a§);
         }
      }
      
      private function §7a§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§2!P§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§do§.§4!G§ && §do§.§4!G§.§%!=§)
         {
            dispatchEventOnChildren(new Event(Event.§!>§));
            if(this.§6T§ == null)
            {
               this.§6T§ = new Vector.<§^^§>(0);
               §do§.§4!G§.addEventListener(Event.CONTEXT3D_CREATE,this.§<g§);
            }
            §^^§.§+>§(this,this.§6T§);
         }
      }
      
      public function §]T§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§do§.§4!G§ && §do§.§4!G§.§%!=§)
         {
            if(this.§6T§)
            {
               §do§.§4!G§.removeEventListener(Event.CONTEXT3D_CREATE,this.§<g§);
               _loc1_ = this.§6T§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§6T§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§6T§ = null;
            }
         }
      }
      
      private function §<g§(param1:Event) : void
      {
         if(this.§6T§)
         {
            this.§6T§ = new Vector.<§^^§>(0);
            this.flatten();
         }
      }
      
      public function get §&>§() : Boolean
      {
         return this.§6T§ != null;
      }
      
      override public function render(param1:§>[§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§6T§ && color == 16777215)
         {
            param1.§59§();
            param2 *= this.alpha;
            _loc3_ = this.§6T§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§6T§[_loc4_].render(param1.§15§,param1.§'!§,param2);
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
