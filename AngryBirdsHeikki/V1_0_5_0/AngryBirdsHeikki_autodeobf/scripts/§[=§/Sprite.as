package §[=§
{
   import §>Q§.§4?§;
   import §>Q§.§5!5§;
   import §>Q§.§<!%§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §1>§:Vector.<§4?§>;
      
      private var §7?§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§;U§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§7?§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§7?§)
         {
            return;
         }
         this.§7?§ = param1;
         if(this.§7?§)
         {
            addEventListener(TouchEvent.§8!!§,this.§7S§);
         }
         else
         {
            removeEventListener(TouchEvent.§8!!§,this.§7S§);
         }
      }
      
      private function §7S§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§3L§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§5!5§.§5F§ && §5!5§.§5F§.§ a§)
         {
            dispatchEventOnChildren(new Event(Event.§!![§));
            if(this.§1>§ == null)
            {
               this.§1>§ = new Vector.<§4?§>(0);
               §5!5§.§5F§.addEventListener(Event.CONTEXT3D_CREATE,this.§?!D§);
            }
            §4?§.§7!?§(this,this.§1>§);
         }
      }
      
      public function §;U§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§5!5§.§5F§ && §5!5§.§5F§.§ a§)
         {
            if(this.§1>§)
            {
               §5!5§.§5F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?!D§);
               _loc1_ = this.§1>§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§1>§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§1>§ = null;
            }
         }
      }
      
      private function §?!D§(param1:Event) : void
      {
         if(this.§1>§)
         {
            this.§1>§ = new Vector.<§4?§>(0);
            this.flatten();
         }
      }
      
      public function get §0_§() : Boolean
      {
         return this.§1>§ != null;
      }
      
      override public function render(param1:§<!%§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§1>§ && color == 16777215)
         {
            param1.§"$§();
            param2 *= this.alpha;
            _loc3_ = this.§1>§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§1>§[_loc4_].render(param1.§`O§,param1.§'!D§,param2);
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
