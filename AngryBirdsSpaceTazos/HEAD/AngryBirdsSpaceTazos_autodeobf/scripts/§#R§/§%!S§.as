package §#R§
{
   import §7!6§.§@Y§;
   import flash.events.Event;
   
   public class §%!S§ extends Event
   {
      
      public static const §0!W§:String = "ui_interaction";
       
      
      public var §!"E§:int;
      
      public var §[!U§:String;
      
      public var §^"G§:§@Y§;
      
      public function §%!S§(param1:String, param2:int, param3:String, param4:§@Y§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§!"E§ = param2;
         this.§[!U§ = param3;
         this.§^"G§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §%!S§(type,this.§!"E§,this.§[!U§,this.§^"G§,bubbles,cancelable);
      }
   }
}
