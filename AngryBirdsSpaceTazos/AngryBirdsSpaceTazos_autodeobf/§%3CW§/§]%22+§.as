package §<W§
{
   import §5X§.§+!#§;
   import flash.events.Event;
   
   public class §]"+§ extends Event
   {
      
      public static const §`!C§:String = "ui_interaction";
       
      
      public var § !e§:int;
      
      public var §9X§:String;
      
      public var §"!X§:§+!#§;
      
      public function §]"+§(param1:String, param2:int, param3:String, param4:§+!#§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§ !e§ = param2;
         this.§9X§ = param3;
         this.§"!X§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §]"+§(type,this.§ !e§,this.§9X§,this.§"!X§,bubbles,cancelable);
      }
   }
}
