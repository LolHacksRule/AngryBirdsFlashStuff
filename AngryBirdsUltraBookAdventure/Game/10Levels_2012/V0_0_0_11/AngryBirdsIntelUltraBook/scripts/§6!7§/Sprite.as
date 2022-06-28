package §6!7§
{
   import §0P§.QuadBatch;
   import §0P§.RenderSupport;
   import §0P§.Starling;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §+!'§:Vector.<QuadBatch>;
      
      private var §0!g§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§%s§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§0!g§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§0!g§)
         {
            return;
         }
         this.§0!g§ = param1;
         if(this.§0!g§)
         {
            addEventListener(TouchEvent.§7!;§,this.§%&§);
         }
         else
         {
            removeEventListener(TouchEvent.§7!;§,this.§%&§);
         }
      }
      
      private function §%&§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§+!7§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(Starling.§!!F§ && Starling.§!!F§.§[E§)
         {
            dispatchEventOnChildren(new Event(Event.§0G§));
            if(this.§+!'§ == null)
            {
               this.§+!'§ = new Vector.<QuadBatch>(0);
               Starling.§!!F§.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
            }
            QuadBatch.§#X§(this,this.§+!'§);
         }
      }
      
      public function §%s§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(Starling.§!!F§ && Starling.§!!F§.§[E§)
         {
            if(this.§+!'§)
            {
               Starling.§!!F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
               _loc1_ = this.§+!'§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§+!'§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§+!'§ = null;
            }
         }
      }
      
      private function §[D§(param1:Event) : void
      {
         if(this.§+!'§)
         {
            this.§+!'§ = new Vector.<QuadBatch>(0);
            this.flatten();
         }
      }
      
      public function get § C§() : Boolean
      {
         return this.§+!'§ != null;
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+!'§ && color == 16777215)
         {
            param1.§2^§();
            param2 *= this.alpha;
            _loc3_ = this.§+!'§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§+!'§[_loc4_].render(param1.§#F§,param1.§>!C§,param2);
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
