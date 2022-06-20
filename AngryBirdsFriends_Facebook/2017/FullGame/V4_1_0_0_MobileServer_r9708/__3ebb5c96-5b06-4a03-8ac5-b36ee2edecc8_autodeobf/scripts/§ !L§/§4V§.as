package § !L§
{
   import §%"<§.§9@§;
   import §%"<§.§@#F§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §4V§ extends EventDispatcher
   {
       
      
      protected var §^#!§:MovieClip;
      
      protected var § !^§:Class;
      
      protected var §`p§:§@#F§;
      
      protected var §?!U§:§9@§;
      
      protected var §3#x§:Boolean = false;
      
      public function §4V§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§^#!§ = param1;
         this.§ !^§ = param2;
         this.§?!U§ = new this.§ !^§();
         this.§^#!§.gotoAndStop("close");
         this.§`p§ = new §@#F§(100,100,param3,this.§ !^§);
         param1.scrollerContainer.addChild(this.§`p§.scrollerSprite);
         param1.selectedValue.addChild(this.§?!U§);
         if(this.§^#!§.stage)
         {
            this.§@#Y§();
         }
         else
         {
            this.§^#!§.addEventListener(Event.ADDED_TO_STAGE,this.§@#Y§);
         }
         this.§^#!§.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.§^#!§.addEventListener(MouseEvent.MOUSE_DOWN,this.onClickMenu);
      }
      
      protected function §@#Y§(param1:Event = null) : void
      {
         this.§^#!§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=1§);
      }
      
      private function §=1§(param1:MouseEvent) : void
      {
         if(this.§3#x§ && !this.§^#!§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§`p§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§`p§.data = this.data;
      }
      
      public function set §3"7§(param1:Number) : void
      {
         this.§`p§.setWidth(param1);
      }
      
      public function set §8!=§(param1:Number) : void
      {
         this.§`p§.setHeight(param1);
      }
      
      public function set §]#5§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§?!U§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §]#5§() : int
      {
         if(!this.§?!U§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§,"k§);
      }
      
      public function get §,"k§() : Object
      {
         return this.§?!U§.data;
      }
      
      protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!this.§3#x§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §9@§)
            {
               this.§]#5§ = this.data.indexOf(§9@§(param1.target).data);
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
         this.§3#x§ = true;
         this.§^#!§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§3#x§ = false;
         this.§^#!§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§3#x§;
      }
      
      public function get §3#F§() : §9@§
      {
         return this.§?!U§;
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.§^#!§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=1§);
      }
   }
}
