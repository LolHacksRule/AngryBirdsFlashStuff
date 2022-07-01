package §>!L§
{
   import §@f§.§&!"§;
   import flash.events.Event;
   
   public class §?!d§ extends Event
   {
      
      public static const §@q§:String = "ui_interaction";
       
      
      public var §^P§:int;
      
      public var §&"5§:String;
      
      public var §8!P§:§&!"§;
      
      public function §?!d§(param1:String, param2:int, param3:String, param4:§&!"§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§^P§ = param2;
         this.§&"5§ = param3;
         this.§8!P§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §?!d§(type,this.§^P§,this.§&"5§,this.§8!P§,bubbles,cancelable);
      }
   }
}
