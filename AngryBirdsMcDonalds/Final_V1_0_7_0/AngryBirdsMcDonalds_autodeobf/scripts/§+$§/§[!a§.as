package §+$§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §[!a§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §0!V§:int = 2;
      
      public static const §0§:int = 3;
       
      
      private var §2!%§:Sprite;
      
      public var §^3§:int = 0;
      
      public var §^K§:Array;
      
      public function §[!a§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§2!%§ = param1;
         }
         this.§^K§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§2!%§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§2!%§ && this.§2!%§ is MovieClip)
         {
            if(param2)
            {
               (this.§2!%§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§2!%§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §8L§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^3§ |= 1 << param1;
         this.§^K§[param1] = param2.toUpperCase();
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
         if((this.§^3§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§2!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2!I§);
         }
         if((this.§^3§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§2!%§.addEventListener(MouseEvent.MOUSE_UP,this.§7@§);
         }
         if((this.§^3§ & 1 << §0!V§) != 0)
         {
            this.§2!%§.addEventListener(MouseEvent.ROLL_OVER,this.§#D§);
         }
         if((this.§^3§ & 1 << §0§) != 0)
         {
            this.§2!%§.addEventListener(MouseEvent.ROLL_OUT,this.§+7§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§2!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2!I§);
         this.§2!%§.removeEventListener(MouseEvent.MOUSE_UP,this.§7@§);
         this.§2!%§.removeEventListener(MouseEvent.ROLL_OVER,this.§#D§);
         this.§2!%§.removeEventListener(MouseEvent.ROLL_OUT,this.§+7§);
      }
      
      public function §2!I§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§^K§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §7@§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§^K§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §#D§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§0!V§,this.§^K§[§0!V§]);
      }
      
      public function §+7§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§0§,this.§^K§[§0§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§2!%§ = null;
         this.§^K§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§2!%§;
      }
   }
}
