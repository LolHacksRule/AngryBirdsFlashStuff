package §_-MN§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-wU§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-0-Q§:int = 2;
      
      public static const §_-09A§:int = 3;
       
      
      private var §_-dr§:Sprite;
      
      public var §_-Va§:int = 0;
      
      public var §_-4W§:Array;
      
      public function §_-wU§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-dr§ = param1;
         }
         this.§_-4W§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§_-dr§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-dr§ && this.§_-dr§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-dr§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-dr§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-Ay§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-Va§ |= 1 << param1;
         this.§_-4W§[param1] = param2.toUpperCase();
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
         if((this.§_-Va§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-dr§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-7h§);
         }
         if((this.§_-Va§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-dr§.addEventListener(MouseEvent.MOUSE_UP,this.§_-6Z§);
         }
         if((this.§_-Va§ & 1 << §_-0-Q§) != 0)
         {
            this.§_-dr§.addEventListener(MouseEvent.ROLL_OVER,this.§_-05m§);
         }
         if((this.§_-Va§ & 1 << §_-09A§) != 0)
         {
            this.§_-dr§.addEventListener(MouseEvent.ROLL_OUT,this.§_-Xt§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§_-dr§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-7h§);
         this.§_-dr§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-6Z§);
         this.§_-dr§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-05m§);
         this.§_-dr§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-Xt§);
      }
      
      public function §_-7h§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-4W§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-6Z§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-4W§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-05m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-0-Q§,this.§_-4W§[§_-0-Q§]);
      }
      
      public function §_-Xt§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-09A§,this.§_-4W§[§_-09A§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§_-dr§ = null;
         this.§_-4W§ = null;
      }
   }
}
