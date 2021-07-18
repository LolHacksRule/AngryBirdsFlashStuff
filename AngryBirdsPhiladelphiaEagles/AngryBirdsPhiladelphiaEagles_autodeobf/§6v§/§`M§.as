package §6v§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §`M§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^! §:int = 2;
      
      public static const §&U§:int = 3;
       
      
      private var §4! §:Sprite;
      
      public var §>t§:int = 0;
      
      public var §6R§:Array;
      
      public function §`M§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§4! § = param1;
         }
         this.§6R§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§4! § = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§4! § && this.§4! § is MovieClip)
         {
            if(param2)
            {
               (this.§4! § as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§4! § as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §9A§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§>t§ |= 1 << param1;
         this.§6R§[param1] = param2.toUpperCase();
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
         if((this.§>t§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§4! §.addEventListener(MouseEvent.MOUSE_DOWN,this.§7J§);
         }
         if((this.§>t§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§4! §.addEventListener(MouseEvent.MOUSE_UP,this.§>a§);
         }
         if((this.§>t§ & 1 << §^! §) != 0)
         {
            this.§4! §.addEventListener(MouseEvent.ROLL_OVER,this.§ V§);
         }
         if((this.§>t§ & 1 << §&U§) != 0)
         {
            this.§4! §.addEventListener(MouseEvent.ROLL_OUT,this.§[;§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§4! §.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7J§);
         this.§4! §.removeEventListener(MouseEvent.MOUSE_UP,this.§>a§);
         this.§4! §.removeEventListener(MouseEvent.ROLL_OVER,this.§ V§);
         this.§4! §.removeEventListener(MouseEvent.ROLL_OUT,this.§[;§);
      }
      
      public function §7J§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§6R§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §>a§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§6R§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function § V§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§^! §,this.§6R§[§^! §]);
      }
      
      public function §[;§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§&U§,this.§6R§[§&U§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§4! § = null;
         this.§6R§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§4! §;
      }
   }
}
