package §<!#§
{
   import §4!t§.§95§;
   import flash.events.Event;
   
   public class §""§ extends Event
   {
      
      public static const §#!J§:String = "ui_interaction";
       
      
      public var §5!"§:int;
      
      public var §-!<§:String;
      
      public var §9!y§:§95§;
      
      public function §""§(param1:String, param2:int, param3:String, param4:§95§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§5!"§ = param2;
         this.§-!<§ = param3;
         this.§9!y§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §""§(type,this.§5!"§,this.§-!<§,this.§9!y§,bubbles,cancelable);
      }
   }
}
