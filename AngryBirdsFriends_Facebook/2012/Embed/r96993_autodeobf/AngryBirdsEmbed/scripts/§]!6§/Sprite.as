package §]!6§
{
   import §8!#§.§,8§;
   import §8!#§.§-!§;
   import §8!#§.§<n§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §4m§:Vector.<§,8§>;
      
      private var §'D§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§%Y§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§'D§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§'D§)
         {
            return;
         }
         this.§'D§ = param1;
         if(this.§'D§)
         {
            addEventListener(TouchEvent.§0!;§,this.§"!F§);
         }
         else
         {
            removeEventListener(TouchEvent.§0!;§,this.§"!F§);
         }
      }
      
      private function §"!F§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§]2§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§<n§.§?@§ && §<n§.§?@§.§5+§)
         {
            dispatchEventOnChildren(new Event(Event.§#!6§));
            if(this.§4m§ == null)
            {
               this.§4m§ = new Vector.<§,8§>(0);
               §<n§.§?@§.addEventListener(Event.CONTEXT3D_CREATE,this.§80§);
            }
            §,8§.§@!G§(this,this.§4m§);
         }
      }
      
      public function §%Y§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§<n§.§?@§ && §<n§.§?@§.§5+§)
         {
            if(this.§4m§)
            {
               §<n§.§?@§.removeEventListener(Event.CONTEXT3D_CREATE,this.§80§);
               _loc1_ = this.§4m§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§4m§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§4m§ = null;
            }
         }
      }
      
      private function §80§(param1:Event) : void
      {
         if(this.§4m§)
         {
            this.§4m§ = new Vector.<§,8§>(0);
            this.flatten();
         }
      }
      
      public function get §&d§() : Boolean
      {
         return this.§4m§ != null;
      }
      
      override public function render(param1:§-!§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§4m§ && color == 16777215)
         {
            param1.§+y§();
            param2 *= this.alpha;
            _loc3_ = this.§4m§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§4m§[_loc4_].render(param1.context,param1.§3C§,param2);
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
