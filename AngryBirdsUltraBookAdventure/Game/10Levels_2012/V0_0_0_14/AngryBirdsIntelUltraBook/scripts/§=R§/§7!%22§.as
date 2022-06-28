package §=R§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §7!"§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §=!g§:int = 2;
      
      public static const §[$§:int = 3;
       
      
      private var §>!,§:Sprite;
      
      public var §?c§:int = 0;
      
      public var §[!J§:Array;
      
      public function §7!"§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§>!,§ = param1;
         }
         this.§[!J§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§>!,§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§>!,§ && this.§>!,§ is MovieClip)
         {
            if(param2)
            {
               (this.§>!,§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§>!,§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §;!9§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§?c§ |= 1 << param1;
         this.§[!J§[param1] = param2.toUpperCase();
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
         if((this.§?c§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§>!,§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,3§);
         }
         if((this.§?c§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§>!,§.addEventListener(MouseEvent.MOUSE_UP,this.§&!X§);
         }
         if((this.§?c§ & 1 << §=!g§) != 0)
         {
            this.§>!,§.addEventListener(MouseEvent.ROLL_OVER,this.§!!I§);
         }
         if((this.§?c§ & 1 << §[$§) != 0)
         {
            this.§>!,§.addEventListener(MouseEvent.ROLL_OUT,this.§4!Y§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§>!,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,3§);
         this.§>!,§.removeEventListener(MouseEvent.MOUSE_UP,this.§&!X§);
         this.§>!,§.removeEventListener(MouseEvent.ROLL_OVER,this.§!!I§);
         this.§>!,§.removeEventListener(MouseEvent.ROLL_OUT,this.§4!Y§);
      }
      
      public function §,3§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§[!J§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §&!X§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§[!J§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §!!I§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§=!g§,this.§[!J§[§=!g§]);
      }
      
      public function §4!Y§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§[$§,this.§[!J§[§[$§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§>!,§ = null;
         this.§[!J§ = null;
      }
   }
}
