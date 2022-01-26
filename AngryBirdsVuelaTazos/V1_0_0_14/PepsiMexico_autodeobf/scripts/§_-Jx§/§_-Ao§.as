package §_-Jx§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-Ao§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-Qy§:int = 2;
      
      public static const §_-S8§:int = 3;
       
      
      private var §_-2V§:Sprite;
      
      public var §_-UR§:int = 0;
      
      public var §_-OO§:Array;
      
      public function §_-Ao§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-2V§ = param1;
         }
         this.§_-OO§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§_-2V§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-2V§ && this.§_-2V§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-2V§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-2V§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-E2§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-UR§ |= 1 << param1;
         this.§_-OO§[param1] = param2.toUpperCase();
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
         if((this.§_-UR§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-2V§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-5t§);
         }
         if((this.§_-UR§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-2V§.addEventListener(MouseEvent.CLICK,this.§_-Wa§);
         }
         if((this.§_-UR§ & 1 << §_-Qy§) != 0)
         {
            this.§_-2V§.addEventListener(MouseEvent.ROLL_OVER,this.§_-6F§);
         }
         if((this.§_-UR§ & 1 << §_-S8§) != 0)
         {
            this.§_-2V§.addEventListener(MouseEvent.ROLL_OUT,this.§_-lw§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§_-2V§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-5t§);
         this.§_-2V§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Wa§);
         this.§_-2V§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-6F§);
         this.§_-2V§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-lw§);
      }
      
      public function §_-5t§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-OO§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-Wa§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-OO§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-6F§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-Qy§,this.§_-OO§[§_-Qy§]);
      }
      
      public function §_-lw§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-S8§,this.§_-OO§[§_-S8§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§_-2V§ = null;
         this.§_-OO§ = null;
      }
   }
}
