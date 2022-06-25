package §9!Q§
{
   import §!5§.§6%§;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §+_§ implements IEventDispatcher
   {
      
      public static const §3F§:String = "StatePopupManager";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3F§ = "StatePopupManager";
         }
      }
      
      protected var §5!w§:EventDispatcher;
      
      public function StatePopupManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super(false,§3F§);
         }
         do
         {
            this.§5!w§ = new EventDispatcher();
         }
         while(!_loc1_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.dispatchEvent(new §6%§(§6%§.§=F§,param1,param2,param3));
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§5!w§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§5!w§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§5!w§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§5!w§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§5!w§.willTrigger(param1);
      }
   }
}
