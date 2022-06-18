package §]!5§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-!3§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §5A§:int = 2;
      
      public static const §8!L§:int = 3;
       
      
      private var §#w§:Sprite;
      
      public var §<&§:int = 0;
      
      public var §=!;§:Array;
      
      public function §-!3§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§#w§ = param1;
         }
         this.§=!;§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§#w§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§#w§ && this.§#w§ is MovieClip)
         {
            if(param2)
            {
               (this.§#w§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§#w§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7!@§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§<&§ |= 1 << param1;
         this.§=!;§[param1] = param2.toUpperCase();
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
         if((this.§<&§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§#w§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[y§);
         }
         if((this.§<&§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§#w§.addEventListener(MouseEvent.MOUSE_UP,this.§3N§);
         }
         if((this.§<&§ & 1 << §5A§) != 0)
         {
            this.§#w§.addEventListener(MouseEvent.ROLL_OVER,this.§2!2§);
         }
         if((this.§<&§ & 1 << §8!L§) != 0)
         {
            this.§#w§.addEventListener(MouseEvent.ROLL_OUT,this.§@_§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§#w§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[y§);
         this.§#w§.removeEventListener(MouseEvent.MOUSE_UP,this.§3N§);
         this.§#w§.removeEventListener(MouseEvent.ROLL_OVER,this.§2!2§);
         this.§#w§.removeEventListener(MouseEvent.ROLL_OUT,this.§@_§);
      }
      
      public function §[y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=!;§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §3N§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=!;§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §2!2§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§5A§,this.§=!;§[§5A§]);
      }
      
      public function §@_§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§8!L§,this.§=!;§[§8!L§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§#w§ = null;
         this.§=!;§ = null;
      }
   }
}
