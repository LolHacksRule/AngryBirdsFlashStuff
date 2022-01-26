package §_-J-§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-ZG§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-ZE§:int = 2;
      
      public static const §_-CK§:int = 3;
       
      
      private var §_-z0§:Sprite;
      
      public var §_-LA§:int = 0;
      
      public var §_-dw§:Array;
      
      public function §_-ZG§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-z0§ = param1;
         }
         this.§_-dw§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§_-z0§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-z0§ && this.§_-z0§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-z0§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-z0§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-yv§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-LA§ |= 1 << param1;
         this.§_-dw§[param1] = param2.toUpperCase();
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
         if((this.§_-LA§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-z0§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-Hu§);
         }
         if((this.§_-LA§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-z0§.addEventListener(MouseEvent.CLICK,this.§_-XE§);
         }
         if((this.§_-LA§ & 1 << §_-ZE§) != 0)
         {
            this.§_-z0§.addEventListener(MouseEvent.ROLL_OVER,this.§_-2O§);
         }
         if((this.§_-LA§ & 1 << §_-CK§) != 0)
         {
            this.§_-z0§.addEventListener(MouseEvent.ROLL_OUT,this.§_-eL§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§_-z0§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-Hu§);
         this.§_-z0§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-XE§);
         this.§_-z0§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-2O§);
         this.§_-z0§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-eL§);
      }
      
      public function §_-Hu§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-dw§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-XE§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-dw§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-2O§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-ZE§,this.§_-dw§[§_-ZE§]);
      }
      
      public function §_-eL§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-CK§,this.§_-dw§[§_-CK§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§_-z0§ = null;
         this.§_-dw§ = null;
      }
   }
}
