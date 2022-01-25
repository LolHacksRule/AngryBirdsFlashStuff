package § !K§
{
   import §6l§.§23§;
   import §6l§.§79§;
   import §6l§.§9d§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^!,§:Vector.<§9d§>;
      
      private var §0!C§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§8!L§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§0!C§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§0!C§)
         {
            return;
         }
         this.§0!C§ = param1;
         if(this.§0!C§)
         {
            addEventListener(TouchEvent.§6K§,this.§1V§);
         }
         else
         {
            removeEventListener(TouchEvent.§6K§,this.§1V§);
         }
      }
      
      private function §1V§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§5!1§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§79§.§#[§ && §79§.§#[§.§<1§)
         {
            dispatchEventOnChildren(new Event(Event.§3p§));
            if(this.§^!,§ == null)
            {
               this.§^!,§ = new Vector.<§9d§>(0);
               §79§.§#[§.addEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
            }
            §9d§.§0<§(this,this.§^!,§);
         }
      }
      
      public function §8!L§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§79§.§#[§ && §79§.§#[§.§<1§)
         {
            if(this.§^!,§)
            {
               §79§.§#[§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
               _loc1_ = this.§^!,§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§^!,§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§^!,§ = null;
            }
         }
      }
      
      private function §!6§(param1:Event) : void
      {
         if(this.§^!,§)
         {
            this.§^!,§ = new Vector.<§9d§>(0);
            this.flatten();
         }
      }
      
      public function get §`=§() : Boolean
      {
         return this.§^!,§ != null;
      }
      
      override public function render(param1:§23§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^!,§ && color == 16777215)
         {
            param1.§?!Q§();
            param2 *= this.alpha;
            _loc3_ = this.§^!,§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§^!,§[_loc4_].render(param1.§@!Q§,param1.§?A§,param2);
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
