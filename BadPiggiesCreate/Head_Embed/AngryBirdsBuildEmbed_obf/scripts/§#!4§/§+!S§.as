package §#!4§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §+!S§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §`"§:int = 2;
      
      public static const §<H§:int = 3;
       
      
      private var §;C§:Sprite;
      
      public var §@!§:int = 0;
      
      public var §!!X§:Array;
      
      public function §+!S§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§;C§ = param1;
         }
         this.§!!X§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§;C§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§;C§ && this.§;C§ is MovieClip)
         {
            if(param2)
            {
               (this.§;C§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§;C§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §<!k§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§@!§ |= 1 << param1;
         this.§!!X§[param1] = param2.toUpperCase();
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
         if((this.§@!§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§;C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!@§);
         }
         if((this.§@!§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§;C§.addEventListener(MouseEvent.CLICK,this.§<1§);
         }
         if((this.§@!§ & 1 << §`"§) != 0)
         {
            this.§;C§.addEventListener(MouseEvent.ROLL_OVER,this.§ $§);
         }
         if((this.§@!§ & 1 << §<H§) != 0)
         {
            this.§;C§.addEventListener(MouseEvent.ROLL_OUT,this.§%c§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§;C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!@§);
         this.§;C§.removeEventListener(MouseEvent.MOUSE_UP,this.§<1§);
         this.§;C§.removeEventListener(MouseEvent.ROLL_OVER,this.§ $§);
         this.§;C§.removeEventListener(MouseEvent.ROLL_OUT,this.§%c§);
      }
      
      public function §[!@§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§!!X§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §<1§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§!!X§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function § $§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§`"§,this.§!!X§[§`"§]);
      }
      
      public function §%c§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§<H§,this.§!!X§[§<H§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§;C§ = null;
         this.§!!X§ = null;
      }
   }
}
