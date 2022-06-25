package §^!m§
{
   import §8!H§.§9![§;
   import §?4§.§5D§;
   import §@!&§.§'!o§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §9![§ implements IEventDispatcher
   {
      
      public static const §'!q§:String = "StatePopupManager";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && StatePopupManager))
         {
            §'!q§ = "StatePopupManager";
         }
      }
      
      protected var §@!,§:EventDispatcher;
      
      public function StatePopupManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super(false,§'!q§);
         }
         do
         {
            this.§@!,§ = new EventDispatcher();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.dispatchEvent(new §5D§(§5D§.§5=§,param1,param2,param3));
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§@!,§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§@!,§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§@!,§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§@!,§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§@!,§.willTrigger(param1);
      }
   }
}
