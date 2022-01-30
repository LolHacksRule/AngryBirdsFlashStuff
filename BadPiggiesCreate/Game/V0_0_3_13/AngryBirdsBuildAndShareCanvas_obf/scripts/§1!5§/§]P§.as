package §1!5§
{
   import §""§.Popup;
   import §0!C§.§=!]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §]P§ extends Popup implements IEventDispatcher
   {
       
      
      private var §3"!§:int;
      
      private var §<3§:int = 0;
      
      private var §1i§:EventDispatcher;
      
      public function §]P§(param1:XML, param2:§=!]§)
      {
         super(param1,param2);
         (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§8O§);
         (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
         this.§3"!§ = mClip.totalFrames;
         this.§1i§ = new EventDispatcher(this);
         goToFrame(this.§<3§ + 1,false);
      }
      
      public function §8O§(param1:Event = null) : void
      {
         ++this.§<3§;
         if(this.§<3§ >= this.§3"!§)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            goToFrame(this.§<3§ + 1,false);
            (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§8O§);
            (mClip.getChildByName("Button_Next") as MovieClip).stop();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§1i§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§1i§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1i§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§1i§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1i§.willTrigger(param1);
      }
   }
}
