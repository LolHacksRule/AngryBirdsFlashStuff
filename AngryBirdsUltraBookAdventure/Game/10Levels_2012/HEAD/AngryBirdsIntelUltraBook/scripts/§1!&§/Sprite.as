package §1!&§
{
   import §"$§.QuadBatch;
   import §"$§.RenderSupport;
   import §"$§.Starling;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §!v§:Vector.<QuadBatch>;
      
      private var §+!P§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§"!8§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§+!P§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§+!P§)
         {
            return;
         }
         this.§+!P§ = param1;
         if(this.§+!P§)
         {
            addEventListener(TouchEvent.§@!;§,this.§=o§);
         }
         else
         {
            removeEventListener(TouchEvent.§@!;§,this.§=o§);
         }
      }
      
      private function §=o§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§]!@§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(Starling.§'!A§ && Starling.§'!A§.§6?§)
         {
            dispatchEventOnChildren(new Event(Event.§8Z§));
            if(this.§!v§ == null)
            {
               this.§!v§ = new Vector.<QuadBatch>(0);
               Starling.§'!A§.addEventListener(Event.CONTEXT3D_CREATE,this.§>!R§);
            }
            QuadBatch.§#U§(this,this.§!v§);
         }
      }
      
      public function §"!8§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(Starling.§'!A§ && Starling.§'!A§.§6?§)
         {
            if(this.§!v§)
            {
               Starling.§'!A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>!R§);
               _loc1_ = this.§!v§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§!v§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§!v§ = null;
            }
         }
      }
      
      private function §>!R§(param1:Event) : void
      {
         if(this.§!v§)
         {
            this.§!v§ = new Vector.<QuadBatch>(0);
            this.flatten();
         }
      }
      
      public function get §`1§() : Boolean
      {
         return this.§!v§ != null;
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§!v§ && color == 16777215)
         {
            param1.§&M§();
            param2 *= this.alpha;
            _loc3_ = this.§!v§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§!v§[_loc4_].render(param1.§6!&§,param1.§+!&§,param2);
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
