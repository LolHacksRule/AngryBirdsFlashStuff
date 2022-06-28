package §-!F§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §^h§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §null§:int = 2;
      
      public static const §@!'§:int = 3;
       
      
      private var §"j§:Sprite;
      
      public var §%q§:int = 0;
      
      public var §4F§:Array;
      
      public function §^h§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§"j§ = param1;
         }
         this.§4F§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§"j§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§"j§ && this.§"j§ is MovieClip)
         {
            if(param2)
            {
               (this.§"j§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§"j§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7w§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§%q§ |= 1 << param1;
         this.§4F§[param1] = param2.toUpperCase();
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
         if((this.§%q§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§"j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@1§);
         }
         if((this.§%q§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§"j§.addEventListener(MouseEvent.MOUSE_UP,this.§-§);
         }
         if((this.§%q§ & 1 << §null§) != 0)
         {
            this.§"j§.addEventListener(MouseEvent.ROLL_OVER,this.§;-§);
         }
         if((this.§%q§ & 1 << §@!'§) != 0)
         {
            this.§"j§.addEventListener(MouseEvent.ROLL_OUT,this.§&^§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§"j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@1§);
         this.§"j§.removeEventListener(MouseEvent.MOUSE_UP,this.§-§);
         this.§"j§.removeEventListener(MouseEvent.ROLL_OVER,this.§;-§);
         this.§"j§.removeEventListener(MouseEvent.ROLL_OUT,this.§&^§);
      }
      
      public function §@1§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§4F§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §-§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§4F§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §;-§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§null§,this.§4F§[§null§]);
      }
      
      public function §&^§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§@!'§,this.§4F§[§@!'§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§"j§ = null;
         this.§4F§ = null;
      }
   }
}
