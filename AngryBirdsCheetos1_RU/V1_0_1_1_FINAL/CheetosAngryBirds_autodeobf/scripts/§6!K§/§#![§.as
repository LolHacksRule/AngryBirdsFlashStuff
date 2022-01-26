package §6!K§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §#![§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §%!_§:int = 2;
      
      public static const §'!>§:int = 3;
       
      
      private var §6D§:Sprite;
      
      public var §!§:int = 0;
      
      public var §1!+§:Array;
      
      public function §#![§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§6D§ = param1;
         }
         this.§1!+§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§6D§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§6D§ && this.§6D§ is MovieClip)
         {
            if(param2)
            {
               (this.§6D§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§6D§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §]s§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§!§ |= 1 << param1;
         this.§1!+§[param1] = param2.toUpperCase();
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
         if((this.§!§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§6D§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>]§);
         }
         if((this.§!§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§6D§.addEventListener(MouseEvent.MOUSE_UP,this.§8!S§);
         }
         if((this.§!§ & 1 << §%!_§) != 0)
         {
            this.§6D§.addEventListener(MouseEvent.ROLL_OVER,this.§!!8§);
         }
         if((this.§!§ & 1 << §'!>§) != 0)
         {
            this.§6D§.addEventListener(MouseEvent.ROLL_OUT,this.§"'§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§6D§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>]§);
         this.§6D§.removeEventListener(MouseEvent.MOUSE_UP,this.§8!S§);
         this.§6D§.removeEventListener(MouseEvent.ROLL_OVER,this.§!!8§);
         this.§6D§.removeEventListener(MouseEvent.ROLL_OUT,this.§"'§);
      }
      
      public function §>]§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§1!+§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §8!S§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§1!+§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §!!8§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§%!_§,this.§1!+§[§%!_§]);
      }
      
      public function §"'§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§'!>§,this.§1!+§[§'!>§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§6D§ = null;
         this.§1!+§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§6D§;
      }
   }
}
