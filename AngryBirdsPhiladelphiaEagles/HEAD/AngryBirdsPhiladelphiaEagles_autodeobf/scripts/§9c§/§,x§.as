package §9c§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §,x§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §]!J§:int = 2;
      
      public static const §#!I§:int = 3;
       
      
      private var §&$§:Sprite;
      
      public var §5!#§:int = 0;
      
      public var §->§:Array;
      
      public function §,x§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§&$§ = param1;
         }
         this.§->§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§&$§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§&$§ && this.§&$§ is MovieClip)
         {
            if(param2)
            {
               (this.§&$§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§&$§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §4F§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§5!#§ |= 1 << param1;
         this.§->§[param1] = param2.toUpperCase();
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
         if((this.§5!#§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§&$§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'j§);
         }
         if((this.§5!#§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§&$§.addEventListener(MouseEvent.MOUSE_UP,this.§`!&§);
         }
         if((this.§5!#§ & 1 << §]!J§) != 0)
         {
            this.§&$§.addEventListener(MouseEvent.ROLL_OVER,this.§-&§);
         }
         if((this.§5!#§ & 1 << §#!I§) != 0)
         {
            this.§&$§.addEventListener(MouseEvent.ROLL_OUT,this.§[q§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§&$§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'j§);
         this.§&$§.removeEventListener(MouseEvent.MOUSE_UP,this.§`!&§);
         this.§&$§.removeEventListener(MouseEvent.ROLL_OVER,this.§-&§);
         this.§&$§.removeEventListener(MouseEvent.ROLL_OUT,this.§[q§);
      }
      
      public function §'j§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§->§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §`!&§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§->§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §-&§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§]!J§,this.§->§[§]!J§]);
      }
      
      public function §[q§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§#!I§,this.§->§[§#!I§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§&$§ = null;
         this.§->§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§&$§;
      }
   }
}
