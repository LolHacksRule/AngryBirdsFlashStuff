package §@!=§
{
   import §@!%§.§+8§;
   import §@!%§.§0!4§;
   import §@!%§.§]A§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §7%§:Vector.<§0!4§>;
      
      private var §<k§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§91§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§<k§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§<k§)
         {
            return;
         }
         this.§<k§ = param1;
         if(this.§<k§)
         {
            addEventListener(TouchEvent.§!&§,this.§`O§);
         }
         else
         {
            removeEventListener(TouchEvent.§!&§,this.§`O§);
         }
      }
      
      private function §`O§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§"!F§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§+8§.§-2§ && §+8§.§-2§.§#'§)
         {
            dispatchEventOnChildren(new Event(Event.§@!<§));
            if(this.§7%§ == null)
            {
               this.§7%§ = new Vector.<§0!4§>(0);
               §+8§.§-2§.addEventListener(Event.CONTEXT3D_CREATE,this.§`4§);
            }
            §0!4§.§9'§(this,this.§7%§);
         }
      }
      
      public function §91§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§+8§.§-2§ && §+8§.§-2§.§#'§)
         {
            if(this.§7%§)
            {
               §+8§.§-2§.removeEventListener(Event.CONTEXT3D_CREATE,this.§`4§);
               _loc1_ = this.§7%§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§7%§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§7%§ = null;
            }
         }
      }
      
      private function §`4§(param1:Event) : void
      {
         if(this.§7%§)
         {
            this.§7%§ = new Vector.<§0!4§>(0);
            this.flatten();
         }
      }
      
      public function get §34§() : Boolean
      {
         return this.§7%§ != null;
      }
      
      override public function render(param1:§]A§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§7%§ && color == 16777215)
         {
            param1.§7[§();
            param2 *= this.alpha;
            _loc3_ = this.§7%§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§7%§[_loc4_].render(param1.context,param1.§1k§,param2);
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
