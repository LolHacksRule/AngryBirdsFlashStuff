package §50§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.utils.Timer;
   
   public class §+!&§ extends Shape
   {
      
      private static const §?0§:uint = 1325327;
      
      private static const §9!P§:uint = 2390303;
      
      private static const §8";§:int = 100;
       
      
      private var §<H§:Timer;
      
      public function §+!&§(param1:Number, param2:Number)
      {
         super();
         this.x = param1;
         this.y = param2;
         graphics.lineStyle(0,0,0);
         graphics.beginFill(16777215,1);
         graphics.drawCircle(0,0,4);
         filters = [new GlowFilter(§?0§,1,4,4,3)];
         alpha = 0.4;
         scaleX = 0.5;
         scaleY = 0.5;
      }
      
      public function highlight(param1:int = 0) : void
      {
         this.§<H§ = new Timer(param1 * §8";§,1);
         this.§<H§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§5!_§);
         this.§<H§.start();
      }
      
      private function §5!_§(param1:Event) : void
      {
         alpha = 1;
         scaleX = 1;
         scaleY = 1;
         filters = [new GlowFilter(§9!P§,1,5,5,3)];
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
