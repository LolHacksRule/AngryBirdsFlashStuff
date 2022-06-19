package §_-16§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-VR§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-jw§:int = 2;
      
      public static const §_-Gu§:int = 3;
       
      
      private var §_-AN§:Sprite;
      
      public var §_-zo§:int = 0;
      
      public var §_-JZ§:Array;
      
      public function §_-VR§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-AN§ = param1;
         }
         this.§_-JZ§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§_-AN§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-AN§ && this.§_-AN§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-AN§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-AN§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-jo§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-zo§ |= 1 << param1;
         this.§_-JZ§[param1] = param2.toUpperCase();
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
         if((this.§_-zo§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-AN§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-6D§);
         }
         if((this.§_-zo§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-AN§.addEventListener(MouseEvent.CLICK,this.§_-4e§);
         }
         if((this.§_-zo§ & 1 << §_-jw§) != 0)
         {
            this.§_-AN§.addEventListener(MouseEvent.ROLL_OVER,this.§_-dj§);
         }
         if((this.§_-zo§ & 1 << §_-Gu§) != 0)
         {
            this.§_-AN§.addEventListener(MouseEvent.ROLL_OUT,this.§_-Vm§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§_-AN§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-6D§);
         this.§_-AN§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-4e§);
         this.§_-AN§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-dj§);
         this.§_-AN§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-Vm§);
      }
      
      public function §_-6D§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-JZ§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-4e§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-JZ§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-dj§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-jw§,this.§_-JZ§[§_-jw§]);
      }
      
      public function §_-Vm§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-Gu§,this.§_-JZ§[§_-Gu§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§_-AN§ = null;
         this.§_-JZ§ = null;
      }
   }
}
