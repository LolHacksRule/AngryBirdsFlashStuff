package §>!-§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class UIEventListenerRovio
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §,!k§:int = 2;
      
      public static const §@8§:int = 3;
       
      
      private var §`!?§:Sprite;
      
      public var §%E§:int = 0;
      
      public var §>!,§:Array;
      
      public function UIEventListenerRovio(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§`!?§ = param1;
         }
         this.§>!,§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§`!?§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§`!?§ && this.§`!?§ is MovieClip)
         {
            if(param2)
            {
               (this.§`!?§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§`!?§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §5j§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§%E§ |= 1 << param1;
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
         if((this.§%E§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§`!?§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!9§);
         }
         if((this.§%E§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§`!?§.addEventListener(MouseEvent.MOUSE_UP,this.§7!i§);
         }
         if((this.§%E§ & 1 << §,!k§) != 0)
         {
            this.§`!?§.addEventListener(MouseEvent.ROLL_OVER,this.§>,§);
         }
         if((this.§%E§ & 1 << §@8§) != 0)
         {
            this.§`!?§.addEventListener(MouseEvent.ROLL_OUT,this.§'=§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§`!?§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#!9§);
         this.§`!?§.removeEventListener(MouseEvent.MOUSE_UP,this.§7!i§);
         this.§`!?§.removeEventListener(MouseEvent.ROLL_OVER,this.§>,§);
         this.§`!?§.removeEventListener(MouseEvent.ROLL_OUT,this.§'=§);
      }
      
      public function §#!9§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>!,§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §7!i§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>!,§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §>,§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§,!k§,this.§>!,§[§,!k§]);
      }
      
      public function §'=§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§@8§,this.§>!,§[§@8§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§`!?§ = null;
         this.§>!,§ = null;
      }
   }
}
