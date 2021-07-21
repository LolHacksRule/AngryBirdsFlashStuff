package §'!D§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §08§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §&x§:int = 2;
      
      public static const §;=§:int = 3;
       
      
      private var §`=§:Sprite;
      
      public var §%!V§:int = 0;
      
      public var §>S§:Array;
      
      public function §08§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§`=§ = param1;
         }
         this.§>S§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§`=§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§`=§ && this.§`=§ is MovieClip)
         {
            if(param2)
            {
               (this.§`=§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§`=§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §8!h§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§%!V§ |= 1 << param1;
         this.§>S§[param1] = param2.toUpperCase();
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
         if((this.§%!V§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§`=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3l§);
         }
         if((this.§%!V§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§`=§.addEventListener(MouseEvent.MOUSE_UP,this.§ !>§);
         }
         if((this.§%!V§ & 1 << §&x§) != 0)
         {
            this.§`=§.addEventListener(MouseEvent.ROLL_OVER,this.§%!?§);
         }
         if((this.§%!V§ & 1 << §;=§) != 0)
         {
            this.§`=§.addEventListener(MouseEvent.ROLL_OUT,this.§6Z§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§`=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3l§);
         this.§`=§.removeEventListener(MouseEvent.MOUSE_UP,this.§ !>§);
         this.§`=§.removeEventListener(MouseEvent.ROLL_OVER,this.§%!?§);
         this.§`=§.removeEventListener(MouseEvent.ROLL_OUT,this.§6Z§);
      }
      
      public function §3l§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>S§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function § !>§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>S§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §%!?§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§&x§,this.§>S§[§&x§]);
      }
      
      public function §6Z§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§;=§,this.§>S§[§;=§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§`=§ = null;
         this.§>S§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§`=§;
      }
   }
}
