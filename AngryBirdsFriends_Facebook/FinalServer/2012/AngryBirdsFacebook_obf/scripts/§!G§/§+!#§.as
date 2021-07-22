package §!G§
{
   import §;n§.§^!;§;
   import flash.events.Event;
   
   public class §+!#§ extends Event
   {
      
      public static const §@=§:String = "onUiInteraction";
       
      
      public var §`!>§:int;
      
      public var §4W§:String;
      
      public var §91§:§^!;§;
      
      public function §+!#§(param1:String, param2:int, param3:String, param4:§^!;§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§`!>§ = param2;
         this.§4W§ = param3;
         this.§91§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §+!#§(type,this.§`!>§,this.§4W§,this.§91§,bubbles,cancelable);
      }
   }
}
