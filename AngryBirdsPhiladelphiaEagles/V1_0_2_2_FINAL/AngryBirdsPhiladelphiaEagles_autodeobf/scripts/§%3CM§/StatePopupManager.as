package §<M§
{
   import §'!O§.§'!#§;
   import §6v§.§`M§;
   import §^g§.§@$§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §'!#§ implements IEventDispatcher
   {
      
      public static const §-A§:String = "StatePopupManager";
       
      
      protected var §,S§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§-A§);
         this.§,S§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         this.dispatchEvent(new §@$§(§@$§.§^!9§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§,S§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§,S§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§,S§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§,S§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§,S§.willTrigger(param1);
      }
   }
}
