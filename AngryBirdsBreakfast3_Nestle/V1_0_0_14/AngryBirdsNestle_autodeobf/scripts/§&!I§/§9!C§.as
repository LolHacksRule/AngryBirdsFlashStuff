package §&!I§
{
   import §!R§.§#!L§;
   import flash.events.Event;
   
   public class §9!C§ extends Event
   {
      
      public static const §;!F§:String = "ui_interaction";
       
      
      public var §switch§:int;
      
      public var §7W§:String;
      
      public var §>j§:§#!L§;
      
      public function §9!C§(param1:String, param2:int, param3:String, param4:§#!L§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§switch§ = param2;
         this.§7W§ = param3;
         this.§>j§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §9!C§(type,this.§switch§,this.§7W§,this.§>j§,bubbles,cancelable);
      }
   }
}
