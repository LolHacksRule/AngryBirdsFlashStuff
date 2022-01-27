package §'z§
{
   import §!a§.§&6§;
   import §;!0§.§4!I§;
   import §]e§.§&!U§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §&6§ implements IEventDispatcher
   {
      
      public static const §+Z§:String = "StatePopupManager";
       
      
      protected var §9D§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§+Z§);
         this.§9D§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         this.dispatchEvent(new §&!U§(§&!U§.§^!b§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§9D§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§9D§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§9D§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§9D§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§9D§.willTrigger(param1);
      }
   }
}
