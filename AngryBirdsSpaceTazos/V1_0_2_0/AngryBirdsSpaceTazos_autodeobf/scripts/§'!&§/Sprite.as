package §'!&§
{
   import §3!4§.§ ![§;
   import §3!4§.§,$§;
   import §3!4§.§3=§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §,!+§:Vector.<§,$§>;
      
      private var §[!'§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§!!4§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§[!'§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§[!'§)
         {
            return;
         }
         this.§[!'§ = param1;
         if(this.§[!'§)
         {
            addEventListener(TouchEvent.§;;§,this.§'!9§);
         }
         else
         {
            removeEventListener(TouchEvent.§;;§,this.§'!9§);
         }
      }
      
      private function §'!9§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§]Y§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§ ![§.§!G§ && § ![§.§!G§.§ 4§)
         {
            dispatchEventOnChildren(new Event(Event.§3"B§));
            if(this.§,!+§ == null)
            {
               this.§,!+§ = new Vector.<§,$§>(0);
               § ![§.§!G§.addEventListener(Event.CONTEXT3D_CREATE,this.§+!0§);
            }
            §,$§.§ "B§(this,this.§,!+§);
         }
      }
      
      public function §!!4§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§ ![§.§!G§ && § ![§.§!G§.§ 4§)
         {
            if(this.§,!+§)
            {
               § ![§.§!G§.removeEventListener(Event.CONTEXT3D_CREATE,this.§+!0§);
               _loc1_ = this.§,!+§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§,!+§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§,!+§ = null;
            }
         }
      }
      
      private function §+!0§(param1:Event) : void
      {
         if(this.§,!+§)
         {
            this.§,!+§ = new Vector.<§,$§>(0);
            this.flatten();
         }
      }
      
      public function get §;!Q§() : Boolean
      {
         return this.§,!+§ != null;
      }
      
      override public function render(param1:§3=§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§,!+§ && color == 16777215)
         {
            param1.§7§();
            param2 *= this.alpha;
            _loc3_ = this.§,!+§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§,!+§[_loc4_].render(param1.§"!!§,param1.§-";§,param2);
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
