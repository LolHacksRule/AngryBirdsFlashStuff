package §2!g§
{
   import §"v§.§&!i§;
   import §"v§.§5!T§;
   import §"v§.§`P§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §[!0§:Vector.<§`P§>;
      
      private var §!!"§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§#! §();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§!!"§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§!!"§)
         {
            return;
         }
         this.§!!"§ = param1;
         if(this.§!!"§)
         {
            addEventListener(TouchEvent.§7`§,this.§&!,§);
         }
         else
         {
            removeEventListener(TouchEvent.§7`§,this.§&!,§);
         }
      }
      
      private function §&!,§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§#a§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§5!T§.§!e§ && §5!T§.§!e§.§2!#§)
         {
            dispatchEventOnChildren(new Event(Event.§&=§));
            if(this.§[!0§ == null)
            {
               this.§[!0§ = new Vector.<§`P§>(0);
               §5!T§.§!e§.addEventListener(Event.CONTEXT3D_CREATE,this.§0!^§);
            }
            §`P§.§8!5§(this,this.§[!0§);
         }
      }
      
      public function §#! §() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§5!T§.§!e§ && §5!T§.§!e§.§2!#§)
         {
            if(this.§[!0§)
            {
               §5!T§.§!e§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0!^§);
               _loc1_ = this.§[!0§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§[!0§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§[!0§ = null;
            }
         }
      }
      
      private function §0!^§(param1:Event) : void
      {
         if(this.§[!0§)
         {
            this.§[!0§ = new Vector.<§`P§>(0);
            this.flatten();
         }
      }
      
      public function get §4J§() : Boolean
      {
         return this.§[!0§ != null;
      }
      
      override public function render(param1:§&!i§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§[!0§ && color == 16777215)
         {
            param1.§^§();
            param2 *= this.alpha;
            _loc3_ = this.§[!0§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§[!0§[_loc4_].render(param1.§+=§,param1.§+E§,param2);
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
