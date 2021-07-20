package §3Q§
{
   import §8P§.§1A§;
   import flash.events.Event;
   
   public class §+!]§ extends Event
   {
      
      public static const §0!S§:String = "onUiInteraction";
       
      
      public var §78§:int;
      
      public var §<Y§:String;
      
      public var §4H§:§1A§;
      
      public function §+!]§(param1:String, param2:int, param3:String, param4:§1A§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§78§ = param2;
         this.§<Y§ = param3;
         this.§4H§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §+!]§(type,this.§78§,this.§<Y§,this.§4H§,bubbles,cancelable);
      }
   }
}
