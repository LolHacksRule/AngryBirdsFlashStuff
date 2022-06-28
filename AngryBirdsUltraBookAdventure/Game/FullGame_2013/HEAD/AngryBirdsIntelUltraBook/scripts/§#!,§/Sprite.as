package §#!,§
{
   import §7!>§.QuadBatch;
   import §7!>§.RenderSupport;
   import §7!>§.Starling;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^4§:Vector.<QuadBatch>;
      
      private var §?!e§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§&!b§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§?!e§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§?!e§)
         {
            return;
         }
         this.§?!e§ = param1;
         if(this.§?!e§)
         {
            addEventListener(TouchEvent.§1!P§,this.§2c§);
         }
         else
         {
            removeEventListener(TouchEvent.§1!P§,this.§2c§);
         }
      }
      
      private function §2c§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§7q§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(Starling.§7!+§ && Starling.§7!+§.§']§)
         {
            dispatchEventOnChildren(new Event(Event.§0!!§));
            if(this.§^4§ == null)
            {
               this.§^4§ = new Vector.<QuadBatch>(0);
               Starling.§7!+§.addEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
            }
            QuadBatch.§,!$§(this,this.§^4§);
         }
      }
      
      public function §&!b§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(Starling.§7!+§ && Starling.§7!+§.§']§)
         {
            if(this.§^4§)
            {
               Starling.§7!+§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
               _loc1_ = this.§^4§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§^4§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§^4§ = null;
            }
         }
      }
      
      private function §8!<§(param1:Event) : void
      {
         if(this.§^4§)
         {
            this.§^4§ = new Vector.<QuadBatch>(0);
            this.flatten();
         }
      }
      
      public function get §@o§() : Boolean
      {
         return this.§^4§ != null;
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^4§ && color == 16777215)
         {
            param1.§"!§();
            param2 *= this.alpha;
            _loc3_ = this.§^4§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§^4§[_loc4_].render(param1.§0v§,param1.§<!=§,param2);
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
