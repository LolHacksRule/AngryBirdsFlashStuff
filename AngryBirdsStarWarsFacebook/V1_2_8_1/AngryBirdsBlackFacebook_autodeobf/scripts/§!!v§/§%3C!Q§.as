package §!!v§
{
   import §8§.§"!E§;
   import §8§.§0>§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §<!Q§ extends EventDispatcher
   {
       
      
      protected var §=W§:MovieClip;
      
      protected var §]q§:Class;
      
      protected var §;# §:§0>§;
      
      protected var § 7§:§"!E§;
      
      protected var §7!l§:Boolean = false;
      
      public function §<!Q§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§=W§ = param1;
         this.§]q§ = param2;
         this.§ 7§ = new this.§]q§();
         this.§=W§.gotoAndStop("close");
         this.§;# § = new §0>§(100,100,param3,this.§]q§);
         param1.scrollerContainer.addChild(this.§;# §.scrollerSprite);
         param1.selectedValue.addChild(this.§ 7§);
         if(this.§=W§.stage)
         {
            this.§0^§();
         }
         else
         {
            this.§=W§.addEventListener(Event.ADDED_TO_STAGE,this.§0^§);
         }
         this.§=W§.addEventListener(Event.REMOVED_FROM_STAGE,this.§^!z§);
         this.§=W§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7p§);
      }
      
      protected function §0^§(param1:Event = null) : void
      {
         this.§=W§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§1"!§);
      }
      
      private function §1"!§(param1:MouseEvent) : void
      {
         if(this.§7!l§ && !this.§=W§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§;# §.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§;# §.data = this.data;
      }
      
      public function set §2!0§(param1:Number) : void
      {
         this.§;# §.setWidth(param1);
      }
      
      public function set §5!,§(param1:Number) : void
      {
         this.§;# §.setHeight(param1);
      }
      
      public function set §[!l§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§ 7§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §[!l§() : int
      {
         if(!this.§ 7§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§6"G§);
      }
      
      public function get §6"G§() : Object
      {
         return this.§ 7§.data;
      }
      
      protected function §7p§(param1:MouseEvent) : void
      {
         if(!this.§7!l§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §"!E§)
            {
               this.§[!l§ = this.data.indexOf(§"!E§(param1.target).data);
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
         this.§7!l§ = true;
         this.§=W§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§7!l§ = false;
         this.§=W§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§7!l§;
      }
      
      public function get §#!=§() : §"!E§
      {
         return this.§ 7§;
      }
      
      protected function §^!z§(param1:Event) : void
      {
         this.§=W§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1"!§);
      }
   }
}
