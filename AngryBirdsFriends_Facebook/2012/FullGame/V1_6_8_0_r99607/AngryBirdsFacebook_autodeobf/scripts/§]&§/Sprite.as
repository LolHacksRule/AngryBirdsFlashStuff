package §]&§
{
   import §+"6§.§2!6§;
   import §+"6§.§5!H§;
   import §+"6§.§9"+§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §!!T§:Vector.<§9"+§>;
      
      private var §+"=§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§1!Z§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§+"=§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§+"=§)
         {
            return;
         }
         this.§+"=§ = param1;
         if(this.§+"=§)
         {
            addEventListener(TouchEvent.§2"'§,this.§,_§);
         }
         else
         {
            removeEventListener(TouchEvent.§2"'§,this.§,_§);
         }
      }
      
      private function §,_§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§%"@§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§5!H§.§%n§ && §5!H§.§%n§.§6@§)
         {
            dispatchEventOnChildren(new Event(Event.§!u§));
            if(this.§!!T§ == null)
            {
               this.§!!T§ = new Vector.<§9"+§>(0);
               §5!H§.§%n§.addEventListener(Event.CONTEXT3D_CREATE,this.§0"<§);
            }
            §9"+§.§&"%§(this,this.§!!T§);
         }
      }
      
      public function §1!Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§5!H§.§%n§ && §5!H§.§%n§.§6@§)
         {
            if(this.§!!T§)
            {
               §5!H§.§%n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0"<§);
               _loc1_ = this.§!!T§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§!!T§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§!!T§ = null;
            }
         }
      }
      
      private function §0"<§(param1:Event) : void
      {
         if(this.§!!T§)
         {
            this.§!!T§ = new Vector.<§9"+§>(0);
            this.flatten();
         }
      }
      
      public function get §0F§() : Boolean
      {
         return this.§!!T§ != null;
      }
      
      override public function render(param1:§2!6§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§!!T§ && color == 16777215)
         {
            param1.§1!P§();
            param2 *= this.alpha;
            _loc3_ = this.§!!T§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§!!T§[_loc4_].render(param1.§&l§,param1.§ d§,param2);
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
