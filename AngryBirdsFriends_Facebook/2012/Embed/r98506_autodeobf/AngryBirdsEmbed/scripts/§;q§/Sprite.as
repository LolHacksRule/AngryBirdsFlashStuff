package §;q§
{
   import §;%§.§ Q§;
   import §;%§.§8S§;
   import §;%§.§8o§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §8j§:Vector.<§ Q§>;
      
      private var §#r§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§"Z§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§#r§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§#r§)
         {
            return;
         }
         this.§#r§ = param1;
         if(this.§#r§)
         {
            addEventListener(TouchEvent.§5!J§,this.§+-§);
         }
         else
         {
            removeEventListener(TouchEvent.§5!J§,this.§+-§);
         }
      }
      
      private function §+-§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§`u§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§8o§.§5J§ && §8o§.§5J§.§#!3§)
         {
            dispatchEventOnChildren(new Event(Event.§1@§));
            if(this.§8j§ == null)
            {
               this.§8j§ = new Vector.<§ Q§>(0);
               §8o§.§5J§.addEventListener(Event.CONTEXT3D_CREATE,this.§"!F§);
            }
            § Q§.§?8§(this,this.§8j§);
         }
      }
      
      public function §"Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§8o§.§5J§ && §8o§.§5J§.§#!3§)
         {
            if(this.§8j§)
            {
               §8o§.§5J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"!F§);
               _loc1_ = this.§8j§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§8j§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§8j§ = null;
            }
         }
      }
      
      private function §"!F§(param1:Event) : void
      {
         if(this.§8j§)
         {
            this.§8j§ = new Vector.<§ Q§>(0);
            this.flatten();
         }
      }
      
      public function get §,!<§() : Boolean
      {
         return this.§8j§ != null;
      }
      
      override public function render(param1:§8S§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§8j§ && color == 16777215)
         {
            param1.§98§();
            param2 *= this.alpha;
            _loc3_ = this.§8j§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§8j§[_loc4_].render(param1.context,param1.§%!@§,param2);
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
