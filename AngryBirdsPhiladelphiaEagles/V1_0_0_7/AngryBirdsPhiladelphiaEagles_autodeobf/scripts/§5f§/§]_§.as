package §5f§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §]_§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^8§:int = 2;
      
      public static const §<!L§:int = 3;
       
      
      private var §<;§:Sprite;
      
      public var §[R§:int = 0;
      
      public var §7+§:Array;
      
      public function §]_§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§<;§ = param1;
         }
         this.§7+§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§<;§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§<;§ && this.§<;§ is MovieClip)
         {
            if(param2)
            {
               (this.§<;§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§<;§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §`y§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§[R§ |= 1 << param1;
         this.§7+§[param1] = param2.toUpperCase();
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
         if((this.§[R§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§<;§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!>§);
         }
         if((this.§[R§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§<;§.addEventListener(MouseEvent.MOUSE_UP,this.§%V§);
         }
         if((this.§[R§ & 1 << §^8§) != 0)
         {
            this.§<;§.addEventListener(MouseEvent.ROLL_OVER,this.§1!5§);
         }
         if((this.§[R§ & 1 << §<!L§) != 0)
         {
            this.§<;§.addEventListener(MouseEvent.ROLL_OUT,this.§2!?§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§<;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@!>§);
         this.§<;§.removeEventListener(MouseEvent.MOUSE_UP,this.§%V§);
         this.§<;§.removeEventListener(MouseEvent.ROLL_OVER,this.§1!5§);
         this.§<;§.removeEventListener(MouseEvent.ROLL_OUT,this.§2!?§);
      }
      
      public function §@!>§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§7+§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §%V§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§7+§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §1!5§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§^8§,this.§7+§[§^8§]);
      }
      
      public function §2!?§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§<!L§,this.§7+§[§<!L§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§<;§ = null;
         this.§7+§ = null;
      }
   }
}
