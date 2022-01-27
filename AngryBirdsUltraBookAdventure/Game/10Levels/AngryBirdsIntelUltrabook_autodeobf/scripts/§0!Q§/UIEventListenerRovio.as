package §0!Q§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class UIEventListenerRovio
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §9O§:int = 2;
      
      public static const §!!Q§:int = 3;
       
      
      private var §6J§:Sprite;
      
      public var §'>§:int = 0;
      
      public var §]r§:Array;
      
      public function UIEventListenerRovio(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§6J§ = param1;
         }
         this.§]r§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§6J§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§6J§ && this.§6J§ is MovieClip)
         {
            if(param2)
            {
               (this.§6J§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§6J§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §[!5§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§'>§ |= 1 << param1;
         this.§]r§[param1] = param2.toUpperCase();
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
         if((this.§'>§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§6J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<p§);
         }
         if((this.§'>§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§6J§.addEventListener(MouseEvent.MOUSE_UP,this.§'n§);
         }
         if((this.§'>§ & 1 << §9O§) != 0)
         {
            this.§6J§.addEventListener(MouseEvent.ROLL_OVER,this.§7g§);
         }
         if((this.§'>§ & 1 << §!!Q§) != 0)
         {
            this.§6J§.addEventListener(MouseEvent.ROLL_OUT,this.§#!D§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§6J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<p§);
         this.§6J§.removeEventListener(MouseEvent.MOUSE_UP,this.§'n§);
         this.§6J§.removeEventListener(MouseEvent.ROLL_OVER,this.§7g§);
         this.§6J§.removeEventListener(MouseEvent.ROLL_OUT,this.§#!D§);
      }
      
      public function §<p§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§]r§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §'n§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§]r§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §7g§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§9O§,this.§]r§[§9O§]);
      }
      
      public function §#!D§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§!!Q§,this.§]r§[§!!Q§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§6J§ = null;
         this.§]r§ = null;
      }
   }
}
