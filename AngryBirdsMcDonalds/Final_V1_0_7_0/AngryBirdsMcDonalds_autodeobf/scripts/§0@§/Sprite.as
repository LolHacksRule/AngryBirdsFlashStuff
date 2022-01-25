package §0@§
{
   import §each §.§ if§;
   import §each §.§'!3§;
   import §each §.§<F§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §-,§:Vector.<§<F§>;
      
      private var §-!,§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§=Z§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§-!,§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§-!,§)
         {
            return;
         }
         this.§-!,§ = param1;
         if(this.§-!,§)
         {
            addEventListener(TouchEvent.§&!5§,this.§^!A§);
         }
         else
         {
            removeEventListener(TouchEvent.§&!5§,this.§^!A§);
         }
      }
      
      private function §^!A§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§5!#§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§'!3§.§1!n§ && §'!3§.§1!n§.§[J§)
         {
            dispatchEventOnChildren(new Event(Event.§'D§));
            if(this.§-,§ == null)
            {
               this.§-,§ = new Vector.<§<F§>(0);
               §'!3§.§1!n§.addEventListener(Event.CONTEXT3D_CREATE,this.§,B§);
            }
            §<F§.§#]§(this,this.§-,§);
         }
      }
      
      public function §=Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§'!3§.§1!n§ && §'!3§.§1!n§.§[J§)
         {
            if(this.§-,§)
            {
               §'!3§.§1!n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§,B§);
               _loc1_ = this.§-,§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§-,§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§-,§ = null;
            }
         }
      }
      
      private function §,B§(param1:Event) : void
      {
         if(this.§-,§)
         {
            this.§-,§ = new Vector.<§<F§>(0);
            this.flatten();
         }
      }
      
      public function get §!!p§() : Boolean
      {
         return this.§-,§ != null;
      }
      
      override public function render(param1:§ if§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§-,§ && color == 16777215)
         {
            param1.§"!>§();
            param2 *= this.alpha;
            _loc3_ = this.§-,§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§-,§[_loc4_].render(param1.§^!3§,param1.§[!^§,param2);
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
