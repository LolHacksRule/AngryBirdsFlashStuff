package §<o§
{
   import §<"1§.§'"S§;
   import flash.events.Event;
   
   public class §3h§ extends Event
   {
      
      public static const §9"L§:String = "ui_interaction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:§'"S§;
      
      public function §3h§(param1:String, param2:int, param3:String, param4:§'"S§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.eventIndex = param2;
         this.eventName = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §3h§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
