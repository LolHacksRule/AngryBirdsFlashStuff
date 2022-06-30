package §6!;§
{
   import §&L§.§'I§;
   import §&L§.§<!U§;
   import §&L§.§?]§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §case §:Vector.<§<!U§>;
      
      private var §8!4§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§null §();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§8!4§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§8!4§)
         {
            return;
         }
         this.§8!4§ = param1;
         if(this.§8!4§)
         {
            addEventListener(TouchEvent.§9q§,this.§[!Y§);
         }
         else
         {
            removeEventListener(TouchEvent.§9q§,this.§[!Y§);
         }
      }
      
      private function §[!Y§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§&4§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§?]§.§`!H§ && §?]§.§`!H§.§?k§)
         {
            dispatchEventOnChildren(new Event(Event.§"U§));
            if(this.§case § == null)
            {
               this.§case § = new Vector.<§<!U§>(0);
               §?]§.§`!H§.addEventListener(Event.CONTEXT3D_CREATE,this.§7!g§);
            }
            §<!U§.§,X§(this,this.§case §);
         }
      }
      
      public function §null §() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§?]§.§`!H§ && §?]§.§`!H§.§?k§)
         {
            if(this.§case §)
            {
               §?]§.§`!H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§7!g§);
               _loc1_ = this.§case §.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§case §[_loc2_].dispose();
                  _loc2_++;
               }
               this.§case § = null;
            }
         }
      }
      
      private function §7!g§(param1:Event) : void
      {
         if(this.§case §)
         {
            this.§case § = new Vector.<§<!U§>(0);
            this.flatten();
         }
      }
      
      public function get §>w§() : Boolean
      {
         return this.§case § != null;
      }
      
      override public function render(param1:§'I§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§case § && color == 16777215)
         {
            param1.§`w§();
            param2 *= this.alpha;
            _loc3_ = this.§case §.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§case §[_loc4_].render(param1.§-!M§,param1.§,7§,param2);
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
