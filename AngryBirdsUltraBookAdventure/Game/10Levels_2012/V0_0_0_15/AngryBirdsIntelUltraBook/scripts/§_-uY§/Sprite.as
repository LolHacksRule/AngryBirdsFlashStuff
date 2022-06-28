package §_-uY§
{
   import §_-0Ea§.§_-AY§;
   import §_-0Ea§.§_-XW§;
   import §_-0Ea§.§_-zM§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-04§:Vector.<§_-XW§>;
      
      private var §_-S5§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-6e§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§_-S5§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§_-S5§)
         {
            return;
         }
         this.§_-S5§ = param1;
         if(this.§_-S5§)
         {
            addEventListener(TouchEvent.§_-ed§,this.§_-04d§);
         }
         else
         {
            removeEventListener(TouchEvent.§_-ed§,this.§_-04d§);
         }
      }
      
      private function §_-04d§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§_-Se§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§_-AY§.§_-un§ && §_-AY§.§_-un§.§_-M7§)
         {
            dispatchEventOnChildren(new Event(Event.§_-YD§));
            if(this.§_-04§ == null)
            {
               this.§_-04§ = new Vector.<§_-XW§>(0);
               §_-AY§.§_-un§.addEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
            }
            §_-XW§.§_-go§(this,this.§_-04§);
         }
      }
      
      public function §_-6e§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§_-AY§.§_-un§ && §_-AY§.§_-un§.§_-M7§)
         {
            if(this.§_-04§)
            {
               §_-AY§.§_-un§.removeEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
               _loc1_ = this.§_-04§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§_-04§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§_-04§ = null;
            }
         }
      }
      
      private function §_-Hs§(param1:Event) : void
      {
         if(this.§_-04§)
         {
            this.§_-04§ = new Vector.<§_-XW§>(0);
            this.flatten();
         }
      }
      
      public function get §_-088§() : Boolean
      {
         return this.§_-04§ != null;
      }
      
      override public function render(param1:§_-zM§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§_-04§ && color == 16777215)
         {
            param1.§_-oR§();
            param2 *= this.alpha;
            _loc3_ = this.§_-04§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§_-04§[_loc4_].render(param1.§_-FC§,param1.§_-bc§,param2);
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
