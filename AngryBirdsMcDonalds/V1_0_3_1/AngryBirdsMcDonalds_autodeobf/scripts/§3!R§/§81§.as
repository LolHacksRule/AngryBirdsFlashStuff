package §3!R§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §81§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §71§:int = 2;
      
      public static const §&!3§:int = 3;
       
      
      private var §,e§:Sprite;
      
      public var §+<§:int = 0;
      
      public var §"r§:Array;
      
      public function §81§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§,e§ = param1;
         }
         this.§"r§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeEventListeners();
         this.§,e§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§,e§ && this.§,e§ is MovieClip)
         {
            if(param2)
            {
               (this.§,e§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§,e§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §@q§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§+<§ |= 1 << param1;
         this.§"r§[param1] = param2.toUpperCase();
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
         if((this.§+<§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§,e§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8O§);
         }
         if((this.§+<§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§,e§.addEventListener(MouseEvent.MOUSE_UP,this.§%!;§);
         }
         if((this.§+<§ & 1 << §71§) != 0)
         {
            this.§,e§.addEventListener(MouseEvent.ROLL_OVER,this.§]t§);
         }
         if((this.§+<§ & 1 << §&!3§) != 0)
         {
            this.§,e§.addEventListener(MouseEvent.ROLL_OUT,this.§;A§);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.§,e§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8O§);
         this.§,e§.removeEventListener(MouseEvent.MOUSE_UP,this.§%!;§);
         this.§,e§.removeEventListener(MouseEvent.ROLL_OVER,this.§]t§);
         this.§,e§.removeEventListener(MouseEvent.ROLL_OUT,this.§;A§);
      }
      
      public function §8O§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§"r§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §%!;§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§"r§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §]t§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§71§,this.§"r§[§71§]);
      }
      
      public function §;A§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§&!3§,this.§"r§[§&!3§]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.§,e§ = null;
         this.§"r§ = null;
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§,e§;
      }
   }
}
