package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §,_§:uint;
      
      private var §,!B§:uint;
      
      private var §&F§:uint;
      
      private var §4h§:Boolean;
      
      private var §8!H§:Boolean;
      
      private var § !7§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§,_§ = param2;
         this.§,!B§ = param3;
         this.§&F§ = param4;
         this.§8!H§ = param5;
         this.§4h§ = param6;
         this.§ !7§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§,_§;
      }
      
      public function get keyCode() : uint
      {
         return this.§,!B§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§&F§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§4h§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§8!H§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§ !7§;
      }
   }
}
