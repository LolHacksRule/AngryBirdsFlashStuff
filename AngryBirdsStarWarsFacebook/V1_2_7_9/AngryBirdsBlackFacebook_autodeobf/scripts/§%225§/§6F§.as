package §"5§
{
   import §9!&§.§,!m§;
   import §9!&§.§`-§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §6F§ extends EventDispatcher
   {
       
      
      protected var §6!&§:MovieClip;
      
      protected var §5"C§:Class;
      
      protected var §!!E§:§,!m§;
      
      protected var §?"4§:§`-§;
      
      protected var §&![§:Boolean = false;
      
      public function §6F§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§6!&§ = param1;
         this.§5"C§ = param2;
         this.§?"4§ = new this.§5"C§();
         this.§6!&§.gotoAndStop("close");
         this.§!!E§ = new §,!m§(100,100,param3,this.§5"C§);
         param1.scrollerContainer.addChild(this.§!!E§.scrollerSprite);
         param1.selectedValue.addChild(this.§?"4§);
         if(this.§6!&§.stage)
         {
            this.§=!;§();
         }
         else
         {
            this.§6!&§.addEventListener(Event.ADDED_TO_STAGE,this.§=!;§);
         }
         this.§6!&§.addEventListener(Event.REMOVED_FROM_STAGE,this.§%!w§);
         this.§6!&§.addEventListener(MouseEvent.MOUSE_DOWN,this.§6x§);
      }
      
      protected function §=!;§(param1:Event = null) : void
      {
         this.§6!&§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§0"t§);
      }
      
      private function §0"t§(param1:MouseEvent) : void
      {
         if(this.§&![§ && !this.§6!&§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§!!E§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§!!E§.data = this.data;
      }
      
      public function set §3!F§(param1:Number) : void
      {
         this.§!!E§.setWidth(param1);
      }
      
      public function set §@!f§(param1:Number) : void
      {
         this.§!!E§.setHeight(param1);
      }
      
      public function set § !8§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§?"4§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get § !8§() : int
      {
         if(!this.§?"4§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§9! §);
      }
      
      public function get §9! §() : Object
      {
         return this.§?"4§.data;
      }
      
      protected function §6x§(param1:MouseEvent) : void
      {
         if(!this.§&![§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §`-§)
            {
               this.§ !8§ = this.data.indexOf(§`-§(param1.target).data);
            }
            this.close();
         }
      }
      
      public function open() : void
      {
         if(this.isOpen)
         {
            return;
         }
         this.§&![§ = true;
         this.§6!&§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§&![§ = false;
         this.§6!&§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§&![§;
      }
      
      public function get §3"q§() : §`-§
      {
         return this.§?"4§;
      }
      
      protected function §%!w§(param1:Event) : void
      {
         this.§6!&§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0"t§);
      }
   }
}
