package §^V§
{
   import §-Z§.§ G§;
   import §-Z§.§0o§;
   import §-Z§.§?h§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §,z§:Vector.<§0o§>;
      
      private var §3r§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§]P§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§3r§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§3r§)
         {
            return;
         }
         this.§3r§ = param1;
         if(this.§3r§)
         {
            addEventListener(TouchEvent.§[<§,this.§&=§);
         }
         else
         {
            removeEventListener(TouchEvent.§[<§,this.§&=§);
         }
      }
      
      private function §&=§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§8<§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§?h§.§ n§ && §?h§.§ n§.§,!A§)
         {
            dispatchEventOnChildren(new Event(Event.§ -§));
            if(this.§,z§ == null)
            {
               this.§,z§ = new Vector.<§0o§>(0);
               §?h§.§ n§.addEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
            }
            §0o§.§,!#§(this,this.§,z§);
         }
      }
      
      public function §]P§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§?h§.§ n§ && §?h§.§ n§.§,!A§)
         {
            if(this.§,z§)
            {
               §?h§.§ n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
               _loc1_ = this.§,z§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§,z§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§,z§ = null;
            }
         }
      }
      
      private function § ,§(param1:Event) : void
      {
         if(this.§,z§)
         {
            this.§,z§ = new Vector.<§0o§>(0);
            this.flatten();
         }
      }
      
      public function get § R§() : Boolean
      {
         return this.§,z§ != null;
      }
      
      override public function render(param1:§ G§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§,z§ && color == 16777215)
         {
            param1.§ ]§();
            param2 *= this.alpha;
            _loc3_ = this.§,z§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§,z§[_loc4_].render(param1.context,param1.§4L§,param2);
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
