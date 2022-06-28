package §_-9Y§
{
   import §_-MN§.§_-wU§;
   import flash.events.Event;
   
   public class §_-Bt§ extends Event
   {
      
      public static const §_-KB§:String = "onUiInteraction";
       
      
      public var §_-G§:int;
      
      public var §_-zT§:String;
      
      public var §_-02o§:§_-wU§;
      
      public function §_-Bt§(param1:String, param2:int, param3:String, param4:§_-wU§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§_-G§ = param2;
         this.§_-zT§ = param3;
         this.§_-02o§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §_-Bt§(type,this.§_-G§,this.§_-zT§,this.§_-02o§,bubbles,cancelable);
      }
   }
}
