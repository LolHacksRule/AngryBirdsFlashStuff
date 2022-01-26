package §93§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §^!H§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §[u§:int = 2;
      
      public static const § [§:int = 3;
       
      
      private var §%n§:Sprite;
      
      public var §!j§:int = 0;
      
      public var §1]§:Array;
      
      public function §^!H§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§%n§ = param1;
         }
         this.§1]§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§%n§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§%n§ && this.§%n§ is MovieClip)
         {
            if(param2)
            {
               (this.§%n§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§%n§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §?W§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§!j§ |= 1 << param1;
         this.§1]§[param1] = param2.toUpperCase();
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
         if((this.§!j§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§%n§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!!6§);
         }
         if((this.§!j§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§%n§.addEventListener(MouseEvent.MOUSE_UP,this.§=e§);
         }
         if((this.§!j§ & 1 << §[u§) != 0)
         {
            this.§%n§.addEventListener(MouseEvent.ROLL_OVER,this.§`!D§);
         }
         if((this.§!j§ & 1 << § [§) != 0)
         {
            this.§%n§.addEventListener(MouseEvent.ROLL_OUT,this.§6!!§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§%n§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!6§);
         this.§%n§.removeEventListener(MouseEvent.MOUSE_UP,this.§=e§);
         this.§%n§.removeEventListener(MouseEvent.ROLL_OVER,this.§`!D§);
         this.§%n§.removeEventListener(MouseEvent.ROLL_OUT,this.§6!!§);
      }
      
      public function §!!6§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§1]§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §=e§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§1]§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §`!D§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§[u§,this.§1]§[§[u§]);
      }
      
      public function §6!!§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§ [§,this.§1]§[§ [§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§%n§ = null;
         this.§1]§ = null;
      }
   }
}
