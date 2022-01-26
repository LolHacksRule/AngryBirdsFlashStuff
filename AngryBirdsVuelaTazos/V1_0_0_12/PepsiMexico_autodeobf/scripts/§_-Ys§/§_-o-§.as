package §_-Ys§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-o-§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-GB§:int = 2;
      
      public static const §_-UA§:int = 3;
       
      
      private var §_-So§:Sprite;
      
      public var §_-k5§:int = 0;
      
      public var §_-ht§:Array;
      
      public function §_-o-§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-So§ = param1;
         }
         this.§_-ht§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§_-Nx§();
         this.§_-So§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-So§ && this.§_-So§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-So§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-So§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-1W§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-k5§ |= 1 << param1;
         this.§_-ht§[param1] = param2.toUpperCase();
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
         this.§_-Nx§();
         if((this.§_-k5§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-So§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-km§);
         }
         if((this.§_-k5§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-So§.addEventListener(MouseEvent.MOUSE_UP,this.§_-cj§);
         }
         if((this.§_-k5§ & 1 << §_-GB§) != 0)
         {
            this.§_-So§.addEventListener(MouseEvent.ROLL_OVER,this.§_-4m§);
         }
         if((this.§_-k5§ & 1 << §_-UA§) != 0)
         {
            this.§_-So§.addEventListener(MouseEvent.ROLL_OUT,this.§_-JA§);
         }
      }
      
      public function §_-Nx§() : void
      {
         this.§_-So§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-km§);
         this.§_-So§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-cj§);
         this.§_-So§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-4m§);
         this.§_-So§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-JA§);
      }
      
      public function §_-km§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-ht§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-cj§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-ht§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-4m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-GB§,this.§_-ht§[§_-GB§]);
      }
      
      public function §_-JA§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-UA§,this.§_-ht§[§_-UA§]);
      }
      
      public function clear() : void
      {
         this.§_-Nx§();
         this.§_-So§ = null;
         this.§_-ht§ = null;
      }
   }
}
