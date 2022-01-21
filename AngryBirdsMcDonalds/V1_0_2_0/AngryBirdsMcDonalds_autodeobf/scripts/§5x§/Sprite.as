package §5x§
{
   import §4!$§.§"P§;
   import §4!$§.§<!2§;
   import §4!$§.§]!f§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §]J§:Vector.<§"P§>;
      
      private var §[Y§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§5!3§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§[Y§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§[Y§)
         {
            return;
         }
         this.§[Y§ = param1;
         if(this.§[Y§)
         {
            addEventListener(TouchEvent.§8i§,this.§4=§);
         }
         else
         {
            removeEventListener(TouchEvent.§8i§,this.§4=§);
         }
      }
      
      private function §4=§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§=!P§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§<!2§.§[!]§ && §<!2§.§[!]§.§1b§)
         {
            dispatchEventOnChildren(new Event(Event.§'!^§));
            if(this.§]J§ == null)
            {
               this.§]J§ = new Vector.<§"P§>(0);
               §<!2§.§[!]§.addEventListener(Event.CONTEXT3D_CREATE,this.§&>§);
            }
            §"P§.§-!8§(this,this.§]J§);
         }
      }
      
      public function §5!3§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§<!2§.§[!]§ && §<!2§.§[!]§.§1b§)
         {
            if(this.§]J§)
            {
               §<!2§.§[!]§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&>§);
               _loc1_ = this.§]J§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§]J§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§]J§ = null;
            }
         }
      }
      
      private function §&>§(param1:Event) : void
      {
         if(this.§]J§)
         {
            this.§]J§ = new Vector.<§"P§>(0);
            this.flatten();
         }
      }
      
      public function get §,j§() : Boolean
      {
         return this.§]J§ != null;
      }
      
      override public function render(param1:§]!f§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§]J§ && color == 16777215)
         {
            param1.§#D§();
            param2 *= this.alpha;
            _loc3_ = this.§]J§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§]J§[_loc4_].render(param1.§8!o§,param1.§%!H§,param2);
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
