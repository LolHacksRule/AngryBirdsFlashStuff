package §=!E§
{
   import §!v§.§16§;
   import §!v§.§7[§;
   import §!v§.§<"§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §@!$§:Vector.<§<"§>;
      
      private var §-T§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§&!"§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§-T§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§-T§)
         {
            return;
         }
         this.§-T§ = param1;
         if(this.§-T§)
         {
            addEventListener(TouchEvent.§4§,this.§8!5§);
         }
         else
         {
            removeEventListener(TouchEvent.§4§,this.§8!5§);
         }
      }
      
      private function §8!5§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§=D§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§7[§.§&!J§ && §7[§.§&!J§.§@&§)
         {
            dispatchEventOnChildren(new Event(Event.§5!2§));
            if(this.§@!$§ == null)
            {
               this.§@!$§ = new Vector.<§<"§>(0);
               §7[§.§&!J§.addEventListener(Event.CONTEXT3D_CREATE,this.§+!%§);
            }
            §<"§.§^P§(this,this.§@!$§);
         }
      }
      
      public function §&!"§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§7[§.§&!J§ && §7[§.§&!J§.§@&§)
         {
            if(this.§@!$§)
            {
               §7[§.§&!J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§+!%§);
               _loc1_ = this.§@!$§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§@!$§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§@!$§ = null;
            }
         }
      }
      
      private function §+!%§(param1:Event) : void
      {
         if(this.§@!$§)
         {
            this.§@!$§ = new Vector.<§<"§>(0);
            this.flatten();
         }
      }
      
      public function get §=v§() : Boolean
      {
         return this.§@!$§ != null;
      }
      
      override public function render(param1:§16§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§@!$§ && color == 16777215)
         {
            param1.§5!Y§();
            param2 *= this.alpha;
            _loc3_ = this.§@!$§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§@!$§[_loc4_].render(param1.§]!V§,param1.§^7§,param2);
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
