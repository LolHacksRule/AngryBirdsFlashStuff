package §]!=§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §;!6§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §"?§:int = 2;
      
      public static const §=!N§:int = 3;
       
      
      private var §3e§:Sprite;
      
      public var §[a§:int = 0;
      
      public var §%!$§:Array;
      
      public function §;!6§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§3e§ = param1;
         }
         this.§%!$§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§3e§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§3e§ && this.§3e§ is MovieClip)
         {
            if(param2)
            {
               (this.§3e§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§3e§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §[e§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§[a§ |= 1 << param1;
         this.§%!$§[param1] = param2.toUpperCase();
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
         if((this.§[a§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§3e§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'x§);
         }
         if((this.§[a§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§3e§.addEventListener(MouseEvent.MOUSE_UP,this.§@=§);
         }
         if((this.§[a§ & 1 << §"?§) != 0)
         {
            this.§3e§.addEventListener(MouseEvent.ROLL_OVER,this.§`v§);
         }
         if((this.§[a§ & 1 << §=!N§) != 0)
         {
            this.§3e§.addEventListener(MouseEvent.ROLL_OUT,this.§;i§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§3e§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'x§);
         this.§3e§.removeEventListener(MouseEvent.MOUSE_UP,this.§@=§);
         this.§3e§.removeEventListener(MouseEvent.ROLL_OVER,this.§`v§);
         this.§3e§.removeEventListener(MouseEvent.ROLL_OUT,this.§;i§);
      }
      
      public function §'x§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§%!$§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §@=§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§%!$§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §`v§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§"?§,this.§%!$§[§"?§]);
      }
      
      public function §;i§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§=!N§,this.§%!$§[§=!N§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§3e§ = null;
         this.§%!$§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§3e§;
      }
   }
}
