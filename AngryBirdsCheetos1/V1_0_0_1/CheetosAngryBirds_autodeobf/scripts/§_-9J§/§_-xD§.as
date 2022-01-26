package §_-9J§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-xD§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-QP§:int = 2;
      
      public static const §_-md§:int = 3;
       
      
      private var §_-2i§:Sprite;
      
      public var §_-tR§:int = 0;
      
      public var §_-k-§:Array;
      
      public function §_-xD§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-2i§ = param1;
         }
         this.§_-k-§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§_-2i§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-2i§ && this.§_-2i§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-2i§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-2i§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-xm§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-tR§ |= 1 << param1;
         this.§_-k-§[param1] = param2.toUpperCase();
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
         if((this.§_-tR§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-2i§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-5K§);
         }
         if((this.§_-tR§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-2i§.addEventListener(MouseEvent.CLICK,this.§_-RI§);
         }
         if((this.§_-tR§ & 1 << §_-QP§) != 0)
         {
            this.§_-2i§.addEventListener(MouseEvent.ROLL_OVER,this.§_-Ul§);
         }
         if((this.§_-tR§ & 1 << §_-md§) != 0)
         {
            this.§_-2i§.addEventListener(MouseEvent.ROLL_OUT,this.§_-3u§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§_-2i§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-5K§);
         this.§_-2i§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-RI§);
         this.§_-2i§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-Ul§);
         this.§_-2i§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-3u§);
      }
      
      public function §_-5K§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-k-§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-RI§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-k-§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-Ul§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-QP§,this.§_-k-§[§_-QP§]);
      }
      
      public function §_-3u§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-md§,this.§_-k-§[§_-md§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§_-2i§ = null;
         this.§_-k-§ = null;
      }
   }
}
