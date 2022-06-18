package §;^§
{
   import §??§.§!0§;
   import §??§.§'§;
   import §??§.§5!@§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §3>§:Vector.<§'§>;
      
      private var §%L§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§?m§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§%L§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§%L§)
         {
            return;
         }
         this.§%L§ = param1;
         if(this.§%L§)
         {
            addEventListener(TouchEvent.§0!K§,this.§`!1§);
         }
         else
         {
            removeEventListener(TouchEvent.§0!K§,this.§`!1§);
         }
      }
      
      private function §`!1§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§%c§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§5!@§.§8%§ && §5!@§.§8%§.§8§)
         {
            dispatchEventOnChildren(new Event(Event.§9d§));
            if(this.§3>§ == null)
            {
               this.§3>§ = new Vector.<§'§>(0);
               §5!@§.§8%§.addEventListener(Event.CONTEXT3D_CREATE,this.§5f§);
            }
            §'§.§,E§(this,this.§3>§);
         }
      }
      
      public function §?m§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§5!@§.§8%§ && §5!@§.§8%§.§8§)
         {
            if(this.§3>§)
            {
               §5!@§.§8%§.removeEventListener(Event.CONTEXT3D_CREATE,this.§5f§);
               _loc1_ = this.§3>§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§3>§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§3>§ = null;
            }
         }
      }
      
      private function §5f§(param1:Event) : void
      {
         if(this.§3>§)
         {
            this.§3>§ = new Vector.<§'§>(0);
            this.flatten();
         }
      }
      
      public function get §>d§() : Boolean
      {
         return this.§3>§ != null;
      }
      
      override public function render(param1:§!0§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§3>§ && color == 16777215)
         {
            param1.§;x§();
            param2 *= this.alpha;
            _loc3_ = this.§3>§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§3>§[_loc4_].render(param1.context,param1.§'X§,param2);
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
