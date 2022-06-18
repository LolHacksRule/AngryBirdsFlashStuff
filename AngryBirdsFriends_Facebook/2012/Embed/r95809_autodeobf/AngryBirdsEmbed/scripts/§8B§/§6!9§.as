package §8B§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §6!9§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §<!'§:int = 2;
      
      public static const §=I§:int = 3;
       
      
      private var §[v§:Sprite;
      
      public var §#n§:int = 0;
      
      public var §7T§:Array;
      
      public function §6!9§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§[v§ = param1;
         }
         this.§7T§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§[v§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§[v§ && this.§[v§ is MovieClip)
         {
            if(param2)
            {
               (this.§[v§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§[v§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §1&§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§#n§ |= 1 << param1;
         this.§7T§[param1] = param2.toUpperCase();
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
         if((this.§#n§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§[v§.addEventListener(MouseEvent.MOUSE_DOWN,this.§&=§);
         }
         if((this.§#n§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§[v§.addEventListener(MouseEvent.CLICK,this.§]!$§);
         }
         if((this.§#n§ & 1 << §<!'§) != 0)
         {
            this.§[v§.addEventListener(MouseEvent.ROLL_OVER,this.§=R§);
         }
         if((this.§#n§ & 1 << §=I§) != 0)
         {
            this.§[v§.addEventListener(MouseEvent.ROLL_OUT,this.§+!#§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§[v§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§&=§);
         this.§[v§.removeEventListener(MouseEvent.MOUSE_UP,this.§]!$§);
         this.§[v§.removeEventListener(MouseEvent.ROLL_OVER,this.§=R§);
         this.§[v§.removeEventListener(MouseEvent.ROLL_OUT,this.§+!#§);
      }
      
      public function §&=§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§7T§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §]!$§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§7T§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §=R§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§<!'§,this.§7T§[§<!'§]);
      }
      
      public function §+!#§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§=I§,this.§7T§[§=I§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§[v§ = null;
         this.§7T§ = null;
      }
   }
}
