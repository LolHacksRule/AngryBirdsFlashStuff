package §!!0§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class § true§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §#j§:int = 2;
      
      public static const §4!$§:int = 3;
       
      
      private var §`P§:Sprite;
      
      public var §4U§:int = 0;
      
      public var §<3§:Array;
      
      public function § true§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§`P§ = param1;
         }
         this.§<3§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§`P§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§`P§ && this.§`P§ is MovieClip)
         {
            if(param2)
            {
               (this.§`P§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§`P§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §&!H§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§4U§ |= 1 << param1;
         this.§<3§[param1] = param2.toUpperCase();
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
         if((this.§4U§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§`P§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8S§);
         }
         if((this.§4U§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§`P§.addEventListener(MouseEvent.MOUSE_UP,this.§@+§);
         }
         if((this.§4U§ & 1 << §#j§) != 0)
         {
            this.§`P§.addEventListener(MouseEvent.ROLL_OVER,this.§7E§);
         }
         if((this.§4U§ & 1 << §4!$§) != 0)
         {
            this.§`P§.addEventListener(MouseEvent.ROLL_OUT,this.§'!1§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§`P§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8S§);
         this.§`P§.removeEventListener(MouseEvent.MOUSE_UP,this.§@+§);
         this.§`P§.removeEventListener(MouseEvent.ROLL_OVER,this.§7E§);
         this.§`P§.removeEventListener(MouseEvent.ROLL_OUT,this.§'!1§);
      }
      
      public function §8S§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§<3§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §@+§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§<3§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §7E§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#j§,this.§<3§[§#j§]);
      }
      
      public function §'!1§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§4!$§,this.§<3§[§4!$§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§`P§ = null;
         this.§<3§ = null;
      }
   }
}
