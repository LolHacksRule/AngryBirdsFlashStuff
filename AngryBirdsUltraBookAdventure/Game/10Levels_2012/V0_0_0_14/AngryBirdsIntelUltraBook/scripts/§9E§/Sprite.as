package §9E§
{
   import §@4§.§,!]§;
   import §@4§.§<!I§;
   import §@4§.§]!8§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §%![§:Vector.<§]!8§>;
      
      private var §+!o§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§+Q§();
         super.dispose();
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§+!o§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§+!o§)
         {
            return;
         }
         this.§+!o§ = param1;
         if(this.§+!o§)
         {
            addEventListener(TouchEvent.§`!t§,this.§<Z§);
         }
         else
         {
            removeEventListener(TouchEvent.§`!t§,this.§<Z§);
         }
      }
      
      private function §<Z§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§9!<§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function flatten() : void
      {
         if(§,!]§.§!9§ && §,!]§.§!9§.§@`§)
         {
            dispatchEventOnChildren(new Event(Event.§&f§));
            if(this.§%![§ == null)
            {
               this.§%![§ = new Vector.<§]!8§>(0);
               §,!]§.§!9§.addEventListener(Event.CONTEXT3D_CREATE,this.§,!f§);
            }
            §]!8§.§5!C§(this,this.§%![§);
         }
      }
      
      public function §+Q§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§,!]§.§!9§ && §,!]§.§!9§.§@`§)
         {
            if(this.§%![§)
            {
               §,!]§.§!9§.removeEventListener(Event.CONTEXT3D_CREATE,this.§,!f§);
               _loc1_ = this.§%![§.length;
               _loc2_ = 0;
               while(_loc2_ < _loc1_)
               {
                  this.§%![§[_loc2_].dispose();
                  _loc2_++;
               }
               this.§%![§ = null;
            }
         }
      }
      
      private function §,!f§(param1:Event) : void
      {
         if(this.§%![§)
         {
            this.§%![§ = new Vector.<§]!8§>(0);
            this.flatten();
         }
      }
      
      public function get §?!c§() : Boolean
      {
         return this.§%![§ != null;
      }
      
      override public function render(param1:§<!I§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§%![§ && color == 16777215)
         {
            param1.§ ;§();
            param2 *= this.alpha;
            _loc3_ = this.§%![§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§%![§[_loc4_].render(param1.§@?§,param1.§?!G§,param2);
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
