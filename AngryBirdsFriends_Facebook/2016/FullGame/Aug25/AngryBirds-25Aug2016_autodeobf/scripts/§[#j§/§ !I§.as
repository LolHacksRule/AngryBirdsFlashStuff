package §[#j§
{
   import §6#O§.§3?§;
   import §6#O§.§?"D§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class § !I§ extends EventDispatcher
   {
       
      
      protected var §]Z§:MovieClip;
      
      protected var §@!H§:Class;
      
      protected var §2"%§:§?"D§;
      
      protected var §6#I§:§3?§;
      
      protected var §="S§:Boolean = false;
      
      public function § !I§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§]Z§ = param1;
         this.§@!H§ = param2;
         this.§6#I§ = new this.§@!H§();
         this.§]Z§.gotoAndStop("close");
         this.§2"%§ = new §?"D§(100,100,param3,this.§@!H§);
         param1.scrollerContainer.addChild(this.§2"%§.scrollerSprite);
         param1.selectedValue.addChild(this.§6#I§);
         if(this.§]Z§.stage)
         {
            this.§]"@§();
         }
         else
         {
            this.§]Z§.addEventListener(Event.ADDED_TO_STAGE,this.§]"@§);
         }
         this.§]Z§.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.§]Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.onClickMenu);
      }
      
      protected function §]"@§(param1:Event = null) : void
      {
         this.§]Z§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§6"S§);
      }
      
      private function §6"S§(param1:MouseEvent) : void
      {
         if(this.§="S§ && !this.§]Z§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§2"%§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§2"%§.data = this.data;
      }
      
      public function set §@#k§(param1:Number) : void
      {
         this.§2"%§.setWidth(param1);
      }
      
      public function set §<"0§(param1:Number) : void
      {
         this.§2"%§.setHeight(param1);
      }
      
      public function set §@!?§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§6#I§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §@!?§() : int
      {
         if(!this.§6#I§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§25§);
      }
      
      public function get §25§() : Object
      {
         return this.§6#I§.data;
      }
      
      protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!this.§="S§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §3?§)
            {
               this.§@!?§ = this.data.indexOf(§3?§(param1.target).data);
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
         this.§="S§ = true;
         this.§]Z§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§="S§ = false;
         this.§]Z§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§="S§;
      }
      
      public function get § "K§() : §3?§
      {
         return this.§6#I§;
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.§]Z§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6"S§);
      }
   }
}
