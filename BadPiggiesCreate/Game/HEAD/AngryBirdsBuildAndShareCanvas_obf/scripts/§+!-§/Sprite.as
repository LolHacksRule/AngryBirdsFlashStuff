package §+!-§
{
   import §%!j§.§%K§;
   import §%!j§.§&Y§;
   import §%!j§.§,5§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^!t§:Vector.<§,5§>;
      
      private var §]n§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§4"6§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§]n§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§]n§)
         {
            return;
         }
         this.§]n§ = param1;
         if(this.§]n§)
         {
            addEventListener(TouchEvent.§5!z§,this.§1!f§);
         }
         else
         {
            removeEventListener(TouchEvent.§5!z§,this.§1!f§);
         }
      }
      
      private function §1!f§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§"8§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§%K§.§`9§ && §%K§.§`9§.§8"1§)
         {
            dispatchEventOnChildren(new Event(Event.§ s§));
            if(this.§^!t§ == null)
            {
               this.§^!t§ = new Vector.<§,5§>(0);
               §%K§.§`9§.addEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
            }
            §,5§.§9!q§(this,this.§^!t§);
         }
      }
      
      public function §4"6§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§%K§.§`9§ && §%K§.§`9§.§8"1§)
         {
            if(this.§^!t§)
            {
               §%K§.§`9§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
               _loc1_ = this.§^!t§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§^!t§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§^!t§ = null;
            }
         }
      }
      
      private function § !m§(param1:Event) : void
      {
         if(this.§^!t§)
         {
            this.§^!t§ = new Vector.<§,5§>(0);
            this.flatten();
         }
      }
      
      public function get §`G§() : Boolean
      {
         return this.§^!t§ != null;
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^!t§ && color == 16777215)
         {
            param1.§0"6§();
            param2 *= this.alpha;
            _loc3_ = this.§^!t§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§^!t§[_loc4_].render(param1.§-!K§,param1.§'D§,param2);
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
