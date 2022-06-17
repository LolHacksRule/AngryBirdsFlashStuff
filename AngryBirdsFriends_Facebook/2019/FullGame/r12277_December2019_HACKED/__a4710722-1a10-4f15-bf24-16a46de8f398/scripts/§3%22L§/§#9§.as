package §3"L§
{
   import §!#s§.§ !Q§;
   import §!#s§.§2!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §#9§ extends EventDispatcher
   {
       
      
      protected var §&W§:MovieClip;
      
      protected var §@"#§:Class;
      
      protected var §!"f§:§2!Z§;
      
      protected var § M§:§ !Q§;
      
      protected var §`]§:Boolean = false;
      
      public function §#9§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§&W§ = param1;
         this.§@"#§ = param2;
         this.§ M§ = new this.§@"#§();
         this.§&W§.gotoAndStop("close");
         this.§!"f§ = new §2!Z§(100,100,param3,this.§@"#§);
         param1.scrollerContainer.addChild(this.§!"f§.scrollerSprite);
         param1.selectedValue.addChild(this.§ M§);
         if(this.§&W§.stage)
         {
            this.§1$A§();
         }
         else
         {
            this.§&W§.addEventListener(Event.ADDED_TO_STAGE,this.§1$A§);
         }
         this.§&W§.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.§&W§.addEventListener(MouseEvent.MOUSE_DOWN,this.onClickMenu);
      }
      
      protected function §1$A§(param1:Event = null) : void
      {
         this.§&W§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!n§);
      }
      
      private function §'!n§(param1:MouseEvent) : void
      {
         if(this.§`]§ && !this.§&W§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§!"f§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§!"f§.data = this.data;
      }
      
      public function set §;9§(param1:Number) : void
      {
         this.§!"f§.setWidth(param1);
      }
      
      public function set §1"=§(param1:Number) : void
      {
         this.§!"f§.setHeight(param1);
      }
      
      public function set §false§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§ M§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §false§() : int
      {
         if(!this.§ M§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§%"r§);
      }
      
      public function get §%"r§() : Object
      {
         return this.§ M§.data;
      }
      
      protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!this.§`]§)
         {
            this.open();
         }
         else
         {
            if(param1.target is § !Q§)
            {
               this.§false§ = this.data.indexOf(§ !Q§(param1.target).data);
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
         this.§`]§ = true;
         this.§&W§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§`]§ = false;
         this.§&W§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§`]§;
      }
      
      public function get §5"u§() : § !Q§
      {
         return this.§ M§;
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.§&W§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!n§);
      }
   }
}
