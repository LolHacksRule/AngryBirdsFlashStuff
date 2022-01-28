package §_-7V§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-Gs§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-V4§:int = 2;
      
      public static const §_-ya§:int = 3;
       
      
      private var §_-FQ§:Sprite;
      
      public var §_-yv§:int = 0;
      
      public var §_-G7§:Array;
      
      public function §_-Gs§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-FQ§ = param1;
         }
         this.§_-G7§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§_-FQ§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-FQ§ && this.§_-FQ§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-FQ§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-FQ§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-7S§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-yv§ |= 1 << param1;
         this.§_-G7§[param1] = param2.toUpperCase();
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
         if((this.§_-yv§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-FQ§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-E-§);
         }
         if((this.§_-yv§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-FQ§.addEventListener(MouseEvent.CLICK,this.§_-4m§);
         }
         if((this.§_-yv§ & 1 << §_-V4§) != 0)
         {
            this.§_-FQ§.addEventListener(MouseEvent.ROLL_OVER,this.§_-TE§);
         }
         if((this.§_-yv§ & 1 << §_-ya§) != 0)
         {
            this.§_-FQ§.addEventListener(MouseEvent.ROLL_OUT,this.§_-2s§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§_-FQ§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-E-§);
         this.§_-FQ§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-4m§);
         this.§_-FQ§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-TE§);
         this.§_-FQ§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-2s§);
      }
      
      public function §_-E-§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-G7§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-4m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-G7§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-TE§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-V4§,this.§_-G7§[§_-V4§]);
      }
      
      public function §_-2s§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-ya§,this.§_-G7§[§_-ya§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§_-FQ§ = null;
         this.§_-G7§ = null;
      }
   }
}
