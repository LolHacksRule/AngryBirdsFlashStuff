package §@-§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §[y§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §?-§:int = 2;
      
      public static const §5O§:int = 3;
       
      
      private var §+!4§:Sprite;
      
      public var §^!9§:int = 0;
      
      public var §2!c§:Array;
      
      public function §[y§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§+!4§ = param1;
         }
         this.§2!c§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§+!4§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§+!4§ && this.§+!4§ is MovieClip)
         {
            if(param2)
            {
               (this.§+!4§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§+!4§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §=!N§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^!9§ |= 1 << param1;
         this.§2!c§[param1] = param2.toUpperCase();
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
         if((this.§^!9§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§+!4§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0>§);
         }
         if((this.§^!9§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§+!4§.addEventListener(MouseEvent.MOUSE_UP,this.§`&§);
         }
         if((this.§^!9§ & 1 << §?-§) != 0)
         {
            this.§+!4§.addEventListener(MouseEvent.ROLL_OVER,this.§"!S§);
         }
         if((this.§^!9§ & 1 << §5O§) != 0)
         {
            this.§+!4§.addEventListener(MouseEvent.ROLL_OUT,this.§8&§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§+!4§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0>§);
         this.§+!4§.removeEventListener(MouseEvent.MOUSE_UP,this.§`&§);
         this.§+!4§.removeEventListener(MouseEvent.ROLL_OVER,this.§"!S§);
         this.§+!4§.removeEventListener(MouseEvent.ROLL_OUT,this.§8&§);
      }
      
      public function §0>§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§2!c§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §`&§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§2!c§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §"!S§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§?-§,this.§2!c§[§?-§]);
      }
      
      public function §8&§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§5O§,this.§2!c§[§5O§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§+!4§ = null;
         this.§2!c§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§+!4§;
      }
   }
}
