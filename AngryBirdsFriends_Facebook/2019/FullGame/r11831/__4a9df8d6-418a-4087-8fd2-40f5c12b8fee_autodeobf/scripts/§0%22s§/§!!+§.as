package §0"s§
{
   import §,#+§.§>!Y§;
   import §,#+§.§^6§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §!!+§ extends EventDispatcher
   {
       
      
      protected var §'o§:MovieClip;
      
      protected var §!!4§:Class;
      
      protected var §3"u§:§^6§;
      
      protected var §="Z§:§>!Y§;
      
      protected var §<"S§:Boolean = false;
      
      public function §!!+§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§'o§ = param1;
         this.§!!4§ = param2;
         this.§="Z§ = new this.§!!4§();
         this.§'o§.gotoAndStop("close");
         this.§3"u§ = new §^6§(100,100,param3,this.§!!4§);
         param1.scrollerContainer.addChild(this.§3"u§.scrollerSprite);
         param1.selectedValue.addChild(this.§="Z§);
         if(this.§'o§.stage)
         {
            this.§3#m§();
         }
         else
         {
            this.§'o§.addEventListener(Event.ADDED_TO_STAGE,this.§3#m§);
         }
         this.§'o§.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.§'o§.addEventListener(MouseEvent.MOUSE_DOWN,this.onClickMenu);
      }
      
      protected function §3#m§(param1:Event = null) : void
      {
         this.§'o§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§0`§);
      }
      
      private function §0`§(param1:MouseEvent) : void
      {
         if(this.§<"S§ && !this.§'o§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§3"u§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§3"u§.data = this.data;
      }
      
      public function set §#"h§(param1:Number) : void
      {
         this.§3"u§.setWidth(param1);
      }
      
      public function set §!!I§(param1:Number) : void
      {
         this.§3"u§.setHeight(param1);
      }
      
      public function set §+$>§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§="Z§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §+$>§() : int
      {
         if(!this.§="Z§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§5!s§);
      }
      
      public function get §5!s§() : Object
      {
         return this.§="Z§.data;
      }
      
      protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!this.§<"S§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §>!Y§)
            {
               this.§+$>§ = this.data.indexOf(§>!Y§(param1.target).data);
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
         this.§<"S§ = true;
         this.§'o§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§<"S§ = false;
         this.§'o§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§<"S§;
      }
      
      public function get §`n§() : §>!Y§
      {
         return this.§="Z§;
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.§'o§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0`§);
      }
   }
}
