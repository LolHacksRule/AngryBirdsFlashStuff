package §'!N§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §%!E§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §6!I§:int = 2;
      
      public static const §+]§:int = 3;
       
      
      private var §6n§:Sprite;
      
      public var §7Q§:int = 0;
      
      public var §&h§:Array;
      
      public function §%!E§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§6n§ = param1;
         }
         this.§&h§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§6n§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§6n§ && this.§6n§ is MovieClip)
         {
            if(param2)
            {
               (this.§6n§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§6n§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §#D§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§7Q§ |= 1 << param1;
         this.§&h§[param1] = param2.toUpperCase();
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
         if((this.§7Q§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§6n§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2s§);
         }
         if((this.§7Q§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§6n§.addEventListener(MouseEvent.MOUSE_UP,this.§8@§);
         }
         if((this.§7Q§ & 1 << §6!I§) != 0)
         {
            this.§6n§.addEventListener(MouseEvent.ROLL_OVER,this.§2n§);
         }
         if((this.§7Q§ & 1 << §+]§) != 0)
         {
            this.§6n§.addEventListener(MouseEvent.ROLL_OUT,this.§[D§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§6n§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2s§);
         this.§6n§.removeEventListener(MouseEvent.MOUSE_UP,this.§8@§);
         this.§6n§.removeEventListener(MouseEvent.ROLL_OVER,this.§2n§);
         this.§6n§.removeEventListener(MouseEvent.ROLL_OUT,this.§[D§);
      }
      
      public function §2s§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§&h§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §8@§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§&h§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §2n§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§6!I§,this.§&h§[§6!I§]);
      }
      
      public function §[D§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§+]§,this.§&h§[§+]§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§6n§ = null;
         this.§&h§ = null;
      }
   }
}
