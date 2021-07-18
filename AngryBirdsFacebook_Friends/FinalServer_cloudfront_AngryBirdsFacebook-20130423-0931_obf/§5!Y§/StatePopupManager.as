package §5!Y§
{
   import §1!t§.§""B§;
   import §6!H§.§6!e§;
   import §8";§.§+d§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §+d§ implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            STATE_NAME = "StatePopupManager";
         }
      }
      
      protected var §0!J§:EventDispatcher;
      
      public function StatePopupManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super(false,STATE_NAME);
         }
         do
         {
            this.§0!J§ = new EventDispatcher();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.dispatchEvent(new §6!e§(§6!e§.§1" §,param1,param2,param3));
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            this.§0!J§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§0!J§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§0!J§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0!J§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§0!J§.willTrigger(param1);
      }
   }
}
