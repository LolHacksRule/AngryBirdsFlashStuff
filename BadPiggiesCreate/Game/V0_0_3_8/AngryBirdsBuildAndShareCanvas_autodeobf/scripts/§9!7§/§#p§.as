package §9!7§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §#p§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §@q§:int = 2;
      
      public static const §6U§:int = 3;
       
      
      private var §7"4§:Sprite;
      
      public var §&'§:int = 0;
      
      public var §&!p§:Array;
      
      public function §#p§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§7"4§ = param1;
         }
         this.§&!p§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§7"4§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§7"4§ && this.§7"4§ is MovieClip)
         {
            if(param2)
            {
               (this.§7"4§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§7"4§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §?!q§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§&'§ |= 1 << param1;
         this.§&!p§[param1] = param2.toUpperCase();
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
         if((this.§&'§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§7"4§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!d§);
         }
         if((this.§&'§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§7"4§.addEventListener(MouseEvent.MOUSE_UP,this.§,w§);
         }
         if((this.§&'§ & 1 << §@q§) != 0)
         {
            this.§7"4§.addEventListener(MouseEvent.ROLL_OVER,this.§`Y§);
         }
         if((this.§&'§ & 1 << §6U§) != 0)
         {
            this.§7"4§.addEventListener(MouseEvent.ROLL_OUT,this.§[!6§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§7"4§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!d§);
         this.§7"4§.removeEventListener(MouseEvent.MOUSE_UP,this.§,w§);
         this.§7"4§.removeEventListener(MouseEvent.ROLL_OVER,this.§`Y§);
         this.§7"4§.removeEventListener(MouseEvent.ROLL_OUT,this.§[!6§);
      }
      
      public function §0!d§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§&!p§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §,w§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§&!p§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §`Y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§@q§,this.§&!p§[§@q§]);
      }
      
      public function §[!6§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§6U§,this.§&!p§[§6U§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§7"4§ = null;
         this.§&!p§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§7"4§;
      }
   }
}
