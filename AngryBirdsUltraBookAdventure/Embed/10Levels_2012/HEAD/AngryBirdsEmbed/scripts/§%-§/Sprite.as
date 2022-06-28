package §%-§
{
   import §&p§.§%?§;
   import §&p§.§'_§;
   import §&p§.§`G§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var § ! §:Vector.<§%?§>;
      
      private var §5!?§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§#g§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5!?§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§5!?§)
         {
            return;
         }
         this.§5!?§ = param1;
         if(this.§5!?§)
         {
            addEventListener(TouchEvent.§+l§,this.§'k§);
         }
         else
         {
            removeEventListener(TouchEvent.§+l§,this.§'k§);
         }
      }
      
      private function §'k§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§5Y§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§'_§.§17§ && §'_§.§17§.§+y§)
         {
            dispatchEventOnChildren(new Event(Event.§0P§));
            if(this.§ ! § == null)
            {
               this.§ ! § = new Vector.<§%?§>(0);
               §'_§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
            }
            §%?§.§3f§(this,this.§ ! §);
         }
      }
      
      public function §#g§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§'_§.§17§ && §'_§.§17§.§+y§)
         {
            if(this.§ ! §)
            {
               §'_§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
               _loc1_ = this.§ ! §.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§ ! §[_loc2_].dispose();
                  _loc2_++;
               }
               this.§ ! § = null;
            }
         }
      }
      
      private function §-%§(param1:Event) : void
      {
         if(this.§ ! §)
         {
            this.§ ! § = new Vector.<§%?§>(0);
            this.flatten();
         }
      }
      
      public function get §9!B§() : Boolean
      {
         return this.§ ! § != null;
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§ ! § && color == 16777215)
         {
            param1.§#E§();
            param2 *= this.alpha;
            _loc3_ = this.§ ! §.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§ ! §[_loc4_].render(param1.context,param1.§1!<§,param2);
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
