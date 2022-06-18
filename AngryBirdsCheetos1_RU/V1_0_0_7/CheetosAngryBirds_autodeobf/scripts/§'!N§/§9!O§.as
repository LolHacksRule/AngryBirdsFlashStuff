package §'!N§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §9!O§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §0!>§:int = 2;
      
      public static const §5V§:int = 3;
       
      
      private var §%u§:Sprite;
      
      public var §^!>§:int = 0;
      
      public var §&!A§:Array;
      
      public function §9!O§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§%u§ = param1;
         }
         this.§&!A§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§%u§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§%u§ && this.§%u§ is MovieClip)
         {
            if(param2)
            {
               (this.§%u§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§%u§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §=!`§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^!>§ |= 1 << param1;
         this.§&!A§[param1] = param2.toUpperCase();
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
         if((this.§^!>§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§%u§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!5§);
         }
         if((this.§^!>§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§%u§.addEventListener(MouseEvent.MOUSE_UP,this.§&-§);
         }
         if((this.§^!>§ & 1 << §0!>§) != 0)
         {
            this.§%u§.addEventListener(MouseEvent.ROLL_OVER,this.§2[§);
         }
         if((this.§^!>§ & 1 << §5V§) != 0)
         {
            this.§%u§.addEventListener(MouseEvent.ROLL_OUT,this.§3h§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§%u§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!5§);
         this.§%u§.removeEventListener(MouseEvent.MOUSE_UP,this.§&-§);
         this.§%u§.removeEventListener(MouseEvent.ROLL_OVER,this.§2[§);
         this.§%u§.removeEventListener(MouseEvent.ROLL_OUT,this.§3h§);
      }
      
      public function §!5§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§&!A§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §&-§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§&!A§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §2[§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§0!>§,this.§&!A§[§0!>§]);
      }
      
      public function §3h§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§5V§,this.§&!A§[§5V§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§%u§ = null;
         this.§&!A§ = null;
      }
   }
}
