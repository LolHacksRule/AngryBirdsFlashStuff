package §<8§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §7!n§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §"!S§:int = 2;
      
      public static const §-!r§:int = 3;
       
      
      private var §@!j§:Sprite;
      
      public var §[+§:int = 0;
      
      public var §#d§:Array;
      
      public function §7!n§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§@!j§ = param1;
         }
         this.§#d§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§@!j§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§@!j§ && this.§@!j§ is MovieClip)
         {
            if(param2)
            {
               (this.§@!j§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§@!j§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §"a§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§[+§ |= 1 << param1;
         this.§#d§[param1] = param2.toUpperCase();
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
         if((this.§[+§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§@!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ V§);
         }
         if((this.§[+§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§@!j§.addEventListener(MouseEvent.MOUSE_UP,this.§`!H§);
         }
         if((this.§[+§ & 1 << §"!S§) != 0)
         {
            this.§@!j§.addEventListener(MouseEvent.ROLL_OVER,this.§%U§);
         }
         if((this.§[+§ & 1 << §-!r§) != 0)
         {
            this.§@!j§.addEventListener(MouseEvent.ROLL_OUT,this.§=-§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§@!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ V§);
         this.§@!j§.removeEventListener(MouseEvent.MOUSE_UP,this.§`!H§);
         this.§@!j§.removeEventListener(MouseEvent.ROLL_OVER,this.§%U§);
         this.§@!j§.removeEventListener(MouseEvent.ROLL_OUT,this.§=-§);
      }
      
      public function § V§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§#d§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §`!H§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§#d§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §%U§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§"!S§,this.§#d§[§"!S§]);
      }
      
      public function §=-§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§-!r§,this.§#d§[§-!r§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§@!j§ = null;
         this.§#d§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§@!j§;
      }
   }
}
