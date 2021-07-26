package §1!t§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §""B§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §?"H§:int = 2;
      
      public static const §6!E§:int = 3;
       
      
      private var §&!`§:Sprite;
      
      public var §-!W§:int = 0;
      
      public var §=!U§:Array;
      
      public function §""B§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§&!`§ = param1;
         }
         this.§=!U§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§&!`§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§&!`§ && this.§&!`§ is MovieClip)
         {
            if(param2)
            {
               (this.§&!`§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§&!`§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §[o§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§-!W§ |= 1 << param1;
         this.§=!U§[param1] = param2.toUpperCase();
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
         if((this.§-!W§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§&!`§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8!R§);
         }
         if((this.§-!W§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§&!`§.addEventListener(MouseEvent.MOUSE_UP,this.§!4§);
         }
         if((this.§-!W§ & 1 << §?"H§) != 0)
         {
            this.§&!`§.addEventListener(MouseEvent.ROLL_OVER,this.§^"0§);
         }
         if((this.§-!W§ & 1 << §6!E§) != 0)
         {
            this.§&!`§.addEventListener(MouseEvent.ROLL_OUT,this.§7"3§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§&!`§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8!R§);
         this.§&!`§.removeEventListener(MouseEvent.MOUSE_UP,this.§!4§);
         this.§&!`§.removeEventListener(MouseEvent.ROLL_OVER,this.§^"0§);
         this.§&!`§.removeEventListener(MouseEvent.ROLL_OUT,this.§7"3§);
      }
      
      public function §8!R§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=!U§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §!4§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=!U§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §^"0§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§?"H§,this.§=!U§[§?"H§]);
      }
      
      public function §7"3§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§6!E§,this.§=!U§[§6!E§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§&!`§ = null;
         this.§=!U§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§&!`§;
      }
   }
}
