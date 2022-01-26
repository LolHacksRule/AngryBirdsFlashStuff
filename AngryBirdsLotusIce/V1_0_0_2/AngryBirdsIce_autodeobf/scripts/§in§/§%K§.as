package §in§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §%K§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §9S§:int = 2;
      
      public static const §54§:int = 3;
       
      
      private var §6=§:Sprite;
      
      public var §6s§:int = 0;
      
      public var §]^§:Array;
      
      public function §%K§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§6=§ = param1;
         }
         this.§]^§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§6=§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§6=§ && this.§6=§ is MovieClip)
         {
            if(param2)
            {
               (this.§6=§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§6=§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §]o§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§6s§ |= 1 << param1;
         this.§]^§[param1] = param2.toUpperCase();
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
         if((this.§6s§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§6=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§6!7§);
         }
         if((this.§6s§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§6=§.addEventListener(MouseEvent.CLICK,this.§=c§);
         }
         if((this.§6s§ & 1 << §9S§) != 0)
         {
            this.§6=§.addEventListener(MouseEvent.ROLL_OVER,this.§8]§);
         }
         if((this.§6s§ & 1 << §54§) != 0)
         {
            this.§6=§.addEventListener(MouseEvent.ROLL_OUT,this.§ !<§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§6=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!7§);
         this.§6=§.removeEventListener(MouseEvent.MOUSE_UP,this.§=c§);
         this.§6=§.removeEventListener(MouseEvent.ROLL_OVER,this.§8]§);
         this.§6=§.removeEventListener(MouseEvent.ROLL_OUT,this.§ !<§);
      }
      
      public function §6!7§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§]^§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §=c§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§]^§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §8]§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§9S§,this.§]^§[§9S§]);
      }
      
      public function § !<§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§54§,this.§]^§[§54§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§6=§ = null;
         this.§]^§ = null;
      }
   }
}
