package §2!$§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §<!%§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §+!0§:int = 2;
      
      public static const §"!4§:int = 3;
       
      
      private var native:Sprite;
      
      public var §5z§:int = 0;
      
      public var §@p§:Array;
      
      public function §<!%§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.native = param1;
         }
         this.§@p§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.native = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.native && this.native is MovieClip)
         {
            if(param2)
            {
               (this.native as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.native as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7]§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§5z§ |= 1 << param1;
         this.§@p§[param1] = param2.toUpperCase();
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
         if((this.§5z§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.native.addEventListener(MouseEvent.MOUSE_DOWN,this.§;s§);
         }
         if((this.§5z§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.native.addEventListener(MouseEvent.MOUSE_UP,this.§!!0§);
         }
         if((this.§5z§ & 1 << §+!0§) != 0)
         {
            this.native.addEventListener(MouseEvent.ROLL_OVER,this.§;T§);
         }
         if((this.§5z§ & 1 << §"!4§) != 0)
         {
            this.native.addEventListener(MouseEvent.ROLL_OUT,this.§%S§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.native.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;s§);
         this.native.removeEventListener(MouseEvent.MOUSE_UP,this.§!!0§);
         this.native.removeEventListener(MouseEvent.ROLL_OVER,this.§;T§);
         this.native.removeEventListener(MouseEvent.ROLL_OUT,this.§%S§);
      }
      
      public function §;s§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§@p§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §!!0§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§@p§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §;T§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§+!0§,this.§@p§[§+!0§]);
      }
      
      public function §%S§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§"!4§,this.§@p§[§"!4§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.native = null;
         this.§@p§ = null;
      }
   }
}
