package §,!@§
{
   import §4!j§.§0p§;
   import flash.events.Event;
   
   public class §&!j§ extends Event
   {
      
      public static const §<G§:String = "onUiInteraction";
       
      
      public var §6o§:int;
      
      public var §0!'§:String;
      
      public var component:§0p§;
      
      public function §&!j§(param1:String, param2:int, param3:String, param4:§0p§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§6o§ = param2;
         this.§0!'§ = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §&!j§(type,this.§6o§,this.§0!'§,this.component,bubbles,cancelable);
      }
   }
}
