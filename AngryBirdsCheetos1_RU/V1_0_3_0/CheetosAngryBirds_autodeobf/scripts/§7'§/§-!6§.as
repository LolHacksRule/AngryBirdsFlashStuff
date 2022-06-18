package §7'§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-!6§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §=4§:int = 2;
      
      public static const §9!6§:int = 3;
       
      
      private var § use§:Sprite;
      
      public var §;B§:int = 0;
      
      public var §"4§:Array;
      
      public function §-!6§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§ use§ = param1;
         }
         this.§"4§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§ use§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§ use§ && this.§ use§ is MovieClip)
         {
            if(param2)
            {
               (this.§ use§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§ use§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §,O§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§;B§ |= 1 << param1;
         this.§"4§[param1] = param2.toUpperCase();
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
         if((this.§;B§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§ use§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!@§);
         }
         if((this.§;B§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§ use§.addEventListener(MouseEvent.MOUSE_UP,this.§"k§);
         }
         if((this.§;B§ & 1 << §=4§) != 0)
         {
            this.§ use§.addEventListener(MouseEvent.ROLL_OVER,this.§]#§);
         }
         if((this.§;B§ & 1 << §9!6§) != 0)
         {
            this.§ use§.addEventListener(MouseEvent.ROLL_OUT,this.§1H§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§ use§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!@§);
         this.§ use§.removeEventListener(MouseEvent.MOUSE_UP,this.§"k§);
         this.§ use§.removeEventListener(MouseEvent.ROLL_OVER,this.§]#§);
         this.§ use§.removeEventListener(MouseEvent.ROLL_OUT,this.§1H§);
      }
      
      public function §5!@§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§"4§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §"k§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§"4§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §]#§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§=4§,this.§"4§[§=4§]);
      }
      
      public function §1H§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§9!6§,this.§"4§[§9!6§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§ use§ = null;
         this.§"4§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§ use§;
      }
   }
}
