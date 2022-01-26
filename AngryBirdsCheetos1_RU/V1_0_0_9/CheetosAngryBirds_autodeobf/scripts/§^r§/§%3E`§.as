package §^r§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §>`§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §<8§:int = 2;
      
      public static const §@'§:int = 3;
       
      
      private var §@m§:Sprite;
      
      public var §4F§:int = 0;
      
      public var §=4§:Array;
      
      public function §>`§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§@m§ = param1;
         }
         this.§=4§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§@m§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§@m§ && this.§@m§ is MovieClip)
         {
            if(param2)
            {
               (this.§@m§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§@m§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §[!O§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§4F§ |= 1 << param1;
         this.§=4§[param1] = param2.toUpperCase();
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
         if((this.§4F§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§@m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!;§);
         }
         if((this.§4F§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§@m§.addEventListener(MouseEvent.MOUSE_UP,this.§+8§);
         }
         if((this.§4F§ & 1 << §<8§) != 0)
         {
            this.§@m§.addEventListener(MouseEvent.ROLL_OVER,this.§33§);
         }
         if((this.§4F§ & 1 << §@'§) != 0)
         {
            this.§@m§.addEventListener(MouseEvent.ROLL_OUT,this.§4!N§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§@m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!;§);
         this.§@m§.removeEventListener(MouseEvent.MOUSE_UP,this.§+8§);
         this.§@m§.removeEventListener(MouseEvent.ROLL_OVER,this.§33§);
         this.§@m§.removeEventListener(MouseEvent.ROLL_OUT,this.§4!N§);
      }
      
      public function §'!;§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=4§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §+8§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=4§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §33§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§<8§,this.§=4§[§<8§]);
      }
      
      public function §4!N§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§@'§,this.§=4§[§@'§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§@m§ = null;
         this.§=4§ = null;
      }
   }
}
