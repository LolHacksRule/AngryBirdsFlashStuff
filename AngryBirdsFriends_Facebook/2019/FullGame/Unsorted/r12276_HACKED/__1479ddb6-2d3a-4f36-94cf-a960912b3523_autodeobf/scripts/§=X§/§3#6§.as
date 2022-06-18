package §=X§
{
   import §<8§.§8!g§;
   import flash.events.Event;
   
   public class §3#6§ extends Event
   {
      
      public static const §[!$§:String = "ui_interaction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:§8!g§;
      
      public function §3#6§(param1:String, param2:int, param3:String, param4:§8!g§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.eventIndex = param2;
         this.eventName = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §3#6§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
