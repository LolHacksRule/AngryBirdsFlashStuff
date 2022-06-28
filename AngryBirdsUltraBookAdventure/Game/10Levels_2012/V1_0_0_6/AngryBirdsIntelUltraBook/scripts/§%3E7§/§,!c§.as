package §>7§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §,!c§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §"!n§:int = 2;
      
      public static const §^v§:int = 3;
       
      
      private var §5a§:Sprite;
      
      public var §4q§:int = 0;
      
      public var §9t§:Array;
      
      public function §,!c§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§5a§ = param1;
         }
         this.§9t§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§5a§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§5a§ && this.§5a§ is MovieClip)
         {
            if(param2)
            {
               (this.§5a§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§5a§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §-?§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§4q§ |= 1 << param1;
         this.§9t§[param1] = param2.toUpperCase();
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
         if((this.§4q§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§5a§.addEventListener(MouseEvent.MOUSE_DOWN,this.§&#§);
         }
         if((this.§4q§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§5a§.addEventListener(MouseEvent.MOUSE_UP,this.§]!%§);
         }
         if((this.§4q§ & 1 << §"!n§) != 0)
         {
            this.§5a§.addEventListener(MouseEvent.ROLL_OVER,this.§6!m§);
         }
         if((this.§4q§ & 1 << §^v§) != 0)
         {
            this.§5a§.addEventListener(MouseEvent.ROLL_OUT,this.§ C§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§5a§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§&#§);
         this.§5a§.removeEventListener(MouseEvent.MOUSE_UP,this.§]!%§);
         this.§5a§.removeEventListener(MouseEvent.ROLL_OVER,this.§6!m§);
         this.§5a§.removeEventListener(MouseEvent.ROLL_OUT,this.§ C§);
      }
      
      public function §&#§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§9t§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §]!%§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§9t§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §6!m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§"!n§,this.§9t§[§"!n§]);
      }
      
      public function § C§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§^v§,this.§9t§[§^v§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§5a§ = null;
         this.§9t§ = null;
      }
   }
}
