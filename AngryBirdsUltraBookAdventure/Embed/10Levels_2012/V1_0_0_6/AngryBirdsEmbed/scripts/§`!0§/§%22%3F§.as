package §`!0§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §"?§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §;!4§:int = 2;
      
      public static const §#x§:int = 3;
       
      
      private var §[!3§:Sprite;
      
      public var §3!G§:int = 0;
      
      public var §,>§:Array;
      
      public function §"?§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§[!3§ = param1;
         }
         this.§,>§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§[!3§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§[!3§ && this.§[!3§ is MovieClip)
         {
            if(param2)
            {
               (this.§[!3§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§[!3§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §1?§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§3!G§ |= 1 << param1;
         this.§,>§[param1] = param2.toUpperCase();
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
         if((this.§3!G§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§[!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§05§);
         }
         if((this.§3!G§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§[!3§.addEventListener(MouseEvent.MOUSE_UP,this.§8h§);
         }
         if((this.§3!G§ & 1 << §;!4§) != 0)
         {
            this.§[!3§.addEventListener(MouseEvent.ROLL_OVER,this.§0!B§);
         }
         if((this.§3!G§ & 1 << §#x§) != 0)
         {
            this.§[!3§.addEventListener(MouseEvent.ROLL_OUT,this.§%!H§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§[!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§05§);
         this.§[!3§.removeEventListener(MouseEvent.MOUSE_UP,this.§8h§);
         this.§[!3§.removeEventListener(MouseEvent.ROLL_OVER,this.§0!B§);
         this.§[!3§.removeEventListener(MouseEvent.ROLL_OUT,this.§%!H§);
      }
      
      public function §05§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§,>§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §8h§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§,>§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §0!B§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§;!4§,this.§,>§[§;!4§]);
      }
      
      public function §%!H§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#x§,this.§,>§[§#x§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§[!3§ = null;
         this.§,>§ = null;
      }
   }
}
