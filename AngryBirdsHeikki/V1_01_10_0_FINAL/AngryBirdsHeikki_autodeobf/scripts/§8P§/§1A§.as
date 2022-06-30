package §8P§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §1A§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §3"§:int = 2;
      
      public static const §#!C§:int = 3;
       
      
      private var §>!&§:Sprite;
      
      public var §<=§:int = 0;
      
      public var §=5§:Array;
      
      public function §1A§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§>!&§ = param1;
         }
         this.§=5§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§>!&§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§>!&§ && this.§>!&§ is MovieClip)
         {
            if(param2)
            {
               (this.§>!&§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§>!&§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §[!O§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§<=§ |= 1 << param1;
         this.§=5§[param1] = param2.toUpperCase();
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
         if((this.§<=§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§>!&§.addEventListener(MouseEvent.MOUSE_DOWN,this.§;"§);
         }
         if((this.§<=§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§>!&§.addEventListener(MouseEvent.MOUSE_UP,this.§<!c§);
         }
         if((this.§<=§ & 1 << §3"§) != 0)
         {
            this.§>!&§.addEventListener(MouseEvent.ROLL_OVER,this.§ Q§);
         }
         if((this.§<=§ & 1 << §#!C§) != 0)
         {
            this.§>!&§.addEventListener(MouseEvent.ROLL_OUT,this.§-r§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§>!&§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;"§);
         this.§>!&§.removeEventListener(MouseEvent.MOUSE_UP,this.§<!c§);
         this.§>!&§.removeEventListener(MouseEvent.ROLL_OVER,this.§ Q§);
         this.§>!&§.removeEventListener(MouseEvent.ROLL_OUT,this.§-r§);
      }
      
      public function §;"§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=5§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §<!c§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=5§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function § Q§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§3"§,this.§=5§[§3"§]);
      }
      
      public function §-r§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#!C§,this.§=5§[§#!C§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§>!&§ = null;
         this.§=5§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§>!&§;
      }
   }
}
