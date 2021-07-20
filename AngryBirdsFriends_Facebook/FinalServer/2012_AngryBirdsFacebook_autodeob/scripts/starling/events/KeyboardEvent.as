package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §-!y§:uint;
      
      private var §<u§:uint;
      
      private var §<"<§:uint;
      
      private var §!!Z§:Boolean;
      
      private var §+!Y§:Boolean;
      
      private var §>"@§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§-!y§ = param2;
         this.§<u§ = param3;
         this.§<"<§ = param4;
         this.§+!Y§ = param5;
         this.§!!Z§ = param6;
         this.§>"@§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§-!y§;
      }
      
      public function get keyCode() : uint
      {
         return this.§<u§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§<"<§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!!Z§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§+!Y§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>"@§;
      }
   }
}
