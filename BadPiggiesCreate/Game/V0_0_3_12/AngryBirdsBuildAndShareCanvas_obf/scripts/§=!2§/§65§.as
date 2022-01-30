package §=!2§
{
   import §^x§.§<!w§;
   import flash.events.Event;
   
   public class §65§ extends Event
   {
      
      public static const §]!7§:String = "onUiInteraction";
       
      
      public var §3!$§:int;
      
      public var §!3§:String;
      
      public var component:§<!w§;
      
      public function §65§(param1:String, param2:int, param3:String, param4:§<!w§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§3!$§ = param2;
         this.§!3§ = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §65§(type,this.§3!$§,this.§!3§,this.component,bubbles,cancelable);
      }
   }
}
