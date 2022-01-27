package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §,L§:uint;
      
      private var §6I§:uint;
      
      private var §=g§:uint;
      
      private var §?!B§:Boolean;
      
      private var §>i§:Boolean;
      
      private var §9J§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§,L§ = param2;
         this.§6I§ = param3;
         this.§=g§ = param4;
         this.§>i§ = param5;
         this.§?!B§ = param6;
         this.§9J§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§,L§;
      }
      
      public function get keyCode() : uint
      {
         return this.§6I§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§=g§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§?!B§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>i§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§9J§;
      }
   }
}
