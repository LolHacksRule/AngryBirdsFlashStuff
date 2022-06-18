package §<s§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §]@§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §<o§:int = 2;
      
      public static const §#3§:int = 3;
       
      
      private var §9>§:Sprite;
      
      public var §1!R§:int = 0;
      
      public var §<Z§:Array;
      
      public function §]@§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§9>§ = param1;
         }
         this.§<Z§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§9>§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§9>§ && this.§9>§ is MovieClip)
         {
            if(param2)
            {
               (this.§9>§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§9>§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §0!T§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§1!R§ |= 1 << param1;
         this.§<Z§[param1] = param2.toUpperCase();
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
         if((this.§1!R§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§9>§.addEventListener(MouseEvent.MOUSE_DOWN,this.§;<§);
         }
         if((this.§1!R§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§9>§.addEventListener(MouseEvent.MOUSE_UP,this.§@@§);
         }
         if((this.§1!R§ & 1 << §<o§) != 0)
         {
            this.§9>§.addEventListener(MouseEvent.ROLL_OVER,this.§,!M§);
         }
         if((this.§1!R§ & 1 << §#3§) != 0)
         {
            this.§9>§.addEventListener(MouseEvent.ROLL_OUT,this.§"!#§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§9>§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;<§);
         this.§9>§.removeEventListener(MouseEvent.MOUSE_UP,this.§@@§);
         this.§9>§.removeEventListener(MouseEvent.ROLL_OVER,this.§,!M§);
         this.§9>§.removeEventListener(MouseEvent.ROLL_OUT,this.§"!#§);
      }
      
      public function §;<§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§<Z§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §@@§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§<Z§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §,!M§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§<o§,this.§<Z§[§<o§]);
      }
      
      public function §"!#§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#3§,this.§<Z§[§#3§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§9>§ = null;
         this.§<Z§ = null;
      }
   }
}
