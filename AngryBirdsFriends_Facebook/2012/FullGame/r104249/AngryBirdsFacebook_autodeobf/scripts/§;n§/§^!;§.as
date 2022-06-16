package §;n§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §^!;§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^" §:int = 2;
      
      public static const §[!v§:int = 3;
       
      
      private var §4M§:Sprite;
      
      public var §;!<§:int = 0;
      
      public var §>!`§:Array;
      
      public function §^!;§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§4M§ = param1;
         }
         this.§>!`§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§4M§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§4M§ && this.§4M§ is MovieClip)
         {
            if(param2)
            {
               (this.§4M§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§4M§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §-"C§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§;!<§ |= 1 << param1;
         this.§>!`§[param1] = param2.toUpperCase();
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
         if((this.§;!<§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§4M§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#B§);
         }
         if((this.§;!<§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§4M§.addEventListener(MouseEvent.MOUSE_UP,this.§2!S§);
         }
         if((this.§;!<§ & 1 << §^" §) != 0)
         {
            this.§4M§.addEventListener(MouseEvent.ROLL_OVER,this.§7!w§);
         }
         if((this.§;!<§ & 1 << §[!v§) != 0)
         {
            this.§4M§.addEventListener(MouseEvent.ROLL_OUT,this.§33§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§4M§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#B§);
         this.§4M§.removeEventListener(MouseEvent.MOUSE_UP,this.§2!S§);
         this.§4M§.removeEventListener(MouseEvent.ROLL_OVER,this.§7!w§);
         this.§4M§.removeEventListener(MouseEvent.ROLL_OUT,this.§33§);
      }
      
      public function §#B§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>!`§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §2!S§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>!`§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §7!w§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§^" §,this.§>!`§[§^" §]);
      }
      
      public function §33§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§[!v§,this.§>!`§[§[!v§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§4M§ = null;
         this.§>!`§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§4M§;
      }
   }
}
