package §2H§
{
   import §+h§.Popup;
   import §1"2§.§'s§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §4!U§ extends Popup implements IEventDispatcher
   {
       
      
      private var §"!v§:int;
      
      private var §8k§:int = 0;
      
      private var §&!T§:EventDispatcher;
      
      public function §4!U§(param1:XML, param2:§'s§)
      {
         super(param1,param2);
         (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§<7§);
         (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
         this.§"!v§ = mClip.totalFrames;
         this.§&!T§ = new EventDispatcher(this);
         goToFrame(this.§8k§ + 1,false);
      }
      
      public function §<7§(param1:Event = null) : void
      {
         ++this.§8k§;
         if(this.§8k§ >= this.§"!v§)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            goToFrame(this.§8k§ + 1,false);
            (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§<7§);
            (mClip.getChildByName("Button_Next") as MovieClip).stop();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§&!T§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§&!T§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§&!T§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§&!T§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§&!T§.willTrigger(param1);
      }
   }
}
