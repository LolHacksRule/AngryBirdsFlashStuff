package §@!&§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'!o§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §4§:int = 2;
      
      public static const § M§:int = 3;
       
      
      private var §-1§:Sprite;
      
      public var §`![§:int = 0;
      
      public var §%0§:Array;
      
      public function §'!o§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§-1§ = param1;
         }
         this.§%0§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§-1§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§-1§ && this.§-1§ is MovieClip)
         {
            if(param2)
            {
               (this.§-1§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§-1§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §,9§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§`![§ |= 1 << param1;
         this.§%0§[param1] = param2.toUpperCase();
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
         if((this.§`![§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§-1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@1§);
         }
         if((this.§`![§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§-1§.addEventListener(MouseEvent.MOUSE_UP,this.§3F§);
         }
         if((this.§`![§ & 1 << §4§) != 0)
         {
            this.§-1§.addEventListener(MouseEvent.ROLL_OVER,this.§4!g§);
         }
         if((this.§`![§ & 1 << § M§) != 0)
         {
            this.§-1§.addEventListener(MouseEvent.ROLL_OUT,this.§ n§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§-1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@1§);
         this.§-1§.removeEventListener(MouseEvent.MOUSE_UP,this.§3F§);
         this.§-1§.removeEventListener(MouseEvent.ROLL_OVER,this.§4!g§);
         this.§-1§.removeEventListener(MouseEvent.ROLL_OUT,this.§ n§);
      }
      
      public function §@1§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§%0§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §3F§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§%0§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §4!g§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§4§,this.§%0§[§4§]);
      }
      
      public function § n§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§ M§,this.§%0§[§ M§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§-1§ = null;
         this.§%0§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§-1§;
      }
   }
}
