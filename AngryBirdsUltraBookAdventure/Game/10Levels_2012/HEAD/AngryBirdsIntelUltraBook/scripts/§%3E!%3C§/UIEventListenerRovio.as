package §>!<§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class UIEventListenerRovio
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §"!H§:int = 2;
      
      public static const §2!O§:int = 3;
       
      
      private var §#>§:Sprite;
      
      public var §4!Z§:int = 0;
      
      public var §-!Z§:Array;
      
      public function UIEventListenerRovio(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§#>§ = param1;
         }
         this.§-!Z§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§#>§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§#>§ && this.§#>§ is MovieClip)
         {
            if(param2)
            {
               (this.§#>§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§#>§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §?o§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§4!Z§ |= 1 << param1;
         this.§-!Z§[param1] = param2.toUpperCase();
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
         if((this.§4!Z§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§#>§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=!J§);
         }
         if((this.§4!Z§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§#>§.addEventListener(MouseEvent.MOUSE_UP,this.§^!]§);
         }
         if((this.§4!Z§ & 1 << §"!H§) != 0)
         {
            this.§#>§.addEventListener(MouseEvent.ROLL_OVER,this.§>;§);
         }
         if((this.§4!Z§ & 1 << §2!O§) != 0)
         {
            this.§#>§.addEventListener(MouseEvent.ROLL_OUT,this.§]"§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§#>§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!J§);
         this.§#>§.removeEventListener(MouseEvent.MOUSE_UP,this.§^!]§);
         this.§#>§.removeEventListener(MouseEvent.ROLL_OVER,this.§>;§);
         this.§#>§.removeEventListener(MouseEvent.ROLL_OUT,this.§]"§);
      }
      
      public function §=!J§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§-!Z§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §^!]§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§-!Z§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §>;§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§"!H§,this.§-!Z§[§"!H§]);
      }
      
      public function §]"§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2!O§,this.§-!Z§[§2!O§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§#>§ = null;
         this.§-!Z§ = null;
      }
   }
}
