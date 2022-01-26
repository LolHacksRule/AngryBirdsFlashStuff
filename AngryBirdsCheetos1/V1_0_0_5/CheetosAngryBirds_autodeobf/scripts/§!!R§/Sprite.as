package §!!R§
{
   import §7W§.§ !+§;
   import §7W§.§4!8§;
   import §7W§.§[C§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §4#§:Vector.<§[C§>;
      
      private var §>!6§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§5!;§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§>!6§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§>!6§)
         {
            return;
         }
         this.§>!6§ = param1;
         if(this.§>!6§)
         {
            addEventListener(TouchEvent.§[m§,this.§7z§);
         }
         else
         {
            removeEventListener(TouchEvent.§[m§,this.§7z§);
         }
      }
      
      private function §7z§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§>6§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§ !+§.§ Z§ && § !+§.§ Z§.§9!#§)
         {
            dispatchEventOnChildren(new Event(Event.§0!9§));
            if(this.§4#§ == null)
            {
               this.§4#§ = new Vector.<§[C§>(0);
               § !+§.§ Z§.addEventListener(Event.CONTEXT3D_CREATE,this.§>D§);
            }
            §[C§.§5l§(this,this.§4#§);
         }
      }
      
      public function §5!;§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§ !+§.§ Z§ && § !+§.§ Z§.§9!#§)
         {
            if(this.§4#§)
            {
               § !+§.§ Z§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>D§);
               _loc1_ = this.§4#§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§4#§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§4#§ = null;
            }
         }
      }
      
      private function §>D§(param1:Event) : void
      {
         if(this.§4#§)
         {
            this.§4#§ = new Vector.<§[C§>(0);
            this.flatten();
         }
      }
      
      public function get §=b§() : Boolean
      {
         return this.§4#§ != null;
      }
      
      override public function render(param1:§4!8§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§4#§ && color == 16777215)
         {
            param1.§5!8§();
            param2 *= this.alpha;
            _loc3_ = this.§4#§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§4#§[_loc4_].render(param1.§+!T§,param1.§4!<§,param2);
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
