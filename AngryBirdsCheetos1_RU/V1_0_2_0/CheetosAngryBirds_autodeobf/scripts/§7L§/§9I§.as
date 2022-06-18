package §7L§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §9I§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §[h§:int = 2;
      
      public static const §!t§:int = 3;
       
      
      private var §,!`§:Sprite;
      
      public var §"!7§:int = 0;
      
      public var §-+§:Array;
      
      public function §9I§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§,!`§ = param1;
         }
         this.§-+§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§,!`§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§,!`§ && this.§,!`§ is MovieClip)
         {
            if(param2)
            {
               (this.§,!`§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§,!`§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7,§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§"!7§ |= 1 << param1;
         this.§-+§[param1] = param2.toUpperCase();
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
         if((this.§"!7§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§,!`§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!&§);
         }
         if((this.§"!7§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§,!`§.addEventListener(MouseEvent.MOUSE_UP,this.§8!S§);
         }
         if((this.§"!7§ & 1 << §[h§) != 0)
         {
            this.§,!`§.addEventListener(MouseEvent.ROLL_OVER,this.§@!@§);
         }
         if((this.§"!7§ & 1 << §!t§) != 0)
         {
            this.§,!`§.addEventListener(MouseEvent.ROLL_OUT,this.§%^§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§,!`§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!&§);
         this.§,!`§.removeEventListener(MouseEvent.MOUSE_UP,this.§8!S§);
         this.§,!`§.removeEventListener(MouseEvent.ROLL_OVER,this.§@!@§);
         this.§,!`§.removeEventListener(MouseEvent.ROLL_OUT,this.§%^§);
      }
      
      public function §3!&§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§-+§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §8!S§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§-+§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §@!@§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§[h§,this.§-+§[§[h§]);
      }
      
      public function §%^§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§!t§,this.§-+§[§!t§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§,!`§ = null;
         this.§-+§ = null;
      }
   }
}
