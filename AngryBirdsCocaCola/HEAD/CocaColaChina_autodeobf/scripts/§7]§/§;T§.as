package §7]§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §;T§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §?R§:int = 2;
      
      public static const §&y§:int = 3;
       
      
      private var §%S§:Sprite;
      
      public var §+!0§:int = 0;
      
      public var §"!4§:Array;
      
      public function §;T§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§%S§ = param1;
         }
         this.§"!4§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§%S§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§%S§ && this.§%S§ is MovieClip)
         {
            if(param2)
            {
               (this.§%S§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§%S§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §=!&§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§+!0§ |= 1 << param1;
         this.§"!4§[param1] = param2.toUpperCase();
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
         if((this.§+!0§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§%S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>!I§);
         }
         if((this.§+!0§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§%S§.addEventListener(MouseEvent.CLICK,this.§^!M§);
         }
         if((this.§+!0§ & 1 << §?R§) != 0)
         {
            this.§%S§.addEventListener(MouseEvent.ROLL_OVER,this.§3![§);
         }
         if((this.§+!0§ & 1 << §&y§) != 0)
         {
            this.§%S§.addEventListener(MouseEvent.ROLL_OUT,this.§"y§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§%S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>!I§);
         this.§%S§.removeEventListener(MouseEvent.MOUSE_UP,this.§^!M§);
         this.§%S§.removeEventListener(MouseEvent.ROLL_OVER,this.§3![§);
         this.§%S§.removeEventListener(MouseEvent.ROLL_OUT,this.§"y§);
      }
      
      public function §>!I§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§"!4§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §^!M§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§"!4§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §3![§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§?R§,this.§"!4§[§?R§]);
      }
      
      public function §"y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§&y§,this.§"!4§[§&y§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§%S§ = null;
         this.§"!4§ = null;
      }
   }
}
