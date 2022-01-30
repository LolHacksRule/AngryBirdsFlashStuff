package §&!P§
{
   import §<Z§.§7!!§;
   import §]J§.Popup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §80§ extends Popup implements IEventDispatcher
   {
       
      
      private var §?![§:int;
      
      private var §9!u§:int = 0;
      
      private var §0!t§:EventDispatcher;
      
      public function §80§(param1:XML, param2:§7!!§)
      {
         super(param1,param2);
         (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§!"#§);
         (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
         this.§?![§ = mClip.totalFrames;
         this.§0!t§ = new EventDispatcher(this);
         goToFrame(this.§9!u§ + 1,false);
      }
      
      public function §!"#§(param1:Event = null) : void
      {
         ++this.§9!u§;
         if(this.§9!u§ >= this.§?![§)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            goToFrame(this.§9!u§ + 1,false);
            (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§!"#§);
            (mClip.getChildByName("Button_Next") as MovieClip).stop();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§0!t§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§0!t§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0!t§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§0!t§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§0!t§.willTrigger(param1);
      }
   }
}
