package §#!f§
{
   import §1y§.§&!B§;
   import §1y§.§0!7§;
   import §1y§.§2n§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §;!A§:Vector.<§0!7§>;
      
      private var §?h§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§each §();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§?h§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§?h§)
         {
            return;
         }
         this.§?h§ = param1;
         if(this.§?h§)
         {
            addEventListener(TouchEvent.§%H§,this.§%U§);
         }
         else
         {
            removeEventListener(TouchEvent.§%H§,this.§%U§);
         }
      }
      
      private function §%U§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§`W§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§&!B§.§^8§ && §&!B§.§^8§.§@A§)
         {
            dispatchEventOnChildren(new Event(Event.§9l§));
            if(this.§;!A§ == null)
            {
               this.§;!A§ = new Vector.<§0!7§>(0);
               §&!B§.§^8§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!1§);
            }
            §0!7§.§?]§(this,this.§;!A§);
         }
      }
      
      public function §each §() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§&!B§.§^8§ && §&!B§.§^8§.§@A§)
         {
            if(this.§;!A§)
            {
               §&!B§.§^8§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!1§);
               _loc1_ = this.§;!A§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§;!A§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§;!A§ = null;
            }
         }
      }
      
      private function §#!1§(param1:Event) : void
      {
         if(this.§;!A§)
         {
            this.§;!A§ = new Vector.<§0!7§>(0);
            this.flatten();
         }
      }
      
      public function get §,R§() : Boolean
      {
         return this.§;!A§ != null;
      }
      
      override public function render(param1:§2n§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§;!A§ && color == 16777215)
         {
            param1.§"_§();
            param2 *= this.alpha;
            _loc3_ = this.§;!A§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§;!A§[_loc4_].render(param1.§#?§,param1.§[E§,param2);
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
