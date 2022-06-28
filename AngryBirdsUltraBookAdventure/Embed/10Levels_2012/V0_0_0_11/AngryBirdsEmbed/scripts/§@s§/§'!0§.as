package §@s§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'!0§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §3]§:int = 2;
      
      public static const §#H§:int = 3;
       
      
      private var §^!E§:Sprite;
      
      public var §>"§:int = 0;
      
      public var §,E§:Array;
      
      public function §'!0§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§^!E§ = param1;
         }
         this.§,E§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§^!E§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§^!E§ && this.§^!E§ is MovieClip)
         {
            if(param2)
            {
               (this.§^!E§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§^!E§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function § [§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§>"§ |= 1 << param1;
         this.§,E§[param1] = param2.toUpperCase();
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
         if((this.§>"§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§^!E§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'m§);
         }
         if((this.§>"§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§^!E§.addEventListener(MouseEvent.MOUSE_UP,this.§[m§);
         }
         if((this.§>"§ & 1 << §3]§) != 0)
         {
            this.§^!E§.addEventListener(MouseEvent.ROLL_OVER,this.§,!7§);
         }
         if((this.§>"§ & 1 << §#H§) != 0)
         {
            this.§^!E§.addEventListener(MouseEvent.ROLL_OUT,this.§;!1§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§^!E§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'m§);
         this.§^!E§.removeEventListener(MouseEvent.MOUSE_UP,this.§[m§);
         this.§^!E§.removeEventListener(MouseEvent.ROLL_OVER,this.§,!7§);
         this.§^!E§.removeEventListener(MouseEvent.ROLL_OUT,this.§;!1§);
      }
      
      public function §'m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§,E§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §[m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§,E§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §,!7§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§3]§,this.§,E§[§3]§]);
      }
      
      public function §;!1§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#H§,this.§,E§[§#H§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§^!E§ = null;
         this.§,E§ = null;
      }
   }
}
