package §1g§
{
   import §&!!§.Popup;
   import §;"$§.§`5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §!!&§ extends Popup implements IEventDispatcher
   {
       
      
      private var §;L§:int;
      
      private var §9!F§:int = 0;
      
      private var §9o§:EventDispatcher;
      
      public function §!!&§(param1:XML, param2:§`5§)
      {
         super(param1,param2);
         (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§30§);
         (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
         this.§;L§ = mClip.totalFrames;
         this.§9o§ = new EventDispatcher(this);
         goToFrame(this.§9!F§ + 1,false);
      }
      
      public function §30§(param1:Event = null) : void
      {
         ++this.§9!F§;
         if(this.§9!F§ >= this.§;L§)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            goToFrame(this.§9!F§ + 1,false);
            (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§30§);
            (mClip.getChildByName("Button_Next") as MovieClip).stop();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§9o§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§9o§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§9o§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§9o§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§9o§.willTrigger(param1);
      }
   }
}
