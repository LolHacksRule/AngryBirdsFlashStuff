package §4#F§
{
   import §^?§.§'!e§;
   import §^?§.§@"<§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §@"#§ extends EventDispatcher
   {
       
      
      protected var §`!n§:MovieClip;
      
      protected var §50§:Class;
      
      protected var §<#Y§:§'!e§;
      
      protected var §<!h§:§@"<§;
      
      protected var §`"p§:Boolean = false;
      
      public function §@"#§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§`!n§ = param1;
         this.§50§ = param2;
         this.§<!h§ = new this.§50§();
         this.§`!n§.gotoAndStop("close");
         this.§<#Y§ = new §'!e§(100,100,param3,this.§50§);
         param1.scrollerContainer.addChild(this.§<#Y§.scrollerSprite);
         param1.selectedValue.addChild(this.§<!h§);
         if(this.§`!n§.stage)
         {
            this.§?4§();
         }
         else
         {
            this.§`!n§.addEventListener(Event.ADDED_TO_STAGE,this.§?4§);
         }
         this.§`!n§.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.§`!n§.addEventListener(MouseEvent.MOUSE_DOWN,this.onClickMenu);
      }
      
      protected function §?4§(param1:Event = null) : void
      {
         this.§`!n§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§2;§);
      }
      
      private function §2;§(param1:MouseEvent) : void
      {
         if(this.§`"p§ && !this.§`!n§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§<#Y§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§<#Y§.data = this.data;
      }
      
      public function set §&"2§(param1:Number) : void
      {
         this.§<#Y§.setWidth(param1);
      }
      
      public function set §5#a§(param1:Number) : void
      {
         this.§<#Y§.setHeight(param1);
      }
      
      public function set §#"q§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§<!h§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §#"q§() : int
      {
         if(!this.§<!h§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§9V§);
      }
      
      public function get §9V§() : Object
      {
         return this.§<!h§.data;
      }
      
      protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!this.§`"p§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §@"<§)
            {
               this.§#"q§ = this.data.indexOf(§@"<§(param1.target).data);
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
         this.§`"p§ = true;
         this.§`!n§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§`"p§ = false;
         this.§`!n§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§`"p§;
      }
      
      public function get §%"]§() : §@"<§
      {
         return this.§<!h§;
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.§`!n§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2;§);
      }
   }
}
