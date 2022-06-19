package §`a§
{
   import § !+§.§!!Q§;
   import § !+§.§%L§;
   import § !+§.§0Z§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §>!6§:Vector.<§!!Q§>;
      
      private var §5!;§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§=b§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5!;§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§5!;§)
         {
            return;
         }
         this.§5!;§ = param1;
         if(this.§5!;§)
         {
            addEventListener(TouchEvent.§4F§,this.§66§);
         }
         else
         {
            removeEventListener(TouchEvent.§4F§,this.§66§);
         }
      }
      
      private function §66§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§0w§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§0Z§.§4J§ && §0Z§.§4J§.§0!J§)
         {
            dispatchEventOnChildren(new Event(Event.§>&§));
            if(this.§>!6§ == null)
            {
               this.§>!6§ = new Vector.<§!!Q§>(0);
               §0Z§.§4J§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
            }
            §!!Q§.§>A§(this,this.§>!6§);
         }
      }
      
      public function §=b§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§0Z§.§4J§ && §0Z§.§4J§.§0!J§)
         {
            if(this.§>!6§)
            {
               §0Z§.§4J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
               _loc1_ = this.§>!6§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§>!6§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§>!6§ = null;
            }
         }
      }
      
      private function §3!%§(param1:Event) : void
      {
         if(this.§>!6§)
         {
            this.§>!6§ = new Vector.<§!!Q§>(0);
            this.flatten();
         }
      }
      
      public function get §#I§() : Boolean
      {
         return this.§>!6§ != null;
      }
      
      override public function render(param1:§%L§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§>!6§ && color == 16777215)
         {
            param1.§3N§();
            param2 *= this.alpha;
            _loc3_ = this.§>!6§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§>!6§[_loc4_].render(param1.§9!>§,param1.§5!8§,param2);
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
