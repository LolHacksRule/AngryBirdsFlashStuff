package §+=§
{
   import §6B§.§?"2§;
   import flash.events.Event;
   
   public class §?!Q§ extends Event
   {
      
      public static const § set§:String = "ui_interaction";
       
      
      public var §6!-§:int;
      
      public var §&"8§:String;
      
      public var § "7§:§?"2§;
      
      public function §?!Q§(param1:String, param2:int, param3:String, param4:§?"2§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§6!-§ = param2;
         this.§&"8§ = param3;
         this.§ "7§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §?!Q§(type,this.§6!-§,this.§&"8§,this.§ "7§,bubbles,cancelable);
      }
   }
}
