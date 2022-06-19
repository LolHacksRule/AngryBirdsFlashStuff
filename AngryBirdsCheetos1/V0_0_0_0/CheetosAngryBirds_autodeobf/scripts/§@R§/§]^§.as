package §@R§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §]^§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §'8§:int = 2;
      
      public static const §@!$§:int = 3;
       
      
      private var §1C§:Sprite;
      
      public var §^?§:int = 0;
      
      public var §=a§:Array;
      
      public function §]^§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§1C§ = param1;
         }
         this.§=a§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§1C§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§1C§ && this.§1C§ is MovieClip)
         {
            if(param2)
            {
               (this.§1C§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§1C§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §?^§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^?§ |= 1 << param1;
         this.§=a§[param1] = param2.toUpperCase();
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
         if((this.§^?§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§1C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%!@§);
         }
         if((this.§^?§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§1C§.addEventListener(MouseEvent.CLICK,this.§1!2§);
         }
         if((this.§^?§ & 1 << §'8§) != 0)
         {
            this.§1C§.addEventListener(MouseEvent.ROLL_OVER,this.§";§);
         }
         if((this.§^?§ & 1 << §@!$§) != 0)
         {
            this.§1C§.addEventListener(MouseEvent.ROLL_OUT,this.§91§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§1C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%!@§);
         this.§1C§.removeEventListener(MouseEvent.MOUSE_UP,this.§1!2§);
         this.§1C§.removeEventListener(MouseEvent.ROLL_OVER,this.§";§);
         this.§1C§.removeEventListener(MouseEvent.ROLL_OUT,this.§91§);
      }
      
      public function §%!@§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=a§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §1!2§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=a§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §";§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'8§,this.§=a§[§'8§]);
      }
      
      public function §91§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§@!$§,this.§=a§[§@!$§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§1C§ = null;
         this.§=a§ = null;
      }
   }
}
