package §8,§
{
   import §&<§.§^!#§;
   import flash.events.Event;
   
   public class §8!h§ extends Event
   {
      
      public static const §>2§:String = "ui_interaction";
       
      
      public var § Y§:int;
      
      public var §[!X§:String;
      
      public var § H§:§^!#§;
      
      public function §8!h§(param1:String, param2:int, param3:String, param4:§^!#§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§ Y§ = param2;
         this.§[!X§ = param3;
         this.§ H§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §8!h§(type,this.§ Y§,this.§[!X§,this.§ H§,bubbles,cancelable);
      }
   }
}
