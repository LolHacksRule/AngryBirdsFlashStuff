package §4"@§
{
   import §1f§.§&"@§;
   import §1f§.§9H§;
   import §1f§.§[!J§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^";§:Vector.<§[!J§>;
      
      private var §6!T§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§0+§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§6!T§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§6!T§)
         {
            return;
         }
         this.§6!T§ = param1;
         if(this.§6!T§)
         {
            addEventListener(TouchEvent.§3Q§,this.§-"1§);
         }
         else
         {
            removeEventListener(TouchEvent.§3Q§,this.§-"1§);
         }
      }
      
      private function §-"1§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§+M§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§9H§.§0"'§ && §9H§.§0"'§.§ !E§)
         {
            dispatchEventOnChildren(new Event(Event.§]g§));
            if(this.§^";§ == null)
            {
               this.§^";§ = new Vector.<§[!J§>(0);
               §9H§.§0"'§.addEventListener(Event.CONTEXT3D_CREATE,this.§&Q§);
            }
            §[!J§.§0u§(this,this.§^";§);
         }
      }
      
      public function §0+§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§9H§.§0"'§ && §9H§.§0"'§.§ !E§)
         {
            if(this.§^";§)
            {
               §9H§.§0"'§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&Q§);
               _loc1_ = this.§^";§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§^";§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§^";§ = null;
            }
         }
      }
      
      private function §&Q§(param1:Event) : void
      {
         if(this.§^";§)
         {
            this.§^";§ = new Vector.<§[!J§>(0);
            this.flatten();
         }
      }
      
      public function get §5z§() : Boolean
      {
         return this.§^";§ != null;
      }
      
      override public function render(param1:§&"@§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^";§ && color == 16777215)
         {
            param1.§7j§();
            param2 *= this.alpha;
            _loc3_ = this.§^";§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§^";§[_loc4_].render(param1.§>!V§,param1.§#!$§,param2);
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
