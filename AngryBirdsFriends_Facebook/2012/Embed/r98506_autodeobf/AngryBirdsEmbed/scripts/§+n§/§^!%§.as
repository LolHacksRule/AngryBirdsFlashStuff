package §+n§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §^!%§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §#X§:int = 2;
      
      public static const §`T§:int = 3;
       
      
      private var §"!J§:Sprite;
      
      public var §?!0§:int = 0;
      
      public var §1+§:Array;
      
      public function §^!%§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§"!J§ = param1;
         }
         this.§1+§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§"!J§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§"!J§ && this.§"!J§ is MovieClip)
         {
            if(param2)
            {
               (this.§"!J§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§"!J§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §4`§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§?!0§ |= 1 << param1;
         this.§1+§[param1] = param2.toUpperCase();
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
         if((this.§?!0§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§"!J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!q§);
         }
         if((this.§?!0§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§"!J§.addEventListener(MouseEvent.MOUSE_UP,this.§"§);
         }
         if((this.§?!0§ & 1 << §#X§) != 0)
         {
            this.§"!J§.addEventListener(MouseEvent.ROLL_OVER,this.§9M§);
         }
         if((this.§?!0§ & 1 << §`T§) != 0)
         {
            this.§"!J§.addEventListener(MouseEvent.ROLL_OUT,this.§2y§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§"!J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!q§);
         this.§"!J§.removeEventListener(MouseEvent.MOUSE_UP,this.§"§);
         this.§"!J§.removeEventListener(MouseEvent.ROLL_OVER,this.§9M§);
         this.§"!J§.removeEventListener(MouseEvent.ROLL_OUT,this.§2y§);
      }
      
      public function §!q§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§1+§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §"§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§1+§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §9M§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#X§,this.§1+§[§#X§]);
      }
      
      public function §2y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§`T§,this.§1+§[§`T§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§"!J§ = null;
         this.§1+§ = null;
      }
   }
}
