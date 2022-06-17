package §0!K§
{
   import §#a§.§!!q§;
   import §#a§.§<#h§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §=!-§ extends EventDispatcher
   {
       
      
      protected var §%#D§:MovieClip;
      
      protected var §6I§:Class;
      
      protected var §#f§:§!!q§;
      
      protected var §'f§:§<#h§;
      
      protected var §9Y§:Boolean = false;
      
      public function §=!-§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§%#D§ = param1;
         this.§6I§ = param2;
         this.§'f§ = new this.§6I§();
         this.§%#D§.gotoAndStop("close");
         this.§#f§ = new §!!q§(100,100,param3,this.§6I§);
         param1.scrollerContainer.addChild(this.§#f§.scrollerSprite);
         param1.selectedValue.addChild(this.§'f§);
         if(this.§%#D§.stage)
         {
            this.§@"&§();
         }
         else
         {
            this.§%#D§.addEventListener(Event.ADDED_TO_STAGE,this.§@"&§);
         }
         this.§%#D§.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.§%#D§.addEventListener(MouseEvent.MOUSE_DOWN,this.onClickMenu);
      }
      
      protected function §@"&§(param1:Event = null) : void
      {
         this.§%#D§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§>^§);
      }
      
      private function §>^§(param1:MouseEvent) : void
      {
         if(this.§9Y§ && !this.§%#D§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§#f§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§#f§.data = this.data;
      }
      
      public function set §6!O§(param1:Number) : void
      {
         this.§#f§.setWidth(param1);
      }
      
      public function set §^"-§(param1:Number) : void
      {
         this.§#f§.setHeight(param1);
      }
      
      public function set §[!G§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§'f§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §[!G§() : int
      {
         if(!this.§'f§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§1!7§);
      }
      
      public function get §1!7§() : Object
      {
         return this.§'f§.data;
      }
      
      protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!this.§9Y§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §<#h§)
            {
               this.§[!G§ = this.data.indexOf(§<#h§(param1.target).data);
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
         this.§9Y§ = true;
         this.§%#D§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§9Y§ = false;
         this.§%#D§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§9Y§;
      }
      
      public function get §4r§() : §<#h§
      {
         return this.§'f§;
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.§%#D§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>^§);
      }
   }
}
