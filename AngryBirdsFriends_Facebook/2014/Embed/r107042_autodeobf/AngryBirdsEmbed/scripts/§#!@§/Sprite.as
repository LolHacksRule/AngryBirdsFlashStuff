package §#!@§
{
   import §7!§.§ 0§;
   import §7!§.§,L§;
   import §7!§.§]j§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §7_§:Vector.<§]j§>;
      
      private var §]!+§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§;v§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§]!+§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§]!+§)
         {
            return;
         }
         this.§]!+§ = param1;
         if(this.§]!+§)
         {
            addEventListener(TouchEvent.§`!!§,this.§+N§);
         }
         else
         {
            removeEventListener(TouchEvent.§`!!§,this.§+N§);
         }
      }
      
      private function §+N§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§2!>§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§,L§.§3v§ && §,L§.§3v§.§4#§)
         {
            dispatchEventOnChildren(new Event(Event.§^1§));
            if(this.§7_§ == null)
            {
               this.§7_§ = new Vector.<§]j§>(0);
               §,L§.§3v§.addEventListener(Event.CONTEXT3D_CREATE,this.§6l§);
            }
            §]j§.§^S§(this,this.§7_§);
         }
      }
      
      public function §;v§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§,L§.§3v§ && §,L§.§3v§.§4#§)
         {
            if(this.§7_§)
            {
               §,L§.§3v§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6l§);
               _loc1_ = this.§7_§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§7_§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§7_§ = null;
            }
         }
      }
      
      private function §6l§(param1:Event) : void
      {
         if(this.§7_§)
         {
            this.§7_§ = new Vector.<§]j§>(0);
            this.flatten();
         }
      }
      
      public function get §@!!§() : Boolean
      {
         return this.§7_§ != null;
      }
      
      override public function render(param1:§ 0§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§7_§ && color == 16777215)
         {
            param1.§3B§();
            param2 *= this.alpha;
            _loc3_ = this.§7_§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§7_§[_loc4_].render(param1.context,param1.§&c§,param2);
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
