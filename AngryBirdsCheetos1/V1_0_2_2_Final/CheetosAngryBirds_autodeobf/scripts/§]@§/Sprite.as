package §]@§
{
   import §`C§.§'!!§;
   import §`C§.§'!N§;
   import §`C§.§9!'§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §<M§:Vector.<§'!!§>;
      
      private var §,U§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§#8§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§,U§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§,U§)
         {
            return;
         }
         this.§,U§ = param1;
         if(this.§,U§)
         {
            addEventListener(TouchEvent.§"M§,this.§4u§);
         }
         else
         {
            removeEventListener(TouchEvent.§"M§,this.§4u§);
         }
      }
      
      private function §4u§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§4=§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§9!'§.§7!Z§ && §9!'§.§7!Z§.§+!<§)
         {
            dispatchEventOnChildren(new Event(Event.§,!Z§));
            if(this.§<M§ == null)
            {
               this.§<M§ = new Vector.<§'!!§>(0);
               §9!'§.§7!Z§.addEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
            }
            §'!!§.§&L§(this,this.§<M§);
         }
      }
      
      public function §#8§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§9!'§.§7!Z§ && §9!'§.§7!Z§.§+!<§)
         {
            if(this.§<M§)
            {
               §9!'§.§7!Z§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
               _loc1_ = this.§<M§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§<M§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§<M§ = null;
            }
         }
      }
      
      private function §"$§(param1:Event) : void
      {
         if(this.§<M§)
         {
            this.§<M§ = new Vector.<§'!!§>(0);
            this.flatten();
         }
      }
      
      public function get §#!"§() : Boolean
      {
         return this.§<M§ != null;
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§<M§ && color == 16777215)
         {
            param1.§+!2§();
            param2 *= this.alpha;
            _loc3_ = this.§<M§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§<M§[_loc4_].render(param1.§+!&§,param1.§]!I§,param2);
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
