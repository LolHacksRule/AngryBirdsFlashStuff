package §2L§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.utils.Timer;
   
   public class §%b§ extends Shape
   {
      
      private static const §"$§:uint = 1325327;
      
      private static const §-!O§:uint = 2390303;
      
      private static const §5$§:int = 100;
       
      
      private var §<";§:Timer;
      
      public function §%b§(param1:Number, param2:Number)
      {
         super();
         this.x = param1;
         this.y = param2;
         graphics.lineStyle(0,0,0);
         graphics.beginFill(16777215,1);
         graphics.drawCircle(0,0,4);
         filters = [new GlowFilter(§"$§,1,4,4,3)];
         alpha = 0.4;
         scaleX = 0.5;
         scaleY = 0.5;
      }
      
      public function highlight(param1:int = 0) : void
      {
         this.§<";§ = new Timer(param1 * §5$§,1);
         this.§<";§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§6"$§);
         this.§<";§.start();
      }
      
      private function §6"$§(param1:Event) : void
      {
         alpha = 1;
         scaleX = 1;
         scaleY = 1;
         filters = [new GlowFilter(§-!O§,1,5,5,3)];
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
