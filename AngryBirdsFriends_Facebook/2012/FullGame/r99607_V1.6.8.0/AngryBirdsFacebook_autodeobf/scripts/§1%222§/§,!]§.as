package §1"2§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §,!]§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §&p§:int = 2;
      
      public static const §2!H§:int = 3;
       
      
      private var §]d§:Sprite;
      
      public var §!_§:int = 0;
      
      public var §>'§:Array;
      
      public function §,!]§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§]d§ = param1;
         }
         this.§>'§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§]d§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§]d§ && this.§]d§ is MovieClip)
         {
            if(param2)
            {
               (this.§]d§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§]d§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §0">§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§!_§ |= 1 << param1;
         this.§>'§[param1] = param2.toUpperCase();
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
         if((this.§!_§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§]d§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%L§);
         }
         if((this.§!_§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§]d§.addEventListener(MouseEvent.MOUSE_UP,this.§#K§);
         }
         if((this.§!_§ & 1 << §&p§) != 0)
         {
            this.§]d§.addEventListener(MouseEvent.ROLL_OVER,this.§`!=§);
         }
         if((this.§!_§ & 1 << §2!H§) != 0)
         {
            this.§]d§.addEventListener(MouseEvent.ROLL_OUT,this.§5[§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§]d§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%L§);
         this.§]d§.removeEventListener(MouseEvent.MOUSE_UP,this.§#K§);
         this.§]d§.removeEventListener(MouseEvent.ROLL_OVER,this.§`!=§);
         this.§]d§.removeEventListener(MouseEvent.ROLL_OUT,this.§5[§);
      }
      
      public function §%L§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>'§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §#K§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>'§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §`!=§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§&p§,this.§>'§[§&p§]);
      }
      
      public function §5[§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2!H§,this.§>'§[§2!H§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§]d§ = null;
         this.§>'§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§]d§;
      }
   }
}
