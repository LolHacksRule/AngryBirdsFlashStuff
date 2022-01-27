package §;!0§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §4!I§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §#!`§:int = 2;
      
      public static const §'v§:int = 3;
       
      
      private var §7e§:Sprite;
      
      public var §6g§:int = 0;
      
      public var §0!A§:Array;
      
      public function §4!I§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§7e§ = param1;
         }
         this.§0!A§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§7e§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§7e§ && this.§7e§ is MovieClip)
         {
            if(param2)
            {
               (this.§7e§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§7e§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §1]§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§6g§ |= 1 << param1;
         this.§0!A§[param1] = param2.toUpperCase();
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
         if((this.§6g§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§7e§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
         }
         if((this.§6g§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§7e§.addEventListener(MouseEvent.MOUSE_UP,this.§"z§);
         }
         if((this.§6g§ & 1 << §#!`§) != 0)
         {
            this.§7e§.addEventListener(MouseEvent.ROLL_OVER,this.§@!O§);
         }
         if((this.§6g§ & 1 << §'v§) != 0)
         {
            this.§7e§.addEventListener(MouseEvent.ROLL_OUT,this.§=!b§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§7e§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
         this.§7e§.removeEventListener(MouseEvent.MOUSE_UP,this.§"z§);
         this.§7e§.removeEventListener(MouseEvent.ROLL_OVER,this.§@!O§);
         this.§7e§.removeEventListener(MouseEvent.ROLL_OUT,this.§=!b§);
      }
      
      public function §1!O§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§0!A§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §"z§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§0!A§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §@!O§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#!`§,this.§0!A§[§#!`§]);
      }
      
      public function §=!b§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'v§,this.§0!A§[§'v§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§7e§ = null;
         this.§0!A§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§7e§;
      }
   }
}
