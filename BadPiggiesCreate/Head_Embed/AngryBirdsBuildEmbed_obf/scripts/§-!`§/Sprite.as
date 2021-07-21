package §-!`§
{
   import §@!X§.§"W§;
   import §@!X§.§#L§;
   import §@!X§.§7j§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §`!,§:Vector.<§#L§>;
      
      private var §<u§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§!u§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§<u§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§<u§)
         {
            return;
         }
         this.§<u§ = param1;
         if(this.§<u§)
         {
            addEventListener(TouchEvent.§1C§,this.§6!j§);
         }
         else
         {
            removeEventListener(TouchEvent.§1C§,this.§6!j§);
         }
      }
      
      private function §6!j§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§]W§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§7j§.§else§ && §7j§.§else§.§3!g§)
         {
            dispatchEventOnChildren(new Event(Event.§^!g§));
            if(this.§`!,§ == null)
            {
               this.§`!,§ = new Vector.<§#L§>(0);
               §7j§.§else§.addEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
            }
            §#L§.§0z§(this,this.§`!,§);
         }
      }
      
      public function §!u§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§7j§.§else§ && §7j§.§else§.§3!g§)
         {
            if(this.§`!,§)
            {
               §7j§.§else§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
               _loc1_ = this.§`!,§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§`!,§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§`!,§ = null;
            }
         }
      }
      
      private function §=!S§(param1:Event) : void
      {
         if(this.§`!,§)
         {
            this.§`!,§ = new Vector.<§#L§>(0);
            this.flatten();
         }
      }
      
      public function get §;!_§() : Boolean
      {
         return this.§`!,§ != null;
      }
      
      override public function render(param1:§"W§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§`!,§ && color == 16777215)
         {
            param1.§<Q§();
            param2 *= this.alpha;
            _loc3_ = this.§`!,§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§`!,§[_loc4_].render(param1.context,param1.§7!0§,param2);
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
