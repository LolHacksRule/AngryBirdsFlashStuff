package §-!'§
{
   import §'!3§.§&!H§;
   import §'!3§.§1!<§;
   import §'!3§.§@`§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §""§:Vector.<§1!<§>;
      
      private var §?X§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§@!N§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§?X§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§?X§)
         {
            return;
         }
         this.§?X§ = param1;
         if(this.§?X§)
         {
            addEventListener(TouchEvent.§=w§,this.§6<§);
         }
         else
         {
            removeEventListener(TouchEvent.§=w§,this.§6<§);
         }
      }
      
      private function §6<§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§&;§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§&!H§.§+!H§ && §&!H§.§+!H§.§@!K§)
         {
            dispatchEventOnChildren(new Event(Event.§6C§));
            if(this.§""§ == null)
            {
               this.§""§ = new Vector.<§1!<§>(0);
               §&!H§.§+!H§.addEventListener(Event.CONTEXT3D_CREATE,this.§8k§);
            }
            §1!<§.§'X§(this,this.§""§);
         }
      }
      
      public function §@!N§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§&!H§.§+!H§ && §&!H§.§+!H§.§@!K§)
         {
            if(this.§""§)
            {
               §&!H§.§+!H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8k§);
               _loc1_ = this.§""§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§""§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§""§ = null;
            }
         }
      }
      
      private function §8k§(param1:Event) : void
      {
         if(this.§""§)
         {
            this.§""§ = new Vector.<§1!<§>(0);
            this.flatten();
         }
      }
      
      public function get §,=§() : Boolean
      {
         return this.§""§ != null;
      }
      
      override public function render(param1:§@`§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§""§ && color == 16777215)
         {
            param1.§9!&§();
            param2 *= this.alpha;
            _loc3_ = this.§""§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§""§[_loc4_].render(param1.§2G§,param1.§6!P§,param2);
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
