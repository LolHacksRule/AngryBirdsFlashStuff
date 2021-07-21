package §90§
{
   import §,!,§.§&v§;
   import §,!,§.§2t§;
   import §,!,§.§^!'§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §-!#§:Vector.<§^!'§>;
      
      private var §"1§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§3Z§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§"1§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§"1§)
         {
            return;
         }
         this.§"1§ = param1;
         if(this.§"1§)
         {
            addEventListener(TouchEvent.§,u§,this.§4&§);
         }
         else
         {
            removeEventListener(TouchEvent.§,u§,this.§4&§);
         }
      }
      
      private function §4&§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§7E§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§2t§.§,!E§ && §2t§.§,!E§.§`5§)
         {
            dispatchEventOnChildren(new Event(Event.§2V§));
            if(this.§-!#§ == null)
            {
               this.§-!#§ = new Vector.<§^!'§>(0);
               §2t§.§,!E§.addEventListener(Event.CONTEXT3D_CREATE,this.§>h§);
            }
            §^!'§.§`T§(this,this.§-!#§);
         }
      }
      
      public function §3Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§2t§.§,!E§ && §2t§.§,!E§.§`5§)
         {
            if(this.§-!#§)
            {
               §2t§.§,!E§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>h§);
               _loc1_ = this.§-!#§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§-!#§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§-!#§ = null;
            }
         }
      }
      
      private function §>h§(param1:Event) : void
      {
         if(this.§-!#§)
         {
            this.§-!#§ = new Vector.<§^!'§>(0);
            this.flatten();
         }
      }
      
      public function get §,G§() : Boolean
      {
         return this.§-!#§ != null;
      }
      
      override public function render(param1:§&v§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§-!#§ && color == 16777215)
         {
            param1.§30§();
            param2 *= this.alpha;
            _loc3_ = this.§-!#§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§-!#§[_loc4_].render(param1.context,param1.§66§,param2);
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
