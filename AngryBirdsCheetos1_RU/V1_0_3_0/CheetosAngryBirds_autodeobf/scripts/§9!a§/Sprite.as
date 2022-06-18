package §9!a§
{
   import §>N§.§"u§;
   import §>N§.§1!+§;
   import §>N§.§>q§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §3!#§:Vector.<§1!+§>;
      
      private var §;!R§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§<!'§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§;!R§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§;!R§)
         {
            return;
         }
         this.§;!R§ = param1;
         if(this.§;!R§)
         {
            addEventListener(TouchEvent.§<d§,this.§@%§);
         }
         else
         {
            removeEventListener(TouchEvent.§<d§,this.§@%§);
         }
      }
      
      private function §@%§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§<0§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§"u§.§-2§ && §"u§.§-2§.§1f§)
         {
            dispatchEventOnChildren(new Event(Event.§^!8§));
            if(this.§3!#§ == null)
            {
               this.§3!#§ = new Vector.<§1!+§>(0);
               §"u§.§-2§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!?§);
            }
            §1!+§.§try §(this,this.§3!#§);
         }
      }
      
      public function §<!'§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§"u§.§-2§ && §"u§.§-2§.§1f§)
         {
            if(this.§3!#§)
            {
               §"u§.§-2§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!?§);
               _loc1_ = this.§3!#§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§3!#§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§3!#§ = null;
            }
         }
      }
      
      private function §3!?§(param1:Event) : void
      {
         if(this.§3!#§)
         {
            this.§3!#§ = new Vector.<§1!+§>(0);
            this.flatten();
         }
      }
      
      public function get §'R§() : Boolean
      {
         return this.§3!#§ != null;
      }
      
      override public function render(param1:§>q§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§3!#§ && color == 16777215)
         {
            param1.§0o§();
            param2 *= this.alpha;
            _loc3_ = this.§3!#§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§3!#§[_loc4_].render(param1.§>!O§,param1.§7!&§,param2);
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
