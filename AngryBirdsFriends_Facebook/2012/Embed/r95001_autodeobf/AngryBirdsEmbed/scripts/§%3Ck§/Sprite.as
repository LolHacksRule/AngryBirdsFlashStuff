package §<k§
{
   import §9!2§.§7N§;
   import §9!2§.§<!0§;
   import §9!2§.§>P§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §@s§:Vector.<§<!0§>;
      
      private var §9'§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§,!;§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§9'§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§9'§)
         {
            return;
         }
         this.§9'§ = param1;
         if(this.§9'§)
         {
            addEventListener(TouchEvent.§"+§,this.§%r§);
         }
         else
         {
            removeEventListener(TouchEvent.§"+§,this.§%r§);
         }
      }
      
      private function §%r§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§1J§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§7N§.§17§ && §7N§.§17§.§[v§)
         {
            dispatchEventOnChildren(new Event(Event.§0`§));
            if(this.§@s§ == null)
            {
               this.§@s§ = new Vector.<§<!0§>(0);
               §7N§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§=7§);
            }
            §<!0§.§6h§(this,this.§@s§);
         }
      }
      
      public function §,!;§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§7N§.§17§ && §7N§.§17§.§[v§)
         {
            if(this.§@s§)
            {
               §7N§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=7§);
               _loc1_ = this.§@s§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§@s§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§@s§ = null;
            }
         }
      }
      
      private function §=7§(param1:Event) : void
      {
         if(this.§@s§)
         {
            this.§@s§ = new Vector.<§<!0§>(0);
            this.flatten();
         }
      }
      
      public function get §2w§() : Boolean
      {
         return this.§@s§ != null;
      }
      
      override public function render(param1:§>P§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§@s§ && color == 16777215)
         {
            param1.§%!G§();
            param2 *= this.alpha;
            _loc3_ = this.§@s§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§@s§[_loc4_].render(param1.context,param1.§^P§,param2);
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
