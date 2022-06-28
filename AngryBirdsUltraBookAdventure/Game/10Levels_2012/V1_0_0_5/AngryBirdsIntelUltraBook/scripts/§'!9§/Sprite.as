package §'!9§
{
   import §<&§.§!j§;
   import §<&§.§^b§;
   import §<&§.§`K§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §!@§:Vector.<§!j§>;
      
      private var §6!g§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§=!f§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§6!g§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§6!g§)
         {
            return;
         }
         this.§6!g§ = param1;
         if(this.§6!g§)
         {
            addEventListener(TouchEvent.§2!6§,this.§0,§);
         }
         else
         {
            removeEventListener(TouchEvent.§2!6§,this.§0,§);
         }
      }
      
      private function §0,§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§9[§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§^b§.§9E§ && §^b§.§9E§.§]d§)
         {
            dispatchEventOnChildren(new Event(Event.§&!E§));
            if(this.§!@§ == null)
            {
               this.§!@§ = new Vector.<§!j§>(0);
               §^b§.§9E§.addEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
            }
            §!j§.§^!1§(this,this.§!@§);
         }
      }
      
      public function §=!f§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§^b§.§9E§ && §^b§.§9E§.§]d§)
         {
            if(this.§!@§)
            {
               §^b§.§9E§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
               _loc1_ = this.§!@§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§!@§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§!@§ = null;
            }
         }
      }
      
      private function §!!X§(param1:Event) : void
      {
         if(this.§!@§)
         {
            this.§!@§ = new Vector.<§!j§>(0);
            this.flatten();
         }
      }
      
      public function get §+`§() : Boolean
      {
         return this.§!@§ != null;
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§!@§ && color == 16777215)
         {
            param1.§!r§();
            param2 *= this.alpha;
            _loc3_ = this.§!@§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§!@§[_loc4_].render(param1.§8"§,param1.§7!Y§,param2);
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
