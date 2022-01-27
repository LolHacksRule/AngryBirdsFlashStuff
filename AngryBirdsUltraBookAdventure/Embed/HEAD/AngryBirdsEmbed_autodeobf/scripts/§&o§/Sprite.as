package §&o§
{
   import §=!0§.§2N§;
   import §=!0§.§>4§;
   import §=!0§.§>I§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §6e§:Vector.<§>4§>;
      
      private var §#>§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§>,§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§#>§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§#>§)
         {
            return;
         }
         this.§#>§ = param1;
         if(this.§#>§)
         {
            addEventListener(TouchEvent.§7!4§,this.§2h§);
         }
         else
         {
            removeEventListener(TouchEvent.§7!4§,this.§2h§);
         }
      }
      
      private function §2h§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§&Q§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§>I§.§`S§ && §>I§.§`S§.§09§)
         {
            dispatchEventOnChildren(new Event(Event.§0@§));
            if(this.§6e§ == null)
            {
               this.§6e§ = new Vector.<§>4§>(0);
               §>I§.§`S§.addEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
            }
            §>4§.§4S§(this,this.§6e§);
         }
      }
      
      public function §>,§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§>I§.§`S§ && §>I§.§`S§.§09§)
         {
            if(this.§6e§)
            {
               §>I§.§`S§.removeEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
               _loc1_ = this.§6e§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§6e§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§6e§ = null;
            }
         }
      }
      
      private function §@!C§(param1:Event) : void
      {
         if(this.§6e§)
         {
            this.§6e§ = new Vector.<§>4§>(0);
            this.flatten();
         }
      }
      
      public function get §[G§() : Boolean
      {
         return this.§6e§ != null;
      }
      
      override public function render(param1:§2N§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§6e§ && color == 16777215)
         {
            param1.§6J§();
            param2 *= this.alpha;
            _loc3_ = this.§6e§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§6e§[_loc4_].render(param1.context,param1.§false§,param2);
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
