package §6![§
{
   import §`!a§.§0L§;
   import §`!a§.§1"&§;
   import §`!a§.§4>§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §1!l§:Vector.<§4>§>;
      
      private var §5!B§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§>"'§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5!B§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§5!B§)
         {
            return;
         }
         this.§5!B§ = param1;
         if(this.§5!B§)
         {
            addEventListener(TouchEvent.§77§,this.§&r§);
         }
         else
         {
            removeEventListener(TouchEvent.§77§,this.§&r§);
         }
      }
      
      private function §&r§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§6!p§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§1"&§.§1i§ && §1"&§.§1i§.§]!8§)
         {
            dispatchEventOnChildren(new Event(Event.§#&§));
            if(this.§1!l§ == null)
            {
               this.§1!l§ = new Vector.<§4>§>(0);
               §1"&§.§1i§.addEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
            }
            §4>§.§#2§(this,this.§1!l§);
         }
      }
      
      public function §>"'§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§1"&§.§1i§ && §1"&§.§1i§.§]!8§)
         {
            if(this.§1!l§)
            {
               §1"&§.§1i§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
               _loc1_ = this.§1!l§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§1!l§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§1!l§ = null;
            }
         }
      }
      
      private function §%;§(param1:Event) : void
      {
         if(this.§1!l§)
         {
            this.§1!l§ = new Vector.<§4>§>(0);
            this.flatten();
         }
      }
      
      public function get §]L§() : Boolean
      {
         return this.§1!l§ != null;
      }
      
      override public function render(param1:§0L§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§1!l§ && color == 16777215)
         {
            param1.§6"$§();
            param2 *= this.alpha;
            _loc3_ = this.§1!l§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§1!l§[_loc4_].render(param1.§`r§,param1.§+!c§,param2);
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
