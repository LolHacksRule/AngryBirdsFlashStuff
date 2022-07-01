package §!""§
{
   import §'"!§.§+§;
   import flash.events.Event;
   
   public class §]H§ extends Event
   {
      
      public static const §59§:String = "ui_interaction";
       
      
      public var §66§:int;
      
      public var §4o§:String;
      
      public var §&!m§:§+§;
      
      public function §]H§(param1:String, param2:int, param3:String, param4:§+§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§66§ = param2;
         this.§4o§ = param3;
         this.§&!m§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §]H§(type,this.§66§,this.§4o§,this.§&!m§,bubbles,cancelable);
      }
   }
}
