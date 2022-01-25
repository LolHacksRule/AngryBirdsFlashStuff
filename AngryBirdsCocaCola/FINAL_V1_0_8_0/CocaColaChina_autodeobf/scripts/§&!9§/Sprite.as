package §&!9§
{
   import §+&§.§ ,§;
   import §+&§.§;J§;
   import §+&§.§?y§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §8!8§:Vector.<§ ,§>;
      
      private var §9!#§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§;1§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§9!#§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§9!#§)
         {
            return;
         }
         this.§9!#§ = param1;
         if(this.§9!#§)
         {
            addEventListener(TouchEvent.§,!"§,this.§<!V§);
         }
         else
         {
            removeEventListener(TouchEvent.§,!"§,this.§<!V§);
         }
      }
      
      private function §<!V§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§]U§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§?y§.§,u§ && §?y§.§,u§.§>-§)
         {
            dispatchEventOnChildren(new Event(Event.§>! §));
            if(this.§8!8§ == null)
            {
               this.§8!8§ = new Vector.<§ ,§>(0);
               §?y§.§,u§.addEventListener(Event.CONTEXT3D_CREATE,this.§>l§);
            }
            § ,§.§%R§(this,this.§8!8§);
         }
      }
      
      public function §;1§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§?y§.§,u§ && §?y§.§,u§.§>-§)
         {
            if(this.§8!8§)
            {
               §?y§.§,u§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>l§);
               _loc1_ = this.§8!8§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§8!8§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§8!8§ = null;
            }
         }
      }
      
      private function §>l§(param1:Event) : void
      {
         if(this.§8!8§)
         {
            this.§8!8§ = new Vector.<§ ,§>(0);
            this.flatten();
         }
      }
      
      public function get §]!@§() : Boolean
      {
         return this.§8!8§ != null;
      }
      
      override public function render(param1:§;J§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§8!8§ && color == 16777215)
         {
            param1.§;5§();
            param2 *= this.alpha;
            _loc3_ = this.§8!8§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§8!8§[_loc4_].render(param1.§<!7§,param1.§&W§,param2);
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
