package §5F§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §+!O§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §,j§:int = 2;
      
      public static const §1!#§:int = 3;
       
      
      private var §`U§:Sprite;
      
      public var §"!;§:int = 0;
      
      public var §?j§:Array;
      
      public function §+!O§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§`U§ = param1;
         }
         this.§?j§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§`U§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§`U§ && this.§`U§ is MovieClip)
         {
            if(param2)
            {
               (this.§`U§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§`U§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §53§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§"!;§ |= 1 << param1;
         this.§?j§[param1] = param2.toUpperCase();
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
         if((this.§"!;§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§`U§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]#§);
         }
         if((this.§"!;§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§`U§.addEventListener(MouseEvent.MOUSE_UP,this.§0!O§);
         }
         if((this.§"!;§ & 1 << §,j§) != 0)
         {
            this.§`U§.addEventListener(MouseEvent.ROLL_OVER,this.§,b§);
         }
         if((this.§"!;§ & 1 << §1!#§) != 0)
         {
            this.§`U§.addEventListener(MouseEvent.ROLL_OUT,this.§2M§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§`U§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]#§);
         this.§`U§.removeEventListener(MouseEvent.MOUSE_UP,this.§0!O§);
         this.§`U§.removeEventListener(MouseEvent.ROLL_OVER,this.§,b§);
         this.§`U§.removeEventListener(MouseEvent.ROLL_OUT,this.§2M§);
      }
      
      public function §]#§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§?j§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §0!O§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§?j§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §,b§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§,j§,this.§?j§[§,j§]);
      }
      
      public function §2M§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§1!#§,this.§?j§[§1!#§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§`U§ = null;
         this.§?j§ = null;
      }
   }
}
