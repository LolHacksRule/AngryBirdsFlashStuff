package §6l§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §#!Z§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §!!=§:int = 2;
      
      public static const §'!;§:int = 3;
       
      
      private var §#!S§:Sprite;
      
      public var §-h§:int = 0;
      
      public var §33§:Array;
      
      public function §#!Z§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§#!S§ = param1;
         }
         this.§33§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§#!S§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§#!S§ && this.§#!S§ is MovieClip)
         {
            if(param2)
            {
               (this.§#!S§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§#!S§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §^!F§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§-h§ |= 1 << param1;
         this.§33§[param1] = param2.toUpperCase();
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
         if((this.§-h§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§#!S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!B§);
         }
         if((this.§-h§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§#!S§.addEventListener(MouseEvent.CLICK,this.§@!"§);
         }
         if((this.§-h§ & 1 << §!!=§) != 0)
         {
            this.§#!S§.addEventListener(MouseEvent.ROLL_OVER,this.§3F§);
         }
         if((this.§-h§ & 1 << §'!;§) != 0)
         {
            this.§#!S§.addEventListener(MouseEvent.ROLL_OUT,this.§4Z§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§#!S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!B§);
         this.§#!S§.removeEventListener(MouseEvent.MOUSE_UP,this.§@!"§);
         this.§#!S§.removeEventListener(MouseEvent.ROLL_OVER,this.§3F§);
         this.§#!S§.removeEventListener(MouseEvent.ROLL_OUT,this.§4Z§);
      }
      
      public function §3!B§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§33§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §@!"§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§33§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §3F§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§!!=§,this.§33§[§!!=§]);
      }
      
      public function §4Z§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'!;§,this.§33§[§'!;§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§#!S§ = null;
         this.§33§ = null;
      }
   }
}
