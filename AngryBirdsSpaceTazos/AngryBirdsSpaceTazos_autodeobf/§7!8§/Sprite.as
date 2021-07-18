package §7!8§
{
   import §5Q§.§%!t§;
   import §5Q§.§,Q§;
   import §5Q§.§^!e§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §=!W§:Vector.<§,Q§>;
      
      private var §<!6§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§#!8§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§<!6§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§<!6§)
         {
            return;
         }
         this.§<!6§ = param1;
         if(this.§<!6§)
         {
            addEventListener(TouchEvent.§1!X§,this.§&"9§);
         }
         else
         {
            removeEventListener(TouchEvent.§1!X§,this.§&"9§);
         }
      }
      
      private function §&"9§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§3!0§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§^!e§.§`?§ && §^!e§.§`?§.§;!I§)
         {
            dispatchEventOnChildren(new Event(Event.§>"6§));
            if(this.§=!W§ == null)
            {
               this.§=!W§ = new Vector.<§,Q§>(0);
               §^!e§.§`?§.addEventListener(Event.CONTEXT3D_CREATE,this.§2"'§);
            }
            §,Q§.§%!_§(this,this.§=!W§);
         }
      }
      
      public function §#!8§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§^!e§.§`?§ && §^!e§.§`?§.§;!I§)
         {
            if(this.§=!W§)
            {
               §^!e§.§`?§.removeEventListener(Event.CONTEXT3D_CREATE,this.§2"'§);
               _loc1_ = this.§=!W§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§=!W§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§=!W§ = null;
            }
         }
      }
      
      private function §2"'§(param1:Event) : void
      {
         if(this.§=!W§)
         {
            this.§=!W§ = new Vector.<§,Q§>(0);
            this.flatten();
         }
      }
      
      public function get §^W§() : Boolean
      {
         return this.§=!W§ != null;
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§=!W§ && color == 16777215)
         {
            param1.§2!Y§();
            param2 *= this.alpha;
            _loc3_ = this.§=!W§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§=!W§[_loc4_].render(param1.§"!G§,param1.§^s§,param2);
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
