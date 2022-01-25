package §&V§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §9t§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §>!M§:int = 2;
      
      public static const §>Y§:int = 3;
       
      
      private var §?_§:Sprite;
      
      public var §=!2§:int = 0;
      
      public var §6o§:Array;
      
      public function §9t§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§?_§ = param1;
         }
         this.§6o§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§?_§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§?_§ && this.§?_§ is MovieClip)
         {
            if(param2)
            {
               (this.§?_§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§?_§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §8!Q§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§=!2§ |= 1 << param1;
         this.§6o§[param1] = param2.toUpperCase();
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
         if((this.§=!2§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§?_§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]p§);
         }
         if((this.§=!2§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§?_§.addEventListener(MouseEvent.MOUSE_UP,this.§2U§);
         }
         if((this.§=!2§ & 1 << §>!M§) != 0)
         {
            this.§?_§.addEventListener(MouseEvent.ROLL_OVER,this.§'!V§);
         }
         if((this.§=!2§ & 1 << §>Y§) != 0)
         {
            this.§?_§.addEventListener(MouseEvent.ROLL_OUT,this.§`4§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§?_§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]p§);
         this.§?_§.removeEventListener(MouseEvent.MOUSE_UP,this.§2U§);
         this.§?_§.removeEventListener(MouseEvent.ROLL_OVER,this.§'!V§);
         this.§?_§.removeEventListener(MouseEvent.ROLL_OUT,this.§`4§);
      }
      
      public function §]p§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§6o§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §2U§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§6o§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §'!V§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§>!M§,this.§6o§[§>!M§]);
      }
      
      public function §`4§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§>Y§,this.§6o§[§>Y§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§?_§ = null;
         this.§6o§ = null;
      }
   }
}
