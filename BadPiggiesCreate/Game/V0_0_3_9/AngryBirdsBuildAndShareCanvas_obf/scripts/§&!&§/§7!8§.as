package §&!&§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §7!8§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §2P§:int = 2;
      
      public static const §5"-§:int = 3;
       
      
      private var §7!h§:Sprite;
      
      public var §>u§:int = 0;
      
      public var §1!]§:Array;
      
      public function §7!8§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§7!h§ = param1;
         }
         this.§1!]§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§7!h§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§7!h§ && this.§7!h§ is MovieClip)
         {
            if(param2)
            {
               (this.§7!h§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§7!h§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §9!z§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§>u§ |= 1 << param1;
         this.§1!]§[param1] = param2.toUpperCase();
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
         if((this.§>u§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§7!h§.addEventListener(MouseEvent.MOUSE_DOWN,this.§in §);
         }
         if((this.§>u§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§7!h§.addEventListener(MouseEvent.MOUSE_UP,this.§5!Q§);
         }
         if((this.§>u§ & 1 << §2P§) != 0)
         {
            this.§7!h§.addEventListener(MouseEvent.ROLL_OVER,this.§"F§);
         }
         if((this.§>u§ & 1 << §5"-§) != 0)
         {
            this.§7!h§.addEventListener(MouseEvent.ROLL_OUT,this.§28§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§7!h§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§in §);
         this.§7!h§.removeEventListener(MouseEvent.MOUSE_UP,this.§5!Q§);
         this.§7!h§.removeEventListener(MouseEvent.ROLL_OVER,this.§"F§);
         this.§7!h§.removeEventListener(MouseEvent.ROLL_OUT,this.§28§);
      }
      
      public function §in §(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§1!]§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §5!Q§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§1!]§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §"F§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2P§,this.§1!]§[§2P§]);
      }
      
      public function §28§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§5"-§,this.§1!]§[§5"-§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§7!h§ = null;
         this.§1!]§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§7!h§;
      }
   }
}
