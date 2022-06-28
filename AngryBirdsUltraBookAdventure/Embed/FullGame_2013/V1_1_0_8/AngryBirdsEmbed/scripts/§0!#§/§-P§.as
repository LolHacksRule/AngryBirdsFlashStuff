package §0!#§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-P§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §[F§:int = 2;
      
      public static const §@^§:int = 3;
       
      
      private var §"1§:Sprite;
      
      public var §-d§:int = 0;
      
      public var §5`§:Array;
      
      public function §-P§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§"1§ = param1;
         }
         this.§5`§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§"1§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§"1§ && this.§"1§ is MovieClip)
         {
            if(param2)
            {
               (this.§"1§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§"1§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §else§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§-d§ |= 1 << param1;
         this.§5`§[param1] = param2.toUpperCase();
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
         if((this.§-d§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§"1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!4§);
         }
         if((this.§-d§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§"1§.addEventListener(MouseEvent.MOUSE_UP,this.§5e§);
         }
         if((this.§-d§ & 1 << §[F§) != 0)
         {
            this.§"1§.addEventListener(MouseEvent.ROLL_OVER,this.§@4§);
         }
         if((this.§-d§ & 1 << §@^§) != 0)
         {
            this.§"1§.addEventListener(MouseEvent.ROLL_OUT,this.§"`§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§"1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!4§);
         this.§"1§.removeEventListener(MouseEvent.MOUSE_UP,this.§5e§);
         this.§"1§.removeEventListener(MouseEvent.ROLL_OVER,this.§@4§);
         this.§"1§.removeEventListener(MouseEvent.ROLL_OUT,this.§"`§);
      }
      
      public function §3!4§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§5`§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §5e§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§5`§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §@4§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§[F§,this.§5`§[§[F§]);
      }
      
      public function §"`§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§@^§,this.§5`§[§@^§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§"1§ = null;
         this.§5`§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§"1§;
      }
   }
}
