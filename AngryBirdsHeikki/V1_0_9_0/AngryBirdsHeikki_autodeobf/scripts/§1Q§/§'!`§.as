package §1Q§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'!`§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §[Y§:int = 2;
      
      public static const § !Y§:int = 3;
       
      
      private var §0B§:Sprite;
      
      public var §5;§:int = 0;
      
      public var §72§:Array;
      
      public function §'!`§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§0B§ = param1;
         }
         this.§72§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§0B§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§0B§ && this.§0B§ is MovieClip)
         {
            if(param2)
            {
               (this.§0B§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§0B§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §1!W§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§5;§ |= 1 << param1;
         this.§72§[param1] = param2.toUpperCase();
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
         if((this.§5;§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§0B§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7q§);
         }
         if((this.§5;§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§0B§.addEventListener(MouseEvent.MOUSE_UP,this.§<m§);
         }
         if((this.§5;§ & 1 << §[Y§) != 0)
         {
            this.§0B§.addEventListener(MouseEvent.ROLL_OVER,this.§-6§);
         }
         if((this.§5;§ & 1 << § !Y§) != 0)
         {
            this.§0B§.addEventListener(MouseEvent.ROLL_OUT,this.§-J§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§0B§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7q§);
         this.§0B§.removeEventListener(MouseEvent.MOUSE_UP,this.§<m§);
         this.§0B§.removeEventListener(MouseEvent.ROLL_OVER,this.§-6§);
         this.§0B§.removeEventListener(MouseEvent.ROLL_OUT,this.§-J§);
      }
      
      public function §7q§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§72§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §<m§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§72§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §-6§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§[Y§,this.§72§[§[Y§]);
      }
      
      public function §-J§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§ !Y§,this.§72§[§ !Y§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§0B§ = null;
         this.§72§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§0B§;
      }
   }
}
