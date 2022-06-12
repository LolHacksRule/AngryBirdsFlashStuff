package §@!i§
{
   import §3",§.§'5§;
   import §3",§.§0"<§;
   import §3",§.§;D§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §9!N§:Vector.<§;D§>;
      
      private var §9!W§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§0o§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§9!W§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§9!W§)
         {
            return;
         }
         this.§9!W§ = param1;
         if(this.§9!W§)
         {
            addEventListener(TouchEvent.§-!I§,this.§-!L§);
         }
         else
         {
            removeEventListener(TouchEvent.§-!I§,this.§-!L§);
         }
      }
      
      private function §-!L§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§-d§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§0"<§.§<?§ && §0"<§.§<?§.§2F§)
         {
            dispatchEventOnChildren(new Event(Event.§^d§));
            if(this.§9!N§ == null)
            {
               this.§9!N§ = new Vector.<§;D§>(0);
               §0"<§.§<?§.addEventListener(Event.CONTEXT3D_CREATE,this.§9!g§);
            }
            §;D§.§ F§(this,this.§9!N§);
         }
      }
      
      public function §0o§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§0"<§.§<?§ && §0"<§.§<?§.§2F§)
         {
            if(this.§9!N§)
            {
               §0"<§.§<?§.removeEventListener(Event.CONTEXT3D_CREATE,this.§9!g§);
               _loc1_ = this.§9!N§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§9!N§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§9!N§ = null;
            }
         }
      }
      
      private function §9!g§(param1:Event) : void
      {
         if(this.§9!N§)
         {
            this.§9!N§ = new Vector.<§;D§>(0);
            this.flatten();
         }
      }
      
      public function get §]!n§() : Boolean
      {
         return this.§9!N§ != null;
      }
      
      override public function render(param1:§'5§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§9!N§ && color == 16777215)
         {
            param1.§+!P§();
            param2 *= this.alpha;
            _loc3_ = this.§9!N§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§9!N§[_loc4_].render(param1.§5!^§,param1.§%o§,param2);
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
