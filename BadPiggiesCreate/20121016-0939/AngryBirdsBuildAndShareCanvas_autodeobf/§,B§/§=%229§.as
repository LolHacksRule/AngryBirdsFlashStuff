package §,B§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.utils.Timer;
   
   public class §="9§ extends Shape
   {
      
      private static const §0A§:uint = 1325327;
      
      private static const §2""§:uint = 2390303;
      
      private static const §],§:int = 100;
       
      
      private var §?p§:Timer;
      
      public function §="9§(param1:Number, param2:Number)
      {
         super();
         this.x = param1;
         this.y = param2;
         graphics.lineStyle(0,0,0);
         graphics.beginFill(16777215,1);
         graphics.drawCircle(0,0,4);
         filters = [new GlowFilter(§0A§,1,4,4,3)];
         alpha = 0.4;
         scaleX = 0.5;
         scaleY = 0.5;
      }
      
      public function highlight(param1:int = 0) : void
      {
         this.§?p§ = new Timer(param1 * §],§,1);
         this.§?p§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§"Z§);
         this.§?p§.start();
      }
      
      private function §"Z§(param1:Event) : void
      {
         alpha = 1;
         scaleX = 1;
         scaleY = 1;
         filters = [new GlowFilter(§2""§,1,5,5,3)];
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
