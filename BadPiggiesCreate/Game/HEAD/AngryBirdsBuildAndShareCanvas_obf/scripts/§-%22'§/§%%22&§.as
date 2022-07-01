package §-"'§
{
   import §&!<§.§>!V§;
   import §?!'§.Popup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §%"&§ extends Popup implements IEventDispatcher
   {
       
      
      private var §,!C§:int;
      
      private var §`3§:int = 0;
      
      private var §<+§:EventDispatcher;
      
      public function §%"&§(param1:XML, param2:§>!V§)
      {
         super(param1,param2);
         (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§#!6§);
         (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
         this.§,!C§ = mClip.totalFrames;
         this.§<+§ = new EventDispatcher(this);
         goToFrame(this.§`3§ + 1,false);
      }
      
      public function §#!6§(param1:Event = null) : void
      {
         ++this.§`3§;
         if(this.§`3§ >= this.§,!C§)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            goToFrame(this.§`3§ + 1,false);
            (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§#!6§);
            (mClip.getChildByName("Button_Next") as MovieClip).stop();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§<+§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§<+§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§<+§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§<+§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§<+§.willTrigger(param1);
      }
   }
}
