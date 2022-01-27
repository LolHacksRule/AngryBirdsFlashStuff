package §44§
{
   import §&!6§.§5r§;
   import §1Q§.§'!`§;
   import §`E§.§8D§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §5r§ implements IEventDispatcher
   {
      
      public static const §94§:String = "StatePopupManager";
       
      
      protected var §8j§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§94§);
         this.§8j§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         this.dispatchEvent(new §8D§(§8D§.§=!5§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§8j§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§8j§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§8j§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8j§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§8j§.willTrigger(param1);
      }
   }
}
