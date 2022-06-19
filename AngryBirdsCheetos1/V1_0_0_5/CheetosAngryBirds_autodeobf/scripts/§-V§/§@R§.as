package §-V§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §@R§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §91§:int = 2;
      
      public static const §'8§:int = 3;
       
      
      private var §]^§:Sprite;
      
      public var §1C§:int = 0;
      
      public var §^?§:Array;
      
      public function §@R§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§]^§ = param1;
         }
         this.§^?§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§]^§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§]^§ && this.§]^§ is MovieClip)
         {
            if(param2)
            {
               (this.§]^§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§]^§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §=a§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§1C§ |= 1 << param1;
         this.§^?§[param1] = param2.toUpperCase();
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
         if((this.§1C§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§]^§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!Y§);
         }
         if((this.§1C§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§]^§.addEventListener(MouseEvent.CLICK,this.§%!@§);
         }
         if((this.§1C§ & 1 << §91§) != 0)
         {
            this.§]^§.addEventListener(MouseEvent.ROLL_OVER,this.§?^§);
         }
         if((this.§1C§ & 1 << §'8§) != 0)
         {
            this.§]^§.addEventListener(MouseEvent.ROLL_OUT,this.§";§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§]^§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@!Y§);
         this.§]^§.removeEventListener(MouseEvent.MOUSE_UP,this.§%!@§);
         this.§]^§.removeEventListener(MouseEvent.ROLL_OVER,this.§?^§);
         this.§]^§.removeEventListener(MouseEvent.ROLL_OUT,this.§";§);
      }
      
      public function §@!Y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§^?§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §%!@§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§^?§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §?^§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§91§,this.§^?§[§91§]);
      }
      
      public function §";§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'8§,this.§^?§[§'8§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§]^§ = null;
         this.§^?§ = null;
      }
   }
}
