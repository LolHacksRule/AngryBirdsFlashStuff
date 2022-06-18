package §!!S§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §^P§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const § !1§:int = 2;
      
      public static const §7![§:int = 3;
       
      
      private var §throw§:Sprite;
      
      public var §69§:int = 0;
      
      public var §8j§:Array;
      
      public function §^P§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§throw§ = param1;
         }
         this.§8j§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§throw§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§throw§ && this.§throw§ is MovieClip)
         {
            if(param2)
            {
               (this.§throw§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§throw§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §&!$§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§69§ |= 1 << param1;
         this.§8j§[param1] = param2.toUpperCase();
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
         if((this.§69§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§throw§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!%§);
         }
         if((this.§69§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§throw§.addEventListener(MouseEvent.MOUSE_UP,this.§@s§);
         }
         if((this.§69§ & 1 << § !1§) != 0)
         {
            this.§throw§.addEventListener(MouseEvent.ROLL_OVER,this.§,R§);
         }
         if((this.§69§ & 1 << §7![§) != 0)
         {
            this.§throw§.addEventListener(MouseEvent.ROLL_OUT,this.§#!>§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§throw§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@!%§);
         this.§throw§.removeEventListener(MouseEvent.MOUSE_UP,this.§@s§);
         this.§throw§.removeEventListener(MouseEvent.ROLL_OVER,this.§,R§);
         this.§throw§.removeEventListener(MouseEvent.ROLL_OUT,this.§#!>§);
      }
      
      public function §@!%§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§8j§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §@s§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§8j§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §,R§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§ !1§,this.§8j§[§ !1§]);
      }
      
      public function §#!>§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§7![§,this.§8j§[§7![§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§throw§ = null;
         this.§8j§ = null;
      }
   }
}
