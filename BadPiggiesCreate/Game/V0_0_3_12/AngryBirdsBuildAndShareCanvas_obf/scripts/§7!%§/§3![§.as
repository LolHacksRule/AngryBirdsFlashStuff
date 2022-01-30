package §7!%§
{
   import §-!@§.Popup;
   import §@">§.§%!u§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §3![§ extends Popup implements IEventDispatcher
   {
       
      
      private var §`"2§:int;
      
      private var §-!6§:int = 0;
      
      private var §1^§:EventDispatcher;
      
      public function §3![§(param1:XML, param2:§%!u§)
      {
         super(param1,param2);
         (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§4;§);
         (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
         this.§`"2§ = mClip.totalFrames;
         this.§1^§ = new EventDispatcher(this);
         goToFrame(this.§-!6§ + 1,false);
      }
      
      public function §4;§(param1:Event = null) : void
      {
         ++this.§-!6§;
         if(this.§-!6§ >= this.§`"2§)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            goToFrame(this.§-!6§ + 1,false);
            (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§4;§);
            (mClip.getChildByName("Button_Next") as MovieClip).stop();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§1^§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§1^§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1^§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§1^§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1^§.willTrigger(param1);
      }
   }
}
