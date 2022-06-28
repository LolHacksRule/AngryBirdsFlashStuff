package §_-7§
{
   import §_-9Y§.§_-Bt§;
   import §_-MN§.§_-wU§;
   import §_-x8§.§_-nG§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §_-nG§ implements IEventDispatcher
   {
      
      public static const §_-pk§:String = "StatePopupManager";
       
      
      protected var §_-Hk§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§_-pk§);
         this.§_-Hk§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         this.dispatchEvent(new §_-Bt§(§_-Bt§.§_-KB§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§_-Hk§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§_-Hk§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§_-Hk§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§_-Hk§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§_-Hk§.willTrigger(param1);
      }
   }
}
