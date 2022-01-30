package §^x§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §<!w§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^!H§:int = 2;
      
      public static const §^!K§:int = 3;
       
      
      private var §+@§:Sprite;
      
      public var §]!!§:int = 0;
      
      public var §6!J§:Array;
      
      public function §<!w§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§+@§ = param1;
         }
         this.§6!J§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§+@§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§+@§ && this.§+@§ is MovieClip)
         {
            if(param2)
            {
               (this.§+@§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§+@§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §^T§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§]!!§ |= 1 << param1;
         this.§6!J§[param1] = param2.toUpperCase();
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
         if((this.§]!!§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§+@§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%0§);
         }
         if((this.§]!!§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§+@§.addEventListener(MouseEvent.MOUSE_UP,this.§6>§);
         }
         if((this.§]!!§ & 1 << §^!H§) != 0)
         {
            this.§+@§.addEventListener(MouseEvent.ROLL_OVER,this.get);
         }
         if((this.§]!!§ & 1 << §^!K§) != 0)
         {
            this.§+@§.addEventListener(MouseEvent.ROLL_OUT,this.§'"0§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§+@§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%0§);
         this.§+@§.removeEventListener(MouseEvent.MOUSE_UP,this.§6>§);
         this.§+@§.removeEventListener(MouseEvent.ROLL_OVER,this.get);
         this.§+@§.removeEventListener(MouseEvent.ROLL_OUT,this.§'"0§);
      }
      
      public function §%0§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§6!J§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §6>§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§6!J§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function get(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§^!H§,this.§6!J§[§^!H§]);
      }
      
      public function §'"0§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§^!K§,this.§6!J§[§^!K§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§+@§ = null;
         this.§6!J§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§+@§;
      }
   }
}
