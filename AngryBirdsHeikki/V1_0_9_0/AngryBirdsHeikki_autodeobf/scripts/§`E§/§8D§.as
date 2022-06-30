package §`E§
{
   import §1Q§.§'!`§;
   import flash.events.Event;
   
   public class §8D§ extends Event
   {
      
      public static const §=!5§:String = "onUiInteraction";
       
      
      public var §%B§:int;
      
      public var §%'§:String;
      
      public var §0!$§:§'!`§;
      
      public function §8D§(param1:String, param2:int, param3:String, param4:§'!`§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§%B§ = param2;
         this.§%'§ = param3;
         this.§0!$§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §8D§(type,this.§%B§,this.§%'§,this.§0!$§,bubbles,cancelable);
      }
   }
}
