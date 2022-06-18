package §&!5§
{
   import §"4§.§ !T§;
   import §"4§.§+s§;
   import §"4§.§<h§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §+n§:Vector.<§ !T§>;
      
      private var §]Y§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§84§();
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
            addEventListener(TouchEvent.§0![§,this.§!!"§);
         }
         else
         {
            removeEventListener(TouchEvent.§0![§,this.§!!"§);
         }
      }
      
      private function §!!"§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§'!U§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§<h§.§%!]§ && §<h§.§%!]§.§7e§)
         {
            dispatchEventOnChildren(new Event(Event.§3t§));
            if(this.§+n§ == null)
            {
               this.§+n§ = new Vector.<§ !T§>(0);
               §<h§.§%!]§.addEventListener(Event.CONTEXT3D_CREATE,this.§=k§);
            }
            § !T§.§[!G§(this,this.§+n§);
         }
      }
      
      public function §84§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§<h§.§%!]§ && §<h§.§%!]§.§7e§)
         {
            if(this.§+n§)
            {
               §<h§.§%!]§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=k§);
               _loc1_ = this.§+n§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§+n§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§+n§ = null;
            }
         }
      }
      
      private function §=k§(param1:Event) : void
      {
         if(this.§+n§)
         {
            this.§+n§ = new Vector.<§ !T§>(0);
            this.flatten();
         }
      }
      
      public function get §0!2§() : Boolean
      {
         return this.§+n§ != null;
      }
      
      override public function render(param1:§+s§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+n§ && color == 16777215)
         {
            param1.§&u§();
            param2 *= this.alpha;
            _loc3_ = this.§+n§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§+n§[_loc4_].render(param1.§69§,param1.§,!Y§,param2);
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
