package §7!B§
{
   import §!!K§.§?%§;
   import §!!K§.§`L§;
   import §!!K§.§else§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §0!H§:Vector.<§`L§>;
      
      private var §5E§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§&-§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5E§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§5E§)
         {
            return;
         }
         this.§5E§ = param1;
         if(this.§5E§)
         {
            addEventListener(TouchEvent.§^!>§,this.§`!D§);
         }
         else
         {
            removeEventListener(TouchEvent.§^!>§,this.§`!D§);
         }
      }
      
      private function §`!D§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§;L§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§else§.§^!A§ && §else§.§^!A§.§,i§)
         {
            dispatchEventOnChildren(new Event(Event.§]!+§));
            if(this.§0!H§ == null)
            {
               this.§0!H§ = new Vector.<§`L§>(0);
               §else§.§^!A§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!r§);
            }
            §`L§.§+!&§(this,this.§0!H§);
         }
      }
      
      public function §&-§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§else§.§^!A§ && §else§.§^!A§.§,i§)
         {
            if(this.§0!H§)
            {
               §else§.§^!A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!r§);
               _loc1_ = this.§0!H§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§0!H§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§0!H§ = null;
            }
         }
      }
      
      private function §3!r§(param1:Event) : void
      {
         if(this.§0!H§)
         {
            this.§0!H§ = new Vector.<§`L§>(0);
            this.flatten();
         }
      }
      
      public function get §?S§() : Boolean
      {
         return this.§0!H§ != null;
      }
      
      override public function render(param1:§?%§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§0!H§ && color == 16777215)
         {
            param1.§8l§();
            param2 *= this.alpha;
            _loc3_ = this.§0!H§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§0!H§[_loc4_].render(param1.§5Y§,param1.§7!n§,param2);
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
