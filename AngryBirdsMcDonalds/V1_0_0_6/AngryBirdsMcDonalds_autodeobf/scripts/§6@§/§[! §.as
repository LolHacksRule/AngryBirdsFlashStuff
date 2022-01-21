package §6@§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §[! §
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §;!!§:int = 2;
      
      public static const §%!V§:int = 3;
       
      
      private var §#!,§:Sprite;
      
      public var §1!f§:int = 0;
      
      public var §6y§:Array;
      
      public function §[! §(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§#!,§ = param1;
         }
         this.§6y§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§#!,§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§#!,§ && this.§#!,§ is MovieClip)
         {
            if(param2)
            {
               (this.§#!,§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§#!,§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §?!V§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§1!f§ |= 1 << param1;
         this.§6y§[param1] = param2.toUpperCase();
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
         if((this.§1!f§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§#!,§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1,§);
         }
         if((this.§1!f§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§#!,§.addEventListener(MouseEvent.MOUSE_UP,this.§4!,§);
         }
         if((this.§1!f§ & 1 << §;!!§) != 0)
         {
            this.§#!,§.addEventListener(MouseEvent.ROLL_OVER,this.§"!0§);
         }
         if((this.§1!f§ & 1 << §%!V§) != 0)
         {
            this.§#!,§.addEventListener(MouseEvent.ROLL_OUT,this.§"C§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§#!,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1,§);
         this.§#!,§.removeEventListener(MouseEvent.MOUSE_UP,this.§4!,§);
         this.§#!,§.removeEventListener(MouseEvent.ROLL_OVER,this.§"!0§);
         this.§#!,§.removeEventListener(MouseEvent.ROLL_OUT,this.§"C§);
      }
      
      public function §1,§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§6y§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §4!,§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§6y§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §"!0§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§;!!§,this.§6y§[§;!!§]);
      }
      
      public function §"C§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§%!V§,this.§6y§[§%!V§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§#!,§ = null;
         this.§6y§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§#!,§;
      }
   }
}
