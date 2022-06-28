package §9Y§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §6!8§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^§:int = 2;
      
      public static const §[!J§:int = 3;
       
      
      private var §,u§:Sprite;
      
      public var §^H§:int = 0;
      
      public var §#8§:Array;
      
      public function §6!8§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§,u§ = param1;
         }
         this.§#8§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§,u§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§,u§ && this.§,u§ is MovieClip)
         {
            if(param2)
            {
               (this.§,u§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§,u§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7k§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^H§ |= 1 << param1;
         this.§#8§[param1] = param2.toUpperCase();
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
         if((this.§^H§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§,u§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4!2§);
         }
         if((this.§^H§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§,u§.addEventListener(MouseEvent.MOUSE_UP,this.§function§);
         }
         if((this.§^H§ & 1 << §^§) != 0)
         {
            this.§,u§.addEventListener(MouseEvent.ROLL_OVER,this.§=!T§);
         }
         if((this.§^H§ & 1 << §[!J§) != 0)
         {
            this.§,u§.addEventListener(MouseEvent.ROLL_OUT,this.§>d§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§,u§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!2§);
         this.§,u§.removeEventListener(MouseEvent.MOUSE_UP,this.§function§);
         this.§,u§.removeEventListener(MouseEvent.ROLL_OVER,this.§=!T§);
         this.§,u§.removeEventListener(MouseEvent.ROLL_OUT,this.§>d§);
      }
      
      public function §4!2§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§#8§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §function§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§#8§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §=!T§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§^§,this.§#8§[§^§]);
      }
      
      public function §>d§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§[!J§,this.§#8§[§[!J§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§,u§ = null;
         this.§#8§ = null;
      }
   }
}
