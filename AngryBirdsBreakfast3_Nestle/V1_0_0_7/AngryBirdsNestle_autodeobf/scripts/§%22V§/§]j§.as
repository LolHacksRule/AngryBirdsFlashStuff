package §"V§
{
   import §<!0§.§'!%§;
   import flash.events.Event;
   
   public class §]j§ extends Event
   {
      
      public static const §+q§:String = "ui_interaction";
       
      
      public var §&!t§:int;
      
      public var §0]§:String;
      
      public var §;!6§:§'!%§;
      
      public function §]j§(param1:String, param2:int, param3:String, param4:§'!%§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§&!t§ = param2;
         this.§0]§ = param3;
         this.§;!6§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §]j§(type,this.§&!t§,this.§0]§,this.§;!6§,bubbles,cancelable);
      }
   }
}
