package §1t§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §`!B§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §0!>§:int = 2;
      
      public static const §8!9§:int = 3;
       
      
      private var §6!-§:Sprite;
      
      public var §>!"§:int = 0;
      
      public var §'_§:Array;
      
      public function §`!B§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§6!-§ = param1;
         }
         this.§'_§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§6!-§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§6!-§ && this.§6!-§ is MovieClip)
         {
            if(param2)
            {
               (this.§6!-§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§6!-§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §+m§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§>!"§ |= 1 << param1;
         this.§'_§[param1] = param2.toUpperCase();
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
         if((this.§>!"§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§6!-§.addEventListener(MouseEvent.MOUSE_DOWN,this.§&!7§);
         }
         if((this.§>!"§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§6!-§.addEventListener(MouseEvent.MOUSE_UP,this.§2Y§);
         }
         if((this.§>!"§ & 1 << §0!>§) != 0)
         {
            this.§6!-§.addEventListener(MouseEvent.ROLL_OVER,this.§&!$§);
         }
         if((this.§>!"§ & 1 << §8!9§) != 0)
         {
            this.§6!-§.addEventListener(MouseEvent.ROLL_OUT,this.§?F§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§6!-§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§&!7§);
         this.§6!-§.removeEventListener(MouseEvent.MOUSE_UP,this.§2Y§);
         this.§6!-§.removeEventListener(MouseEvent.ROLL_OVER,this.§&!$§);
         this.§6!-§.removeEventListener(MouseEvent.ROLL_OUT,this.§?F§);
      }
      
      public function §&!7§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§'_§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §2Y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§'_§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §&!$§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§0!>§,this.§'_§[§0!>§]);
      }
      
      public function §?F§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§8!9§,this.§'_§[§8!9§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§6!-§ = null;
         this.§'_§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§6!-§;
      }
   }
}
