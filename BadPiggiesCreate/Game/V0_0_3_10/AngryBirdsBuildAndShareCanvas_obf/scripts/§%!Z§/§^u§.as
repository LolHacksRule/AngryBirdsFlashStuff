package §%!Z§
{
   import §,"$§.Popup;
   import §4!t§.§=p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §^u§ extends Popup implements IEventDispatcher
   {
       
      
      private var §5!0§:int;
      
      private var §;,§:int = 0;
      
      private var §=0§:EventDispatcher;
      
      public function §^u§(param1:XML, param2:§=p§)
      {
         super(param1,param2);
         (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§`c§);
         (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
         this.§5!0§ = mClip.totalFrames;
         this.§=0§ = new EventDispatcher(this);
         goToFrame(this.§;,§ + 1,false);
      }
      
      public function §`c§(param1:Event = null) : void
      {
         ++this.§;,§;
         if(this.§;,§ >= this.§5!0§)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            goToFrame(this.§;,§ + 1,false);
            (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§`c§);
            (mClip.getChildByName("Button_Next") as MovieClip).stop();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§=0§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§=0§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=0§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§=0§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=0§.willTrigger(param1);
      }
   }
}
