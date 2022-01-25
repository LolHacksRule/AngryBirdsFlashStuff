package §;t§
{
   import §+R§.§0O§;
   import §+R§.§4!b§;
   import §+R§.§6W§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §7!A§:Vector.<§6W§>;
      
      private var § [§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§-!;§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§ [§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§ [§)
         {
            return;
         }
         this.§ [§ = param1;
         if(this.§ [§)
         {
            addEventListener(TouchEvent.§'! §,this.§#s§);
         }
         else
         {
            removeEventListener(TouchEvent.§'! §,this.§#s§);
         }
      }
      
      private function §#s§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§4B§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§0O§.§=&§ && §0O§.§=&§.§?]§)
         {
            dispatchEventOnChildren(new Event(Event.§@!O§));
            if(this.§7!A§ == null)
            {
               this.§7!A§ = new Vector.<§6W§>(0);
               §0O§.§=&§.addEventListener(Event.CONTEXT3D_CREATE,this.§-b§);
            }
            §6W§.§#=§(this,this.§7!A§);
         }
      }
      
      public function §-!;§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§0O§.§=&§ && §0O§.§=&§.§?]§)
         {
            if(this.§7!A§)
            {
               §0O§.§=&§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-b§);
               _loc1_ = this.§7!A§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§7!A§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§7!A§ = null;
            }
         }
      }
      
      private function §-b§(param1:Event) : void
      {
         if(this.§7!A§)
         {
            this.§7!A§ = new Vector.<§6W§>(0);
            this.flatten();
         }
      }
      
      public function get §1!R§() : Boolean
      {
         return this.§7!A§ != null;
      }
      
      override public function render(param1:§4!b§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§7!A§ && color == 16777215)
         {
            param1.§]!C§();
            param2 *= this.alpha;
            _loc3_ = this.§7!A§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§7!A§[_loc4_].render(param1.§;!?§,param1.§,!#§,param2);
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
