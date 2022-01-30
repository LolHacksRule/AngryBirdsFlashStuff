package §@y§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §0=§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §2!-§:int = 2;
      
      public static const §6!;§:int = 3;
       
      
      private var §6!$§:Sprite;
      
      public var §&6§:int = 0;
      
      public var §&!W§:Array;
      
      public function §0=§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§6!$§ = param1;
         }
         this.§&!W§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§6!$§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§6!$§ && this.§6!$§ is MovieClip)
         {
            if(param2)
            {
               (this.§6!$§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§6!$§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7"'§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§&6§ |= 1 << param1;
         this.§&!W§[param1] = param2.toUpperCase();
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
         if((this.§&6§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§6!$§.addEventListener(MouseEvent.MOUSE_DOWN,this.§for§);
         }
         if((this.§&6§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§6!$§.addEventListener(MouseEvent.MOUSE_UP,this.§^!R§);
         }
         if((this.§&6§ & 1 << §2!-§) != 0)
         {
            this.§6!$§.addEventListener(MouseEvent.ROLL_OVER,this.§,F§);
         }
         if((this.§&6§ & 1 << §6!;§) != 0)
         {
            this.§6!$§.addEventListener(MouseEvent.ROLL_OUT,this.§>!2§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§6!$§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§for§);
         this.§6!$§.removeEventListener(MouseEvent.MOUSE_UP,this.§^!R§);
         this.§6!$§.removeEventListener(MouseEvent.ROLL_OVER,this.§,F§);
         this.§6!$§.removeEventListener(MouseEvent.ROLL_OUT,this.§>!2§);
      }
      
      public function §for§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§&!W§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §^!R§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§&!W§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §,F§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2!-§,this.§&!W§[§2!-§]);
      }
      
      public function §>!2§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§6!;§,this.§&!W§[§6!;§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§6!$§ = null;
         this.§&!W§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§6!$§;
      }
   }
}
