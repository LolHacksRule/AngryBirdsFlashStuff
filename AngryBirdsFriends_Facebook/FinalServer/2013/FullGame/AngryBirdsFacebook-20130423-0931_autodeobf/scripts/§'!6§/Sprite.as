package §'!6§
{
   import §"a§.§!"J§;
   import §"a§.§0!B§;
   import §"a§.§>w§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §7A§:Vector.<§0!B§>;
      
      private var §5!H§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§!!>§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5!H§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§5!H§)
         {
            return;
         }
         this.§5!H§ = param1;
         if(this.§5!H§)
         {
            addEventListener(TouchEvent.§<!M§,this.§4@§);
         }
         else
         {
            removeEventListener(TouchEvent.§<!M§,this.§4@§);
         }
      }
      
      private function §4@§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§4g§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§!"J§.§1&§ && §!"J§.§1&§.§28§)
         {
            dispatchEventOnChildren(new Event(Event.§1!`§));
            if(this.§7A§ == null)
            {
               this.§7A§ = new Vector.<§0!B§>(0);
               §!"J§.§1&§.addEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
            }
            §0!B§.§4!t§(this,this.§7A§);
         }
      }
      
      public function §!!>§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§!"J§.§1&§ && §!"J§.§1&§.§28§)
         {
            if(this.§7A§)
            {
               §!"J§.§1&§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
               _loc1_ = this.§7A§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§7A§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§7A§ = null;
            }
         }
      }
      
      private function §?3§(param1:Event) : void
      {
         if(this.§7A§)
         {
            this.§7A§ = new Vector.<§0!B§>(0);
            this.flatten();
         }
      }
      
      public function get §-k§() : Boolean
      {
         return this.§7A§ != null;
      }
      
      override public function render(param1:§>w§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§7A§ && color == 16777215)
         {
            param1.§1"U§();
            param2 *= this.alpha;
            _loc3_ = this.§7A§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§7A§[_loc4_].render(param1.§;"-§,param1.§=n§,param2);
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
