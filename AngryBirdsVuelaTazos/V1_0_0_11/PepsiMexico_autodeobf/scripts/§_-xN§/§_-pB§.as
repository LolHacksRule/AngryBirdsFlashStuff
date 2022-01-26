package §_-xN§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-pB§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-DH§:int = 2;
      
      public static const §_-Yg§:int = 3;
       
      
      private var §_-Sx§:Sprite;
      
      public var § use§:int = 0;
      
      public var §_-qh§:Array;
      
      public function §_-pB§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-Sx§ = param1;
         }
         this.§_-qh§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§_-D7§();
         this.§_-Sx§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-Sx§ && this.§_-Sx§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-Sx§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-Sx§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-sR§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§ use§ |= 1 << param1;
         this.§_-qh§[param1] = param2.toUpperCase();
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
         this.§_-D7§();
         if((this.§ use§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-Sx§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-nW§);
         }
         if((this.§ use§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-Sx§.addEventListener(MouseEvent.MOUSE_UP,this.§_-uL§);
         }
         if((this.§ use§ & 1 << §_-DH§) != 0)
         {
            this.§_-Sx§.addEventListener(MouseEvent.ROLL_OVER,this.§_-D-§);
         }
         if((this.§ use§ & 1 << §_-Yg§) != 0)
         {
            this.§_-Sx§.addEventListener(MouseEvent.ROLL_OUT,this.§_-nB§);
         }
      }
      
      public function §_-D7§() : void
      {
         this.§_-Sx§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-nW§);
         this.§_-Sx§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-uL§);
         this.§_-Sx§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-D-§);
         this.§_-Sx§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-nB§);
      }
      
      public function §_-nW§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-qh§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-uL§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-qh§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-D-§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-DH§,this.§_-qh§[§_-DH§]);
      }
      
      public function §_-nB§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-Yg§,this.§_-qh§[§_-Yg§]);
      }
      
      public function clear() : void
      {
         this.§_-D7§();
         this.§_-Sx§ = null;
         this.§_-qh§ = null;
      }
   }
}
