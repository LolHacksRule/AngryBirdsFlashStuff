package §var§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §+!^§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §@M§:int = 2;
      
      public static const §%%§:int = 3;
       
      
      private var §#x§:Sprite;
      
      public var §]!+§:int = 0;
      
      public var §1&§:Array;
      
      public function §+!^§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§#x§ = param1;
         }
         this.§1&§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§#x§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§#x§ && this.§#x§ is MovieClip)
         {
            if(param2)
            {
               (this.§#x§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§#x§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §?!N§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§]!+§ |= 1 << param1;
         this.§1&§[param1] = param2.toUpperCase();
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
         if((this.§]!+§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§#x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!F§);
         }
         if((this.§]!+§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§#x§.addEventListener(MouseEvent.MOUSE_UP,this.§45§);
         }
         if((this.§]!+§ & 1 << §@M§) != 0)
         {
            this.§#x§.addEventListener(MouseEvent.ROLL_OVER,this.§;m§);
         }
         if((this.§]!+§ & 1 << §%%§) != 0)
         {
            this.§#x§.addEventListener(MouseEvent.ROLL_OUT,this.§&M§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§#x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!F§);
         this.§#x§.removeEventListener(MouseEvent.MOUSE_UP,this.§45§);
         this.§#x§.removeEventListener(MouseEvent.ROLL_OVER,this.§;m§);
         this.§#x§.removeEventListener(MouseEvent.ROLL_OUT,this.§&M§);
      }
      
      public function §0!F§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§1&§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §45§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§1&§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §;m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§@M§,this.§1&§[§@M§]);
      }
      
      public function §&M§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§%%§,this.§1&§[§%%§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§#x§ = null;
         this.§1&§ = null;
      }
   }
}
