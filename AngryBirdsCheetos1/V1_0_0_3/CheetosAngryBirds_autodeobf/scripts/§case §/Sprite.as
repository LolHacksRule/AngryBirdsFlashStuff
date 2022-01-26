package §case §
{
   import §_-KM§.§_-0A§;
   import §_-KM§.§_-H9§;
   import §_-KM§.§_-g8§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-Xt§:Vector.<§_-g8§>;
      
      private var §_-z4§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-S0§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§_-z4§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§_-z4§)
         {
            return;
         }
         this.§_-z4§ = param1;
         if(this.§_-z4§)
         {
            addEventListener(TouchEvent.§_-AB§,this.§_-xA§);
         }
         else
         {
            removeEventListener(TouchEvent.§_-AB§,this.§_-xA§);
         }
      }
      
      private function §_-xA§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§_-oe§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§_-0A§.§_-bz§ && §_-0A§.§_-bz§.§_-0--§)
         {
            dispatchEventOnChildren(new Event(Event.§_-ap§));
            if(this.§_-Xt§ == null)
            {
               this.§_-Xt§ = new Vector.<§_-g8§>(0);
               §_-0A§.§_-bz§.addEventListener(Event.CONTEXT3D_CREATE,this.§_-DW§);
            }
            §_-g8§.§_-SO§(this,this.§_-Xt§);
         }
      }
      
      public function §_-S0§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§_-0A§.§_-bz§ && §_-0A§.§_-bz§.§_-0--§)
         {
            if(this.§_-Xt§)
            {
               §_-0A§.§_-bz§.removeEventListener(Event.CONTEXT3D_CREATE,this.§_-DW§);
               _loc1_ = this.§_-Xt§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§_-Xt§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§_-Xt§ = null;
            }
         }
      }
      
      private function §_-DW§(param1:Event) : void
      {
         if(this.§_-Xt§)
         {
            this.§_-Xt§ = new Vector.<§_-g8§>(0);
            this.flatten();
         }
      }
      
      public function get §_-2q§() : Boolean
      {
         return this.§_-Xt§ != null;
      }
      
      override public function render(param1:§_-H9§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§_-Xt§ && color == 16777215)
         {
            param1.§_-Pd§();
            param2 *= this.alpha;
            _loc3_ = this.§_-Xt§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§_-Xt§[_loc4_].render(param1.§_-6W§,param1.§_-Tj§,param2);
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
