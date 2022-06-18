package §7J§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §<!?§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §`U§:int = 2;
      
      public static const §-!G§:int = 3;
       
      
      private var §;b§:Sprite;
      
      public var §6!7§:int = 0;
      
      public var §>!,§:Array;
      
      public function §<!?§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§;b§ = param1;
         }
         this.§>!,§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§;b§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§;b§ && this.§;b§ is MovieClip)
         {
            if(param2)
            {
               (this.§;b§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§;b§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §4j§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§6!7§ |= 1 << param1;
         this.§>!,§[param1] = param2.toUpperCase();
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
         if((this.§6!7§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§;b§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!0§);
         }
         if((this.§6!7§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§;b§.addEventListener(MouseEvent.MOUSE_UP,this.§;#§);
         }
         if((this.§6!7§ & 1 << §`U§) != 0)
         {
            this.§;b§.addEventListener(MouseEvent.ROLL_OVER,this.§`!B§);
         }
         if((this.§6!7§ & 1 << §-!G§) != 0)
         {
            this.§;b§.addEventListener(MouseEvent.ROLL_OUT,this.§+0§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§;b§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!0§);
         this.§;b§.removeEventListener(MouseEvent.MOUSE_UP,this.§;#§);
         this.§;b§.removeEventListener(MouseEvent.ROLL_OVER,this.§`!B§);
         this.§;b§.removeEventListener(MouseEvent.ROLL_OUT,this.§+0§);
      }
      
      public function §[!0§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>!,§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §;#§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>!,§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §`!B§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§`U§,this.§>!,§[§`U§]);
      }
      
      public function §+0§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§-!G§,this.§>!,§[§-!G§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§;b§ = null;
         this.§>!,§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§;b§;
      }
   }
}
