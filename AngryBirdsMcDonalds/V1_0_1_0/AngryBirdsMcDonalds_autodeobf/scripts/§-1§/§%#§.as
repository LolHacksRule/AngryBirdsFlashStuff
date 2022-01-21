package §-1§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §%#§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §%'§:int = 2;
      
      public static const §,4§:int = 3;
       
      
      private var §^w§:Sprite;
      
      public var §3i§:int = 0;
      
      public var §5y§:Array;
      
      public function §%#§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§^w§ = param1;
         }
         this.§5y§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§^w§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§^w§ && this.§^w§ is MovieClip)
         {
            if(param2)
            {
               (this.§^w§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§^w§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §%!4§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§3i§ |= 1 << param1;
         this.§5y§[param1] = param2.toUpperCase();
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
         if((this.§3i§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§^w§.addEventListener(MouseEvent.MOUSE_DOWN,this.§?r§);
         }
         if((this.§3i§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§^w§.addEventListener(MouseEvent.MOUSE_UP,this.§!8§);
         }
         if((this.§3i§ & 1 << §%'§) != 0)
         {
            this.§^w§.addEventListener(MouseEvent.ROLL_OVER,this.§-=§);
         }
         if((this.§3i§ & 1 << §,4§) != 0)
         {
            this.§^w§.addEventListener(MouseEvent.ROLL_OUT,this.§1!H§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§^w§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?r§);
         this.§^w§.removeEventListener(MouseEvent.MOUSE_UP,this.§!8§);
         this.§^w§.removeEventListener(MouseEvent.ROLL_OVER,this.§-=§);
         this.§^w§.removeEventListener(MouseEvent.ROLL_OUT,this.§1!H§);
      }
      
      public function §?r§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§5y§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §!8§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§5y§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §-=§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§%'§,this.§5y§[§%'§]);
      }
      
      public function §1!H§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§,4§,this.§5y§[§,4§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§^w§ = null;
         this.§5y§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§^w§;
      }
   }
}
