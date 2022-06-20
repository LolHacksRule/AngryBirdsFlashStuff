package §2!i§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'M§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §'!f§:int = 2;
      
      public static const §`!k§:int = 3;
       
      
      private var §#G§:Sprite;
      
      public var §0d§:int = 0;
      
      public var §=!E§:Array;
      
      public function §'M§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§#G§ = param1;
         }
         this.§=!E§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§#G§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§#G§ && this.§#G§ is MovieClip)
         {
            if(param2)
            {
               (this.§#G§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§#G§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §@!L§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§0d§ |= 1 << param1;
         this.§=!E§[param1] = param2.toUpperCase();
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
         if((this.§0d§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§#G§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<5§);
         }
         if((this.§0d§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§#G§.addEventListener(MouseEvent.MOUSE_UP,this.§[b§);
         }
         if((this.§0d§ & 1 << §'!f§) != 0)
         {
            this.§#G§.addEventListener(MouseEvent.ROLL_OVER,this.§`8§);
         }
         if((this.§0d§ & 1 << §`!k§) != 0)
         {
            this.§#G§.addEventListener(MouseEvent.ROLL_OUT,this.§ t§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§#G§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<5§);
         this.§#G§.removeEventListener(MouseEvent.MOUSE_UP,this.§[b§);
         this.§#G§.removeEventListener(MouseEvent.ROLL_OVER,this.§`8§);
         this.§#G§.removeEventListener(MouseEvent.ROLL_OUT,this.§ t§);
      }
      
      public function §<5§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=!E§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §[b§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=!E§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §`8§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'!f§,this.§=!E§[§'!f§]);
      }
      
      public function § t§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§`!k§,this.§=!E§[§`!k§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§#G§ = null;
         this.§=!E§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§#G§;
      }
   }
}
