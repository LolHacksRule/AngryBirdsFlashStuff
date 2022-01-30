package §4!j§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §0p§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §#!7§:int = 2;
      
      public static const §?!!§:int = 3;
       
      
      private var §6!T§:Sprite;
      
      public var §"P§:int = 0;
      
      public var § !N§:Array;
      
      public function §0p§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§6!T§ = param1;
         }
         this.§ !N§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§6!T§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§6!T§ && this.§6!T§ is MovieClip)
         {
            if(param2)
            {
               (this.§6!T§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§6!T§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §3!F§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§"P§ |= 1 << param1;
         this.§ !N§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.addEventListeners();
         }
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         this.removeEventListeners();
         if((this.§"P§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§6!T§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@I§);
         }
         if((this.§"P§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§6!T§.addEventListener(MouseEvent.MOUSE_UP,this.§9i§);
         }
         if((this.§"P§ & 1 << §#!7§) != 0)
         {
            this.§6!T§.addEventListener(MouseEvent.ROLL_OVER,this.§?3§);
         }
         if((this.§"P§ & 1 << §?!!§) != 0)
         {
            this.§6!T§.addEventListener(MouseEvent.ROLL_OUT,this.§]!u§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§6!T§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@I§);
         this.§6!T§.removeEventListener(MouseEvent.MOUSE_UP,this.§9i§);
         this.§6!T§.removeEventListener(MouseEvent.ROLL_OVER,this.§?3§);
         this.§6!T§.removeEventListener(MouseEvent.ROLL_OUT,this.§]!u§);
      }
      
      public function §@I§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§ !N§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §9i§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§ !N§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §?3§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#!7§,this.§ !N§[§#!7§]);
      }
      
      public function §]!u§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§?!!§,this.§ !N§[§?!!§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§6!T§ = null;
         this.§ !N§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§6!T§;
      }
   }
}
