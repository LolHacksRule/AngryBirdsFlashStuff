package §<" §
{
   import §>P§.§,3§;
   import flash.events.Event;
   
   public class §]!g§ extends Event
   {
      
      public static const §&u§:String = "ui_interaction";
       
      
      public var §'%§:int;
      
      public var §=P§:String;
      
      public var §;;§:§,3§;
      
      public function §]!g§(param1:String, param2:int, param3:String, param4:§,3§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§'%§ = param2;
         this.§=P§ = param3;
         this.§;;§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §]!g§(type,this.§'%§,this.§=P§,this.§;;§,bubbles,cancelable);
      }
   }
}
