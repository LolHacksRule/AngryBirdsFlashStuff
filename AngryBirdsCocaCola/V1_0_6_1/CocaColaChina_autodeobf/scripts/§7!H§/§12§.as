package §7!H§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §12§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §%b§:int = 2;
      
      public static const §'!C§:int = 3;
       
      
      private var §"5§:Sprite;
      
      public var §8o§:int = 0;
      
      public var §!;§:Array;
      
      public function §12§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§"5§ = param1;
         }
         this.§!;§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§"5§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§"5§ && this.§"5§ is MovieClip)
         {
            if(param2)
            {
               (this.§"5§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§"5§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7!M§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§8o§ |= 1 << param1;
         this.§!;§[param1] = param2.toUpperCase();
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
         if((this.§8o§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§"5§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8!M§);
         }
         if((this.§8o§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§"5§.addEventListener(MouseEvent.MOUSE_UP,this.§^!`§);
         }
         if((this.§8o§ & 1 << §%b§) != 0)
         {
            this.§"5§.addEventListener(MouseEvent.ROLL_OVER,this.§!6§);
         }
         if((this.§8o§ & 1 << §'!C§) != 0)
         {
            this.§"5§.addEventListener(MouseEvent.ROLL_OUT,this.§'!c§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§"5§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8!M§);
         this.§"5§.removeEventListener(MouseEvent.MOUSE_UP,this.§^!`§);
         this.§"5§.removeEventListener(MouseEvent.ROLL_OVER,this.§!6§);
         this.§"5§.removeEventListener(MouseEvent.ROLL_OUT,this.§'!c§);
      }
      
      public function §8!M§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§!;§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §^!`§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§!;§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §!6§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§%b§,this.§!;§[§%b§]);
      }
      
      public function §'!c§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'!C§,this.§!;§[§'!C§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§"5§ = null;
         this.§!;§ = null;
      }
   }
}
