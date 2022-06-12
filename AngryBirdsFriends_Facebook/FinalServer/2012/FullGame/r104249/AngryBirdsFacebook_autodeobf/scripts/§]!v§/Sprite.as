package §]!v§
{
   import §+!F§.§1!D§;
   import §+!F§.§7U§;
   import §+!F§.§<!l§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var § R§:Vector.<§7U§>;
      
      private var §@<§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§ 9§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§@<§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§@<§)
         {
            return;
         }
         this.§@<§ = param1;
         if(this.§@<§)
         {
            addEventListener(TouchEvent.§+!X§,this.§3S§);
         }
         else
         {
            removeEventListener(TouchEvent.§+!X§,this.§3S§);
         }
      }
      
      private function §3S§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§8!Q§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§1!D§.§7!T§ && §1!D§.§7!T§.§^4§)
         {
            dispatchEventOnChildren(new Event(Event.§5[§));
            if(this.§ R§ == null)
            {
               this.§ R§ = new Vector.<§7U§>(0);
               §1!D§.§7!T§.addEventListener(Event.CONTEXT3D_CREATE,this.§7!D§);
            }
            §7U§.§,!Z§(this,this.§ R§);
         }
      }
      
      public function § 9§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§1!D§.§7!T§ && §1!D§.§7!T§.§^4§)
         {
            if(this.§ R§)
            {
               §1!D§.§7!T§.removeEventListener(Event.CONTEXT3D_CREATE,this.§7!D§);
               _loc1_ = this.§ R§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§ R§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§ R§ = null;
            }
         }
      }
      
      private function §7!D§(param1:Event) : void
      {
         if(this.§ R§)
         {
            this.§ R§ = new Vector.<§7U§>(0);
            this.flatten();
         }
      }
      
      public function get §5@§() : Boolean
      {
         return this.§ R§ != null;
      }
      
      override public function render(param1:§<!l§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§ R§ && color == 16777215)
         {
            param1.§>"4§();
            param2 *= this.alpha;
            _loc3_ = this.§ R§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§ R§[_loc4_].render(param1.§>4§,param1.§7a§,param2);
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
