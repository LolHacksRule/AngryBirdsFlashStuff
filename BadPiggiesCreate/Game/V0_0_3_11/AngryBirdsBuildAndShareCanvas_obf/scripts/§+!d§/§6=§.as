package §+!d§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §6=§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §+!^§:int = 2;
      
      public static const §-!^§:int = 3;
       
      
      private var §;!-§:Sprite;
      
      public var §6i§:int = 0;
      
      public var §%!E§:Array;
      
      public function §6=§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§;!-§ = param1;
         }
         this.§%!E§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§;!-§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§;!-§ && this.§;!-§ is MovieClip)
         {
            if(param2)
            {
               (this.§;!-§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§;!-§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §<]§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§6i§ |= 1 << param1;
         this.§%!E§[param1] = param2.toUpperCase();
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
         if((this.§6i§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§;!-§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=i§);
         }
         if((this.§6i§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§;!-§.addEventListener(MouseEvent.MOUSE_UP,this.§'9§);
         }
         if((this.§6i§ & 1 << §+!^§) != 0)
         {
            this.§;!-§.addEventListener(MouseEvent.ROLL_OVER,this.§<K§);
         }
         if((this.§6i§ & 1 << §-!^§) != 0)
         {
            this.§;!-§.addEventListener(MouseEvent.ROLL_OUT,this.§""8§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§;!-§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=i§);
         this.§;!-§.removeEventListener(MouseEvent.MOUSE_UP,this.§'9§);
         this.§;!-§.removeEventListener(MouseEvent.ROLL_OVER,this.§<K§);
         this.§;!-§.removeEventListener(MouseEvent.ROLL_OUT,this.§""8§);
      }
      
      public function §=i§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§%!E§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §'9§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§%!E§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §<K§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§+!^§,this.§%!E§[§+!^§]);
      }
      
      public function §""8§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§-!^§,this.§%!E§[§-!^§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§;!-§ = null;
         this.§%!E§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§;!-§;
      }
   }
}
