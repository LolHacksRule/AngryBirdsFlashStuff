package §0u§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §&]§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §-&§:int = 2;
      
      public static const §,n§:int = 3;
       
      
      private var §1r§:Sprite;
      
      public var § case§:int = 0;
      
      public var §7!G§:Array;
      
      public function §&]§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§1r§ = param1;
         }
         this.§7!G§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§1r§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§1r§ && this.§1r§ is MovieClip)
         {
            if(param2)
            {
               (this.§1r§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§1r§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §?Y§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§ case§ |= 1 << param1;
         this.§7!G§[param1] = param2.toUpperCase();
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
         if((this.§ case§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§1r§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8!#§);
         }
         if((this.§ case§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§1r§.addEventListener(MouseEvent.CLICK,this.§]!$§);
         }
         if((this.§ case§ & 1 << §-&§) != 0)
         {
            this.§1r§.addEventListener(MouseEvent.ROLL_OVER,this.§]!5§);
         }
         if((this.§ case§ & 1 << §,n§) != 0)
         {
            this.§1r§.addEventListener(MouseEvent.ROLL_OUT,this.§super§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§1r§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8!#§);
         this.§1r§.removeEventListener(MouseEvent.MOUSE_UP,this.§]!$§);
         this.§1r§.removeEventListener(MouseEvent.ROLL_OVER,this.§]!5§);
         this.§1r§.removeEventListener(MouseEvent.ROLL_OUT,this.§super§);
      }
      
      public function §8!#§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§7!G§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §]!$§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§7!G§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §]!5§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§-&§,this.§7!G§[§-&§]);
      }
      
      public function §super§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§,n§,this.§7!G§[§,n§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§1r§ = null;
         this.§7!G§ = null;
      }
   }
}
