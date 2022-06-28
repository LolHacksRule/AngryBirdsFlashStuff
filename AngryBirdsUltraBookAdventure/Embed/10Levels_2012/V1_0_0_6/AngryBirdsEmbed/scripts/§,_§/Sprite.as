package §,_§
{
   import §catch§.§'d§;
   import §catch§.§2O§;
   import §catch§.§4@§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §,!D§:Vector.<§2O§>;
      
      private var §9!@§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§6L§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§9!@§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§9!@§)
         {
            return;
         }
         this.§9!@§ = param1;
         if(this.§9!@§)
         {
            addEventListener(TouchEvent.§8m§,this.§3R§);
         }
         else
         {
            removeEventListener(TouchEvent.§8m§,this.§3R§);
         }
      }
      
      private function §3R§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§`s§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§4@§.§0W§ && §4@§.§0W§.§[!#§)
         {
            dispatchEventOnChildren(new Event(Event.§02§));
            if(this.§,!D§ == null)
            {
               this.§,!D§ = new Vector.<§2O§>(0);
               §4@§.§0W§.addEventListener(Event.CONTEXT3D_CREATE,this.§]B§);
            }
            §2O§.§;B§(this,this.§,!D§);
         }
      }
      
      public function §6L§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§4@§.§0W§ && §4@§.§0W§.§[!#§)
         {
            if(this.§,!D§)
            {
               §4@§.§0W§.removeEventListener(Event.CONTEXT3D_CREATE,this.§]B§);
               _loc1_ = this.§,!D§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§,!D§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§,!D§ = null;
            }
         }
      }
      
      private function §]B§(param1:Event) : void
      {
         if(this.§,!D§)
         {
            this.§,!D§ = new Vector.<§2O§>(0);
            this.flatten();
         }
      }
      
      public function get § N§() : Boolean
      {
         return this.§,!D§ != null;
      }
      
      override public function render(param1:§'d§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§,!D§ && color == 16777215)
         {
            param1.§--§();
            param2 *= this.alpha;
            _loc3_ = this.§,!D§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§,!D§[_loc4_].render(param1.context,param1.§get §,param2);
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
