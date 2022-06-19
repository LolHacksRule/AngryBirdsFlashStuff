package §_-A§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-KQ§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-M7§:int = 2;
      
      public static const §_-xl§:int = 3;
       
      
      private var §_-Bl§:Sprite;
      
      public var §_-PF§:int = 0;
      
      public var §_-Hn§:Array;
      
      public function §_-KQ§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-Bl§ = param1;
         }
         this.§_-Hn§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§_-Bl§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-Bl§ && this.§_-Bl§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-Bl§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-Bl§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-vq§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-PF§ |= 1 << param1;
         this.§_-Hn§[param1] = param2.toUpperCase();
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
         if((this.§_-PF§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-Bl§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-Df§);
         }
         if((this.§_-PF§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-Bl§.addEventListener(MouseEvent.CLICK,this.§_-te§);
         }
         if((this.§_-PF§ & 1 << §_-M7§) != 0)
         {
            this.§_-Bl§.addEventListener(MouseEvent.ROLL_OVER,this.§_-yj§);
         }
         if((this.§_-PF§ & 1 << §_-xl§) != 0)
         {
            this.§_-Bl§.addEventListener(MouseEvent.ROLL_OUT,this.§_-fU§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§_-Bl§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-Df§);
         this.§_-Bl§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-te§);
         this.§_-Bl§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-yj§);
         this.§_-Bl§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-fU§);
      }
      
      public function §_-Df§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-Hn§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-te§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-Hn§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-yj§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-M7§,this.§_-Hn§[§_-M7§]);
      }
      
      public function §_-fU§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-xl§,this.§_-Hn§[§_-xl§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§_-Bl§ = null;
         this.§_-Hn§ = null;
      }
   }
}
