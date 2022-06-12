package §'!A§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-!S§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §%x§:int = 2;
      
      public static const §2"3§:int = 3;
       
      
      private var §33§:Sprite;
      
      public var §2"§:int = 0;
      
      public var §9!$§:Array;
      
      public function §-!S§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§33§ = param1;
         }
         this.§9!$§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§33§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§33§ && this.§33§ is MovieClip)
         {
            if(param2)
            {
               (this.§33§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§33§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function § "<§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§2"§ |= 1 << param1;
         this.§9!$§[param1] = param2.toUpperCase();
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
         if((this.§2"§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§33§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2!a§);
         }
         if((this.§2"§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§33§.addEventListener(MouseEvent.MOUSE_UP,this.§[!?§);
         }
         if((this.§2"§ & 1 << §%x§) != 0)
         {
            this.§33§.addEventListener(MouseEvent.ROLL_OVER,this.§6M§);
         }
         if((this.§2"§ & 1 << §2"3§) != 0)
         {
            this.§33§.addEventListener(MouseEvent.ROLL_OUT,this.§"Q§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§33§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2!a§);
         this.§33§.removeEventListener(MouseEvent.MOUSE_UP,this.§[!?§);
         this.§33§.removeEventListener(MouseEvent.ROLL_OVER,this.§6M§);
         this.§33§.removeEventListener(MouseEvent.ROLL_OUT,this.§"Q§);
      }
      
      public function §2!a§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§9!$§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §[!?§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§9!$§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §6M§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§%x§,this.§9!$§[§%x§]);
      }
      
      public function §"Q§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§2"3§,this.§9!$§[§2"3§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§33§ = null;
         this.§9!$§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§33§;
      }
   }
}
