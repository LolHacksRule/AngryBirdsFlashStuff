package §_-6r§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-7P§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-Ek§:int = 2;
      
      public static const §_-6q§:int = 3;
       
      
      private var §_-Jb§:Sprite;
      
      public var §_-d5§:int = 0;
      
      public var §use§:Array;
      
      public function §_-7P§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-Jb§ = param1;
         }
         this.§use§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§_-Jb§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-Jb§ && this.§_-Jb§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-Jb§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-Jb§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-q3§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-d5§ |= 1 << param1;
         this.§use§[param1] = param2.toUpperCase();
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
         if((this.§_-d5§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-Jb§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-gZ§);
         }
         if((this.§_-d5§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-Jb§.addEventListener(MouseEvent.CLICK,this.§_-TK§);
         }
         if((this.§_-d5§ & 1 << §_-Ek§) != 0)
         {
            this.§_-Jb§.addEventListener(MouseEvent.ROLL_OVER,this.§_-v9§);
         }
         if((this.§_-d5§ & 1 << §_-6q§) != 0)
         {
            this.§_-Jb§.addEventListener(MouseEvent.ROLL_OUT,this.§_-Ii§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§_-Jb§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-gZ§);
         this.§_-Jb§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-TK§);
         this.§_-Jb§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-v9§);
         this.§_-Jb§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-Ii§);
      }
      
      public function §_-gZ§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§use§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-TK§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§use§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-v9§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-Ek§,this.§use§[§_-Ek§]);
      }
      
      public function §_-Ii§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-6q§,this.§use§[§_-6q§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§_-Jb§ = null;
         this.§use§ = null;
      }
   }
}
