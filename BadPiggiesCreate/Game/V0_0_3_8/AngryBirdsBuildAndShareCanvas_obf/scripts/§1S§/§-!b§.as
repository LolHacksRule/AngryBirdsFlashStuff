package §1S§
{
   import §-D§.Popup;
   import §?!V§.§ T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §-!b§ extends Popup implements IEventDispatcher
   {
       
      
      private var §""4§:int;
      
      private var §3p§:int = 0;
      
      private var §^2§:EventDispatcher;
      
      public function §-!b§(param1:XML, param2:§ T§)
      {
         super(param1,param2);
         (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§`!E§);
         (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
         this.§""4§ = mClip.totalFrames;
         this.§^2§ = new EventDispatcher(this);
         goToFrame(this.§3p§ + 1,false);
      }
      
      public function §`!E§(param1:Event = null) : void
      {
         ++this.§3p§;
         if(this.§3p§ >= this.§""4§)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
         else
         {
            goToFrame(this.§3p§ + 1,false);
            (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§`!E§);
            (mClip.getChildByName("Button_Next") as MovieClip).stop();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§^2§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§^2§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^2§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§^2§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^2§.willTrigger(param1);
      }
   }
}
