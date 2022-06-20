package §5"l§
{
   import §9!6§.§?!y§;
   import flash.events.Event;
   
   public class §0!b§ extends Event
   {
      
      public static const §9"5§:String = "popup_close_complete";
      
      public static const §#!>§:String = "popup_open_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §`!`§:§?!y§;
      
      public function §0!b§(param1:String, param2:§?!y§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`!`§ = param2;
      }
      
      public function get popup() : §?!y§
      {
         return this.§`!`§;
      }
      
      override public function clone() : Event
      {
         return new §0!b§(type,this.§`!`§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
