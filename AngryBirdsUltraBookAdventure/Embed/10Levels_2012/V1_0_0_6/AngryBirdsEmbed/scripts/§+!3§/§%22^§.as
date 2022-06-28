package §+!3§
{
   import §`!0§.§"?§;
   import flash.events.Event;
   
   public class §"^§ extends Event
   {
      
      public static const §1x§:String = "onUiInteraction";
       
      
      public var §@@§:int;
      
      public var §%!B§:String;
      
      public var §8!6§:§"?§;
      
      public function §"^§(param1:String, param2:int, param3:String, param4:§"?§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§@@§ = param2;
         this.§%!B§ = param3;
         this.§8!6§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §"^§(type,this.§@@§,this.§%!B§,this.§8!6§,bubbles,cancelable);
      }
   }
}
