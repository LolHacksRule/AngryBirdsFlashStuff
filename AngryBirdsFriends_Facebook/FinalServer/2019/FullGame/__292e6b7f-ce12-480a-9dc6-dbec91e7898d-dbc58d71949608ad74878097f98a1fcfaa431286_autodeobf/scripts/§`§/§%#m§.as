package §`§#2
{
   import §^"3§.§`$4§;
   import flash.events.Event;
   
   public class §%#m§ extends Event
   {
      
      public static const §-!O§:String = "ui_interaction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:§`$4§;
      
      public function §%#m§(param1:String, param2:int, param3:String, param4:§`$4§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.eventIndex = param2;
         this.eventName = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §%#m§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
