package §`L§
{
   import §-!+§.§,7§;
   import §-!+§.§6"6§;
   import §-!+§.§["%§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §<!A§:Vector.<§["%§>;
      
      private var §`!&§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§1!x§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§`!&§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§`!&§)
         {
            return;
         }
         this.§`!&§ = param1;
         if(this.§`!&§)
         {
            addEventListener(TouchEvent.§1"+§,this.§["§);
         }
         else
         {
            removeEventListener(TouchEvent.§1"+§,this.§["§);
         }
      }
      
      private function §["§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§83§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§6"6§.§^F§ && §6"6§.§^F§.§@"$§)
         {
            dispatchEventOnChildren(new Event(Event.§^§));
            if(this.§<!A§ == null)
            {
               this.§<!A§ = new Vector.<§["%§>(0);
               §6"6§.§^F§.addEventListener(Event.CONTEXT3D_CREATE,this.§'!K§);
            }
            §["%§.§>!2§(this,this.§<!A§);
         }
      }
      
      public function §1!x§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§6"6§.§^F§ && §6"6§.§^F§.§@"$§)
         {
            if(this.§<!A§)
            {
               §6"6§.§^F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!K§);
               _loc1_ = this.§<!A§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§<!A§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§<!A§ = null;
            }
         }
      }
      
      private function §'!K§(param1:Event) : void
      {
         if(this.§<!A§)
         {
            this.§<!A§ = new Vector.<§["%§>(0);
            this.flatten();
         }
      }
      
      public function get §%"3§() : Boolean
      {
         return this.§<!A§ != null;
      }
      
      override public function render(param1:§,7§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§<!A§ && color == 16777215)
         {
            param1.§>%§();
            param2 *= this.alpha;
            _loc3_ = this.§<!A§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§<!A§[_loc4_].render(param1.§7!T§,param1.§@K§,param2);
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
