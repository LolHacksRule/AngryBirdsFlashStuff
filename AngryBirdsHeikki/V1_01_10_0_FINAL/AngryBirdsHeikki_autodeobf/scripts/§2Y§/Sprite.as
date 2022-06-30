package §2Y§
{
   import §"^§.§'X§;
   import §"^§.§+!'§;
   import §"^§.§2v§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §;![§:Vector.<§2v§>;
      
      private var §5§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§3!0§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§5§)
         {
            return;
         }
         this.§5§ = param1;
         if(this.§5§)
         {
            addEventListener(TouchEvent.§]!-§,this.§%!+§);
         }
         else
         {
            removeEventListener(TouchEvent.§]!-§,this.§%!+§);
         }
      }
      
      private function §%!+§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§[t§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§+!'§.§2d§ && §+!'§.§2d§.§<!]§)
         {
            dispatchEventOnChildren(new Event(Event.§6!a§));
            if(this.§;![§ == null)
            {
               this.§;![§ = new Vector.<§2v§>(0);
               §+!'§.§2d§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
            }
            §2v§.§-#§(this,this.§;![§);
         }
      }
      
      public function §3!0§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§+!'§.§2d§ && §+!'§.§2d§.§<!]§)
         {
            if(this.§;![§)
            {
               §+!'§.§2d§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
               _loc1_ = this.§;![§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§;![§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§;![§ = null;
            }
         }
      }
      
      private function §3!c§(param1:Event) : void
      {
         if(this.§;![§)
         {
            this.§;![§ = new Vector.<§2v§>(0);
            this.flatten();
         }
      }
      
      public function get §%!>§() : Boolean
      {
         return this.§;![§ != null;
      }
      
      override public function render(param1:§'X§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§;![§ && color == 16777215)
         {
            param1.§;!S§();
            param2 *= this.alpha;
            _loc3_ = this.§;![§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§;![§[_loc4_].render(param1.§&!8§,param1.§0K§,param2);
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
