package §1"=§
{
   import §!#B§.§!$1§;
   import §!#B§.§;+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §7R§ extends EventDispatcher
   {
       
      
      protected var §]A§:MovieClip;
      
      protected var §]$'§:Class;
      
      protected var §@!v§:§!$1§;
      
      protected var §'"<§:§;+§;
      
      protected var §<#_§:Boolean = false;
      
      public function §7R§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§]A§ = param1;
         this.§]$'§ = param2;
         this.§'"<§ = new this.§]$'§();
         this.§]A§.gotoAndStop("close");
         this.§@!v§ = new §!$1§(100,100,param3,this.§]$'§);
         param1.scrollerContainer.addChild(this.§@!v§.scrollerSprite);
         param1.selectedValue.addChild(this.§'"<§);
         if(this.§]A§.stage)
         {
            this.§]"G§();
         }
         else
         {
            this.§]A§.addEventListener(Event.ADDED_TO_STAGE,this.§]"G§);
         }
         this.§]A§.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.§]A§.addEventListener(MouseEvent.MOUSE_DOWN,this.onClickMenu);
      }
      
      protected function §]"G§(param1:Event = null) : void
      {
         this.§]A§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!C§);
      }
      
      private function §0!C§(param1:MouseEvent) : void
      {
         if(this.§<#_§ && !this.§]A§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§@!v§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§@!v§.data = this.data;
      }
      
      public function set §7! §(param1:Number) : void
      {
         this.§@!v§.setWidth(param1);
      }
      
      public function set §&x§(param1:Number) : void
      {
         this.§@!v§.setHeight(param1);
      }
      
      public function set §%#p§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§'"<§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §%#p§() : int
      {
         if(!this.§'"<§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§+$0§);
      }
      
      public function get §+$0§() : Object
      {
         return this.§'"<§.data;
      }
      
      protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!this.§<#_§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §;+§)
            {
               this.§%#p§ = this.data.indexOf(§;+§(param1.target).data);
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
         this.§<#_§ = true;
         this.§]A§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§<#_§ = false;
         this.§]A§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§<#_§;
      }
      
      public function get §`"$§() : §;+§
      {
         return this.§'"<§;
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.§]A§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!C§);
      }
   }
}
