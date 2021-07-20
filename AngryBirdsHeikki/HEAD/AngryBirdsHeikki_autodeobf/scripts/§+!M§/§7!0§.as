package §+!M§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §7!0§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §`W§:int = 2;
      
      public static const §,!P§:int = 3;
       
      
      private var §+!W§:Sprite;
      
      public var §6>§:int = 0;
      
      public var §+G§:Array;
      
      public function §7!0§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§+!W§ = param1;
         }
         this.§+G§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§+!W§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§+!W§ && this.§+!W§ is MovieClip)
         {
            if(param2)
            {
               (this.§+!W§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§+!W§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function § Q§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§6>§ |= 1 << param1;
         this.§+G§[param1] = param2.toUpperCase();
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
         if((this.§6>§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§+!W§.addEventListener(MouseEvent.MOUSE_DOWN,this.§^o§);
         }
         if((this.§6>§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§+!W§.addEventListener(MouseEvent.MOUSE_UP,this.§`!b§);
         }
         if((this.§6>§ & 1 << §`W§) != 0)
         {
            this.§+!W§.addEventListener(MouseEvent.ROLL_OVER,this.§6;§);
         }
         if((this.§6>§ & 1 << §,!P§) != 0)
         {
            this.§+!W§.addEventListener(MouseEvent.ROLL_OUT,this.§break§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§+!W§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^o§);
         this.§+!W§.removeEventListener(MouseEvent.MOUSE_UP,this.§`!b§);
         this.§+!W§.removeEventListener(MouseEvent.ROLL_OVER,this.§6;§);
         this.§+!W§.removeEventListener(MouseEvent.ROLL_OUT,this.§break§);
      }
      
      public function §^o§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§+G§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §`!b§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§+G§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §6;§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§`W§,this.§+G§[§`W§]);
      }
      
      public function §break§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§,!P§,this.§+G§[§,!P§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§+!W§ = null;
         this.§+G§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§+!W§;
      }
   }
}
