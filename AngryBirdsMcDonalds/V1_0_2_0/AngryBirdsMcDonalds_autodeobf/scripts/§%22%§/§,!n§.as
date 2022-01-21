package §"%§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §,!n§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §-!X§:int = 2;
      
      public static const §;!Y§:int = 3;
       
      
      private var §6s§:Sprite;
      
      public var §3!C§:int = 0;
      
      public var §+g§:Array;
      
      public function §,!n§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§6s§ = param1;
         }
         this.§+g§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§6s§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§6s§ && this.§6s§ is MovieClip)
         {
            if(param2)
            {
               (this.§6s§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§6s§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §58§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§3!C§ |= 1 << param1;
         this.§+g§[param1] = param2.toUpperCase();
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
         if((this.§3!C§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§6s§.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!h§);
         }
         if((this.§3!C§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§6s§.addEventListener(MouseEvent.MOUSE_UP,this.§'e§);
         }
         if((this.§3!C§ & 1 << §-!X§) != 0)
         {
            this.§6s§.addEventListener(MouseEvent.ROLL_OVER,this.§,!M§);
         }
         if((this.§3!C§ & 1 << §;!Y§) != 0)
         {
            this.§6s§.addEventListener(MouseEvent.ROLL_OUT,this.§1[§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§6s§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!h§);
         this.§6s§.removeEventListener(MouseEvent.MOUSE_UP,this.§'e§);
         this.§6s§.removeEventListener(MouseEvent.ROLL_OVER,this.§,!M§);
         this.§6s§.removeEventListener(MouseEvent.ROLL_OUT,this.§1[§);
      }
      
      public function §?!h§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§+g§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §'e§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§+g§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §,!M§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§-!X§,this.§+g§[§-!X§]);
      }
      
      public function §1[§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§;!Y§,this.§+g§[§;!Y§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§6s§ = null;
         this.§+g§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§6s§;
      }
   }
}
