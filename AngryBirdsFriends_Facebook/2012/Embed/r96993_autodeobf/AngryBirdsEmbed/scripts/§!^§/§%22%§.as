package §!^§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §"%§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §2!F§:int = 2;
      
      public static const §!T§:int = 3;
       
      
      private var § case§:Sprite;
      
      public var §%=§:int = 0;
      
      public var §+p§:Array;
      
      public function §"%§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§ case§ = param1;
         }
         this.§+p§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§ case§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§ case§ && this.§ case§ is MovieClip)
         {
            if(param2)
            {
               (this.§ case§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§ case§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §5^§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§%=§ |= 1 << param1;
         this.§+p§[param1] = param2.toUpperCase();
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
         if((this.§%=§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§ case§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ u§);
         }
         if((this.§%=§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§ case§.addEventListener(MouseEvent.MOUSE_UP,this.§'_§);
         }
         if((this.§%=§ & 1 << §2!F§) != 0)
         {
            this.§ case§.addEventListener(MouseEvent.ROLL_OVER,this.§2y§);
         }
         if((this.§%=§ & 1 << §!T§) != 0)
         {
            this.§ case§.addEventListener(MouseEvent.ROLL_OUT,this.§ !>§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§ case§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ u§);
         this.§ case§.removeEventListener(MouseEvent.MOUSE_UP,this.§'_§);
         this.§ case§.removeEventListener(MouseEvent.ROLL_OVER,this.§2y§);
         this.§ case§.removeEventListener(MouseEvent.ROLL_OUT,this.§ !>§);
      }
      
      public function § u§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§+p§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §'_§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§+p§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §2y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2!F§,this.§+p§[§2!F§]);
      }
      
      public function § !>§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§!T§,this.§+p§[§!T§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§ case§ = null;
         this.§+p§ = null;
      }
   }
}
