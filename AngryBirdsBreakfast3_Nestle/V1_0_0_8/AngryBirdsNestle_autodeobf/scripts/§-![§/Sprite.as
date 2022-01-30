package §-![§
{
   import §=!6§.§+8§;
   import §=!6§.§3E§;
   import §=!6§.§]q§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §=!&§:Vector.<§3E§>;
      
      private var §+!A§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§02§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§+!A§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§+!A§)
         {
            return;
         }
         this.§+!A§ = param1;
         if(this.§+!A§)
         {
            addEventListener(TouchEvent.§!",§,this.§!!-§);
         }
         else
         {
            removeEventListener(TouchEvent.§!",§,this.§!!-§);
         }
      }
      
      private function §!!-§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§2;§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§+8§.§0j§ && §+8§.§0j§.§ H§)
         {
            dispatchEventOnChildren(new Event(Event.§[!H§));
            if(this.§=!&§ == null)
            {
               this.§=!&§ = new Vector.<§3E§>(0);
               §+8§.§0j§.addEventListener(Event.CONTEXT3D_CREATE,this.§1"5§);
            }
            §3E§.§]X§(this,this.§=!&§);
         }
      }
      
      public function §02§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§+8§.§0j§ && §+8§.§0j§.§ H§)
         {
            if(this.§=!&§)
            {
               §+8§.§0j§.removeEventListener(Event.CONTEXT3D_CREATE,this.§1"5§);
               _loc1_ = this.§=!&§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§=!&§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§=!&§ = null;
            }
         }
      }
      
      private function §1"5§(param1:Event) : void
      {
         if(this.§=!&§)
         {
            this.§=!&§ = new Vector.<§3E§>(0);
            this.flatten();
         }
      }
      
      public function get §5!l§() : Boolean
      {
         return this.§=!&§ != null;
      }
      
      override public function render(param1:§]q§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§=!&§ && color == 16777215)
         {
            param1.§`!p§();
            param2 *= this.alpha;
            _loc3_ = this.§=!&§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§=!&§[_loc4_].render(param1.§2w§,param1.§ !l§,param2);
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
