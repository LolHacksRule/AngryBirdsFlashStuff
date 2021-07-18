package §!!U§
{
   import §&#H§.§%"H§;
   import §&#H§.§%"Y§;
   import §&#H§.§3#J§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §=!<§:Vector.<§%"Y§>;
      
      private var §2!'§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§1!h§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§2!'§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§2!'§)
         {
            return;
         }
         this.§2!'§ = param1;
         if(this.§2!'§)
         {
            addEventListener(TouchEvent.§;!1§,this.§2#5§);
         }
         else
         {
            removeEventListener(TouchEvent.§;!1§,this.§2#5§);
         }
      }
      
      private function §2#5§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§79§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§3#J§.§2!C§ && §3#J§.§2!C§.§;#E§)
         {
            dispatchEventOnChildren(new Event(Event.§[#J§));
            if(this.§=!<§ == null)
            {
               this.§=!<§ = new Vector.<§%"Y§>(0);
               §3#J§.§2!C§.addEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
            }
            §%"Y§.§[;§(this,this.§=!<§);
         }
      }
      
      public function §1!h§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§3#J§.§2!C§ && §3#J§.§2!C§.§;#E§)
         {
            if(this.§=!<§)
            {
               §3#J§.§2!C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
               _loc1_ = this.§=!<§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§=!<§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§=!<§ = null;
            }
         }
      }
      
      private function §%!b§(param1:Event) : void
      {
         if(this.§=!<§)
         {
            this.§=!<§ = new Vector.<§%"Y§>(0);
            this.flatten();
         }
      }
      
      public function get §`F§() : Boolean
      {
         return this.§=!<§ != null;
      }
      
      override public function render(param1:§%"H§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§=!<§ && color == 16777215)
         {
            param1.§+#X§();
            param2 *= this.alpha;
            _loc3_ = this.§=!<§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§=!<§[_loc4_].render(param1.§<"t§,param1.§&h§,param2);
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
