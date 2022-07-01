package §?!4§
{
   import §[!b§.§'!R§;
   import flash.events.Event;
   
   public class §^!S§ extends Event
   {
      
      public static const §?!p§:String = "ui_interaction";
       
      
      public var §7t§:int;
      
      public var §'"3§:String;
      
      public var §`!]§:§'!R§;
      
      public function §^!S§(param1:String, param2:int, param3:String, param4:§'!R§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§7t§ = param2;
         this.§'"3§ = param3;
         this.§`!]§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §^!S§(type,this.§7t§,this.§'"3§,this.§`!]§,bubbles,cancelable);
      }
   }
}
