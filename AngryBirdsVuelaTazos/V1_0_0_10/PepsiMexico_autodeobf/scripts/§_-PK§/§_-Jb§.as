package §_-PK§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-Jb§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-jr§:int = 2;
      
      public static const §_-07§:int = 3;
       
      
      private var §_-eD§:Sprite;
      
      public var §_-tk§:int = 0;
      
      public var §_-Wr§:Array;
      
      public function §_-Jb§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§_-eD§ = param1;
         }
         this.§_-Wr§ = new Array();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§_-7a§();
         this.§_-eD§ = param1;
         this.addEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§_-eD§ && this.§_-eD§ is MovieClip)
         {
            if(param2)
            {
               (this.§_-eD§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§_-eD§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §_-Lw§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§_-tk§ |= 1 << param1;
         this.§_-Wr§[param1] = param2.toUpperCase();
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
         this.§_-7a§();
         if((this.§_-tk§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§_-eD§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-qw§);
         }
         if((this.§_-tk§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§_-eD§.addEventListener(MouseEvent.MOUSE_UP,this.§_-nd§);
         }
         if((this.§_-tk§ & 1 << §_-jr§) != 0)
         {
            this.§_-eD§.addEventListener(MouseEvent.ROLL_OVER,this.§_-Po§);
         }
         if((this.§_-tk§ & 1 << §_-07§) != 0)
         {
            this.§_-eD§.addEventListener(MouseEvent.ROLL_OUT,this.§_-wY§);
         }
      }
      
      public function §_-7a§() : void
      {
         this.§_-eD§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-qw§);
         this.§_-eD§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-nd§);
         this.§_-eD§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-Po§);
         this.§_-eD§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-wY§);
      }
      
      public function §_-qw§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-Wr§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §_-nd§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-Wr§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §_-Po§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-jr§,this.§_-Wr§[§_-jr§]);
      }
      
      public function §_-wY§(param1:MouseEvent) : void
      {
         this.listenerEventOccured(§_-07§,this.§_-Wr§[§_-07§]);
      }
      
      public function clear() : void
      {
         this.§_-7a§();
         this.§_-eD§ = null;
         this.§_-Wr§ = null;
      }
   }
}
