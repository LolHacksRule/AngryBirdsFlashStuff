package §&!]§
{
   import §'!B§.§'Z§;
   import §'!B§.§0!p§;
   import §'!B§.§8T§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^"C§:Vector.<§'Z§>;
      
      private var §3X§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§1V§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§3X§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§3X§)
         {
            return;
         }
         this.§3X§ = param1;
         if(this.§3X§)
         {
            addEventListener(TouchEvent.§-!E§,this.§4n§);
         }
         else
         {
            removeEventListener(TouchEvent.§-!E§,this.§4n§);
         }
      }
      
      private function §4n§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§%!J§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§8T§.§5!Y§ && §8T§.§5!Y§.§6,§)
         {
            dispatchEventOnChildren(new Event(Event.§#!W§));
            if(this.§^"C§ == null)
            {
               this.§^"C§ = new Vector.<§'Z§>(0);
               §8T§.§5!Y§.addEventListener(Event.CONTEXT3D_CREATE,this.§"!=§);
            }
            §'Z§.§1"9§(this,this.§^"C§);
         }
      }
      
      public function §1V§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§8T§.§5!Y§ && §8T§.§5!Y§.§6,§)
         {
            if(this.§^"C§)
            {
               §8T§.§5!Y§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"!=§);
               _loc1_ = this.§^"C§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§^"C§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§^"C§ = null;
            }
         }
      }
      
      private function §"!=§(param1:Event) : void
      {
         if(this.§^"C§)
         {
            this.§^"C§ = new Vector.<§'Z§>(0);
            this.flatten();
         }
      }
      
      public function get §5";§() : Boolean
      {
         return this.§^"C§ != null;
      }
      
      override public function render(param1:§0!p§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^"C§ && color == 16777215)
         {
            param1.§7!A§();
            param2 *= this.alpha;
            _loc3_ = this.§^"C§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§^"C§[_loc4_].render(param1.§@2§,param1.§-P§,param2);
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
