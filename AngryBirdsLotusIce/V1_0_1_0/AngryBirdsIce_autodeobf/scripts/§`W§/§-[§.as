package §`W§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-[§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §&!<§:int = 2;
      
      public static const §@K§:int = 3;
       
      
      private var § ^§:Sprite;
      
      public var §`L§:int = 0;
      
      public var §>t§:Array;
      
      public function §-[§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§ ^§ = param1;
         }
         this.§>t§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§ ^§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§ ^§ && this.§ ^§ is MovieClip)
         {
            if(param2)
            {
               (this.§ ^§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§ ^§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §`!E§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§`L§ |= 1 << param1;
         this.§>t§[param1] = param2.toUpperCase();
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
         if((this.§`L§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§ ^§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"r§);
         }
         if((this.§`L§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§ ^§.addEventListener(MouseEvent.CLICK,this.§`?§);
         }
         if((this.§`L§ & 1 << §&!<§) != 0)
         {
            this.§ ^§.addEventListener(MouseEvent.ROLL_OVER,this.§6!?§);
         }
         if((this.§`L§ & 1 << §@K§) != 0)
         {
            this.§ ^§.addEventListener(MouseEvent.ROLL_OUT,this.§4Z§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§ ^§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"r§);
         this.§ ^§.removeEventListener(MouseEvent.MOUSE_UP,this.§`?§);
         this.§ ^§.removeEventListener(MouseEvent.ROLL_OVER,this.§6!?§);
         this.§ ^§.removeEventListener(MouseEvent.ROLL_OUT,this.§4Z§);
      }
      
      public function §"r§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>t§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §`?§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>t§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §6!?§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§&!<§,this.§>t§[§&!<§]);
      }
      
      public function §4Z§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§@K§,this.§>t§[§@K§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§ ^§ = null;
         this.§>t§ = null;
      }
   }
}
