package §1h§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §@s§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §;!1§:int = 2;
      
      public static const §3]§:int = 3;
       
      
      private var §'!0§:Sprite;
      
      public var §^!E§:int = 0;
      
      public var §>"§:Array;
      
      public function §@s§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§'!0§ = param1;
         }
         this.§>"§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§'!0§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§'!0§ && this.§'!0§ is MovieClip)
         {
            if(param2)
            {
               (this.§'!0§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§'!0§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §,E§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^!E§ |= 1 << param1;
         this.§>"§[param1] = param2.toUpperCase();
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
         if((this.§^!E§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§'!0§.addEventListener(MouseEvent.MOUSE_DOWN,this.§-H§);
         }
         if((this.§^!E§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§'!0§.addEventListener(MouseEvent.MOUSE_UP,this.§'m§);
         }
         if((this.§^!E§ & 1 << §;!1§) != 0)
         {
            this.§'!0§.addEventListener(MouseEvent.ROLL_OVER,this.§ [§);
         }
         if((this.§^!E§ & 1 << §3]§) != 0)
         {
            this.§'!0§.addEventListener(MouseEvent.ROLL_OUT,this.§,!7§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§'!0§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-H§);
         this.§'!0§.removeEventListener(MouseEvent.MOUSE_UP,this.§'m§);
         this.§'!0§.removeEventListener(MouseEvent.ROLL_OVER,this.§ [§);
         this.§'!0§.removeEventListener(MouseEvent.ROLL_OUT,this.§,!7§);
      }
      
      public function §-H§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>"§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §'m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>"§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function § [§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§;!1§,this.§>"§[§;!1§]);
      }
      
      public function §,!7§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§3]§,this.§>"§[§3]§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§'!0§ = null;
         this.§>"§ = null;
      }
   }
}
