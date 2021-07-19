package §1§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'n§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §6!A§:int = 2;
      
      public static const §'!#§:int = 3;
       
      
      private var §`U§:Sprite;
      
      public var §`<§:int = 0;
      
      public var §2!;§:Array;
      
      public function §'n§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§`U§ = param1;
         }
         this.§2!;§ = new Array();
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
      
      public function §2!4§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§`<§ |= 1 << param1;
         this.§2!;§[param1] = param2.toUpperCase();
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
         if((this.§`<§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§`U§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`i§);
         }
         if((this.§`<§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§`U§.addEventListener(MouseEvent.MOUSE_UP,this.§+z§);
         }
         if((this.§`<§ & 1 << §6!A§) != 0)
         {
            this.§`U§.addEventListener(MouseEvent.ROLL_OVER,this.§]v§);
         }
         if((this.§`<§ & 1 << §'!#§) != 0)
         {
            this.§`U§.addEventListener(MouseEvent.ROLL_OUT,this.§!d§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§`U§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`i§);
         this.§`U§.removeEventListener(MouseEvent.MOUSE_UP,this.§+z§);
         this.§`U§.removeEventListener(MouseEvent.ROLL_OVER,this.§]v§);
         this.§`U§.removeEventListener(MouseEvent.ROLL_OUT,this.§!d§);
      }
      
      public function §`i§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§2!;§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §+z§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§2!;§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §]v§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§6!A§,this.§2!;§[§6!A§]);
      }
      
      public function §!d§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'!#§,this.§2!;§[§'!#§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§`U§ = null;
         this.§2!;§ = null;
      }
   }
}
