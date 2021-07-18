package §5";§
{
   import §,!,§.§0!d§;
   import §,!,§.§4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §%#"§ extends EventDispatcher
   {
       
      
      protected var §]"S§:MovieClip;
      
      protected var §%t§:Class;
      
      protected var §+Q§:§4#9§;
      
      protected var §^M§:§0!d§;
      
      protected var §["S§:Boolean = false;
      
      public function §%#"§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super();
         this.§]"S§ = param1;
         this.§%t§ = param2;
         this.§^M§ = new this.§%t§();
         this.§]"S§.gotoAndStop("close");
         this.§+Q§ = new §4#9§(100,100,param3,this.§%t§);
         param1.scrollerContainer.addChild(this.§+Q§.scrollerSprite);
         param1.selectedValue.addChild(this.§^M§);
         if(this.§]"S§.stage)
         {
            this.§]"9§();
         }
         else
         {
            this.§]"S§.addEventListener(Event.ADDED_TO_STAGE,this.§]"9§);
         }
         this.§]"S§.addEventListener(Event.REMOVED_FROM_STAGE,this.§+y§);
         this.§]"S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§;E§);
      }
      
      protected function §]"9§(param1:Event = null) : void
      {
         this.§]"S§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§4#E§);
      }
      
      private function §4#E§(param1:MouseEvent) : void
      {
         if(this.§["S§ && !this.§]"S§.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.§+Q§.data;
      }
      
      public function set data(param1:Array) : void
      {
         this.§+Q§.data = this.data;
      }
      
      public function set §>#_§(param1:Number) : void
      {
         this.§+Q§.setWidth(param1);
      }
      
      public function set §>"b§(param1:Number) : void
      {
         this.§+Q§.setHeight(param1);
      }
      
      public function set §3"1§(param1:int) : void
      {
         if(!this.data || param1 < 0 || param1 >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.§^M§.data = this.data[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §3"1§() : int
      {
         if(!this.§^M§.data)
         {
            return -1;
         }
         return this.data.indexOf(this.§]#5§);
      }
      
      public function get §]#5§() : Object
      {
         return this.§^M§.data;
      }
      
      protected function §;E§(param1:MouseEvent) : void
      {
         if(!this.§["S§)
         {
            this.open();
         }
         else
         {
            if(param1.target is §0!d§)
            {
               this.§3"1§ = this.data.indexOf(§0!d§(param1.target).data);
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
         this.§["S§ = true;
         this.§]"S§.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.§["S§ = false;
         this.§]"S§.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.§["S§;
      }
      
      public function get §^"T§() : §0!d§
      {
         return this.§^M§;
      }
      
      protected function §+y§(param1:Event) : void
      {
         this.§]"S§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4#E§);
      }
   }
}
