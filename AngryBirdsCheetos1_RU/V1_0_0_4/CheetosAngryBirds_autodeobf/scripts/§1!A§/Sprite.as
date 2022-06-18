package §1!A§
{
   import §`M§.§'C§;
   import §`M§.§=!"§;
   import §`M§.§[7§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §=!H§:Vector.<§=!"§>;
      
      private var §]Y§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§-! §();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§]Y§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§]Y§)
         {
            return;
         }
         this.§]Y§ = param1;
         if(this.§]Y§)
         {
            addEventListener(TouchEvent.§<!4§,this.§0Z§);
         }
         else
         {
            removeEventListener(TouchEvent.§<!4§,this.§0Z§);
         }
      }
      
      private function §0Z§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§#!@§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§'C§.§3b§ && §'C§.§3b§.§&O§)
         {
            dispatchEventOnChildren(new Event(Event.§4!L§));
            if(this.§=!H§ == null)
            {
               this.§=!H§ = new Vector.<§=!"§>(0);
               §'C§.§3b§.addEventListener(Event.CONTEXT3D_CREATE,this.§%X§);
            }
            §=!"§.§?!3§(this,this.§=!H§);
         }
      }
      
      public function §-! §() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§'C§.§3b§ && §'C§.§3b§.§&O§)
         {
            if(this.§=!H§)
            {
               §'C§.§3b§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%X§);
               _loc1_ = this.§=!H§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§=!H§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§=!H§ = null;
            }
         }
      }
      
      private function §%X§(param1:Event) : void
      {
         if(this.§=!H§)
         {
            this.§=!H§ = new Vector.<§=!"§>(0);
            this.flatten();
         }
      }
      
      public function get §9!!§() : Boolean
      {
         return this.§=!H§ != null;
      }
      
      override public function render(param1:§[7§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§=!H§ && color == 16777215)
         {
            param1.§+![§();
            param2 *= this.alpha;
            _loc3_ = this.§=!H§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§=!H§[_loc4_].render(param1.§^!%§,param1.§=9§,param2);
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
